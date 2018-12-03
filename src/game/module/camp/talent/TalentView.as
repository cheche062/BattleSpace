package game.module.camp.talent
{
	import MornUI.camp.talent.TalentViewUI;
	
	import game.common.ResourceManager;
	import game.common.XFacade;
	import game.common.XTip;
	import game.global.GameConfigManager;
	import game.global.ModuleName;
	import game.global.consts.ServiceConst;
	import game.global.data.bag.ItemData;
	import game.global.event.Signal;
	import game.global.vo.User;
	import game.module.camp.UnitTalentItemView;
	import game.module.camp.UpgradeTalentView;
	import game.module.camp.data.TalentData;
	import game.module.camp.data.UnitTalentItemVO;
	import game.module.camp.data.UpgradeTalentVO;
	import game.module.fighting.adata.ArmyData;
	import game.module.fighting.view.BaseChapetrView;
	import game.net.socket.WebSocketNetService;
	import game.global.GameLanguage;
	
	import laya.events.Event;
	
	public class TalentView extends BaseChapetrView
	{
		public var ui:TalentViewUI;
		
		private var _selectAmData:ArmyData;
		
		private var _talentData:TalentData;
		
		private var _items:Vector.<UnitTalentItemView>;
		
		private var _tItems:Vector.<UpgradeTalentView>
		
		public function TalentView()
		{
			super();
			
			new TalentMediator();
			ui = new TalentViewUI();
			addChild(ui);
			
			_talentData = TalentData.getInstance();
			
			_items = new Vector.<UnitTalentItemView>();
			var len:int = _talentData.talentSkills.length;
			for (var i:int = 0; i < len; i++) 
			{
				var item:UnitTalentItemView = new UnitTalentItemView();
				item.x = 0;
				item.y = 145 + (i * 106);
				ui.showBox.addChild(item);
				_items.push(item);
			}
			
			_tItems = new Vector.<UpgradeTalentView>();
			for (var j:int = 0; j < _talentData.talentList.length; j++) 
			{
				var uItem:UpgradeTalentView = new UpgradeTalentView();
				uItem.x = 60 + (j * 64);
				uItem.y = 62;
				ui.showBox.addChild(uItem);
				_tItems.push(uItem);
			}
			
			this.mouseThrough = ui.mouseThrough = true;
		}
		
		public function set selectAmData(v:ArmyData):void
		{
			if(_selectAmData != v)
			{
				_selectAmData = v;
			}
			bindAmData();
		} 
		
		public function get selectAmData():ArmyData
		{
			return _selectAmData;
		}
		
		/**天赋bindAmData*/
		private function bindAmData():void
		{
			ui.levelTxt.text = _talentData.level.toString();
			ui.pointTxt.text = _talentData.point.toString();
			ui.typeIcon.skin = GameConfigManager.getItemImgPath(_talentData.itemId);
			ui.xhTxt.text = _talentData.xlxh.toString();
			this.showMoney();
			
			for (var i:int = 0; i < _items.length; i++) 
			{
				if( i < _talentData.talentSkills.length )
				{
					var vo:UnitTalentItemVO = _talentData.talentSkills[i];
					_items[i].setData(vo);
				}
			}
			
			for (i = 0; i < _tItems.length; i++) 
			{
				if( i < _talentData.talentList.length )
				{
					var uVo:UpgradeTalentVO = _talentData.talentList[i];
					_tItems[i].setData(uVo);
				}
			}
		}
		
		override public function addEvent():void
		{
			super.addEvent();
			
			Signal.intance.on("unitTalentAdd",this,upSkillLevel);
			ui.actionBtn.on(Event.CLICK,this,actionClick);
			ui.btnBuy.on(Event.CLICK,this,onBtnBuyClick);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.TALENT_UPLEVEL),this,upTalentLevel);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.TALENT_UPSKILLLEVEL),this,reUpSkillLevel);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.TALENT_WASHPOINT),this,washPoint);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.TALENT_GETINFO),this,setData);
		}
		
		override public function removeEvent():void
		{
			super.removeEvent();
			
			Signal.intance.off("unitTalentAdd",this,upSkillLevel);
			ui.actionBtn.off(Event.CLICK,this,actionClick);
			ui.btnBuy.off(Event.CLICK,this,onBtnBuyClick);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.TALENT_UPLEVEL),this,upTalentLevel);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.TALENT_UPSKILLLEVEL),this,reUpSkillLevel);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.TALENT_WASHPOINT),this,washPoint);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.TALENT_GETINFO),this,setData);
		}
		
		private function actionClick(e:Event):void
		{       
			if(!selectAmData.serverData){
				XTip.showTip("L_A_73120");
				return;
			}
			// 获取配置表数据
//			var data = ResourceManager.instance.getResByURL("config/tianfu_param.json");
//			var itemId = data[6]['value'].split("=")[0];
//			var itemNum = data[6]['value'].split("=")[1];
			var itemId = _talentData.itemId;
			var itemNum = _talentData.xlxh;
			XFacade.instance.openModule(ModuleName.ItemAlertView, [GameLanguage.getLangByKey("L_A_88410"),
				itemId,
				itemNum,
				function(){
					WebSocketNetService.instance.sendData(ServiceConst.TALENT_WASHPOINT,[selectAmData.unitId]);
				}]
			);
		}
		
		private function onBtnBuyClick(e:Event):void
		{
			if(!selectAmData.serverData){
				XTip.showTip("L_A_73120");
			   return;
			}
			WebSocketNetService.instance.sendData(ServiceConst.TALENT_UPLEVEL,[selectAmData.unitId]);
		}
		
		private function showMoney():void
		{
			// 获取配置表数据
			var data = ResourceManager.instance.getResByURL("config/tianfu_param.json");
			var itemId = data[6]['value'].split("=")[0];
			var itemNum:Number = User.getInstance().getResNumByItem(itemId);
			ui.imgMoney.skin = GameConfigManager.getItemImgPath(itemId);
			ui.lbMoneyNum.text = itemNum;
		}
		
		/**	洗点*/		
		private function washPoint(...args):void
		{
			var data:Object = args[1];
			_talentData.updata(data);
			bindAmData();
		}
		
		/**	升级额外技能 */		
		private function upSkillLevel(data:*=null):void
		{
			if(!selectAmData.serverData){
				XTip.showTip("L_A_73120");
				return;
			}
			var skillId:int = data as int;
			WebSocketNetService.instance.sendData(ServiceConst.TALENT_UPSKILLLEVEL,[selectAmData.unitId,skillId]);
		}
		
		private function reUpSkillLevel(...args):void
		{
			var data:Object = args[1];
			_talentData.updata(data);
			bindAmData();
		}
		
		/**	升级天赋等级,购买点数和资源 */		
		private function upTalentLevel(...args):void
		{
			var data:Object = args[1];
			_talentData.updata(data,false);
			bindAmData();
			this.showMoney();
		}
		
		/**兵种的天赋信息*/		
		public function setData(...args):void
		{
			var data:Object = args[1];
			_talentData.updata(data);
			bindAmData();
		}
		
		/**兵种的天赋初始化*/		
		public function initData(...args):void
		{
			var data:Object = args[0];
			_talentData.updata(data);
			bindAmData();
		}
		
		override protected function stageSizeChange(e:Event = null):void
		{
			super.stageSizeChange();
			
			ui.size(width,height);
			ui.showBox.pos(width >> 1 , height - ui.showBox.height >> 1);
		}
		
		override public function destroy(destroyChild:Boolean=true):void
		{
			ui = null;
		}
	}
}