package game.module.camp
{
	import MornUI.camp.NewUnitInfoTabCellUI;
	
	import game.common.ResourceManager;
	import game.common.XTip;
	import game.global.cond.ConditionsManger;
	import game.global.vo.User;
	import game.global.GameLanguage;
	
	import laya.display.Sprite;
	import laya.events.Event;
	import laya.ui.Image;
	import laya.ui.UIUtils;
	
	public class NewUnitInfoTabCell extends NewUnitInfoTabCellUI
	{
		
		private var _dom_redDot: Sprite;
		private var _r: Number = 6;
		public function NewUnitInfoTabCell()
		{
			super();
			btn.on(Event.CLICK,this,thisClick);
		}
		
	
		public override function set dataSource(value:*):void{
			super.dataSource = value;
			if(value)
			{
				btn.skin = value.icon;
				btn.filters = null;
				if(value.cond)
				{
//					value.cond = "1=1000";
					var er:Array = ConditionsManger.cond(value.cond);
					if(er && er.length) {
						btn.filters = [UIUtils.grayFilter];
					}
				}
				// 是否含有资源争夺建筑
				if (value.isNoBuild) {
					btn.filters = [UIUtils.grayFilter];
				}
				if(value.isNoLv){
					btn.filters = [UIUtils.grayFilter];
				}
				
//				判断是否显示红点
				if(value.showRedPoint){
					this.addRedDot();
				}else{
					this.removeRedDot();
				}
			}
			
//			trace("【NewUnitInfoTabCell】", value);
		}
		
		public override function set selected(value:Boolean):void{
			if(_dom_redDot){
				if(value){
					_dom_redDot.pos(_r, _r);
				}else{
					_dom_redDot.pos(2 * _r, _r);
				}
			}
			
			super.selected = value;
			btn.selected = value;
			
		}
		
		private function thisClick(e:Event):void
		{
			if(!dataSource) return;
				
			if(dataSource.cond) {
				var er:Array = ConditionsManger.cond(dataSource.cond);
				if(er && er.length)
				{
					XTip.showTip(er[0].toString());
					e.stopPropagation();
				}
			}
			
			if(dataSource.isNoBuild) {
				XTip.showTip("L_A_132");
				e.stopPropagation();
			}
			
			if(dataSource.isNoLv) {
				var config_tianfu = ResourceManager.instance.getResByURL("config/tianfu_param.json")
				var tianfu_lv = Number(config_tianfu[8]["value"]);
				var str_1v1:String = config_tianfu[7]["value"];
				var buildlv_1v1 = str_1v1.split("=");
				//是否不够
				var isNoLv = (User.getInstance().level<tianfu_lv)&&(User.getInstance().sceneInfo.getBuildingLv(buildlv_1v1[0]) < buildlv_1v1[1]);
				var strTip ='';
				if(isNoLv){
					strTip=GameLanguage.getLangByKey("L_A_88841").replace("{0}", buildlv_1v1[1]);
					strTip=strTip.replace("{1}", tianfu_lv);
				}
				else if(User.getInstance().level<tianfu_lv){
					//玩家等级不够
					strTip=GameLanguage.getLangByKey("L_A_88842").replace("{0}", tianfu_lv);
				}
				else if(User.getInstance().sceneInfo.getBuildingLv(buildlv_1v1[0]) < buildlv_1v1[1]){
					//建筑等级不够
					strTip=GameLanguage.getLangByKey("L_A_88841").replace("{0}", buildlv_1v1[1]);
				}
				XTip.showTip(strTip);
				e.stopPropagation();
			}
		}
		
		/**
		 * 单位可合成，升星，装备觉醒材料或提升觉醒等级时，页签左上角显示红点等级（添加）
		 */
		private function addRedDot(): void{
			if(!_dom_redDot){
				_dom_redDot = new Image("common/redot.png");
				_dom_redDot.pos(_r, _r);
				_dom_redDot.zOrder = 1;
				this.addChild(_dom_redDot);
			}
		}
		
		/**
		 * 单位可合成，升星，装备觉醒材料或提升觉醒等级时，在头像左上角显示红点等级（移除）
		 * 
		 */
		private function removeRedDot(): void{
			if(_dom_redDot){
				_dom_redDot.destroy(true);
				_dom_redDot = null;
			}
		}
		
		override public function destroy(destroyChild:Boolean=true):void{
			removeRedDot();
			super.destroy(destroyChild);
		}
		
		
	}
}