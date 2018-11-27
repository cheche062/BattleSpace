package game.module.camp.talent
{
	import MornUI.camp.talent.TalentViewUI;
	
	import game.global.GameConfigManager;
	import game.global.consts.ServiceConst;
	import game.global.event.Signal;
	import game.module.camp.UnitTalentItemView;
	import game.module.camp.UpgradeTalentView;
	import game.module.camp.data.TalentData;
	import game.module.camp.data.UnitTalentItemVO;
	import game.module.camp.data.UpgradeTalentVO;
	import game.module.fighting.adata.ArmyData;
	import game.module.fighting.view.BaseChapetrView;
	import game.net.socket.WebSocketNetService;
	
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
		
		private function bindAmData():void
		{
			ui.levelTxt.text = _talentData.level.toString();
			ui.pointTxt.text = _talentData.point.toString();
			ui.typeIcon.skin = GameConfigManager.getItemImgPath(_talentData.itemId);
			ui.xhTxt.text = _talentData.xlxh.toString();
			
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
			
			Signal.intance.on("unitTalentAdd",upSkillLevel);
			ui.actionBtn.on(Event.CLICK,actionClick);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.TALENT_UPLEVEL),this,upTalentLevel);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.TALENT_UPSKILLLEVEL),this,reUpSkillLevel);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.TALENT_WASHPOINT),this,washPoint);
		}
		
		override public function removeEvent():void
		{
			super.removeEvent();
			
			Signal.intance.off("unitTalentAdd",upSkillLevel);
			ui.actionBtn.off(Event.CLICK,actionClick);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.TALENT_UPLEVEL),this,upTalentLevel);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.TALENT_UPSKILLLEVEL),this,reUpSkillLevel);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.TALENT_WASHPOINT),this,washPoint);
		}
		
		private function actionClick(e:Event):void
		{
			WebSocketNetService.instance.sendData(ServiceConst.TALENT_WASHPOINT,[selectAmData.unitId]);
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
			var skillId:int = data as int;
			WebSocketNetService.instance.sendData(ServiceConst.TALENT_UPSKILLLEVEL,[selectAmData.unitId,skillId]);
		}
		
		private function reUpSkillLevel(...args):void
		{
			var data:Object = args[1];
			_talentData.updata(data);
			bindAmData();
		}
		
		/**	升级天赋等级 */		
		private function upTalentLevel():void
		{
			
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