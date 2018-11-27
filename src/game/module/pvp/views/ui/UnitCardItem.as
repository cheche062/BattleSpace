package game.module.pvp.views.ui
{
	import MornUI.pvpFight.CardCUI;
	
	import game.common.base.BaseView;
	import game.global.GameConfigManager;
	import game.global.util.UnitPicUtil;
	import game.global.vo.FightUnitVo;
	
	public class UnitCardItem extends BaseView
	{
		private var _ui:CardCUI;
		
		public function UnitCardItem()
		{
			super();
		}
		
		override protected function initialize():void
		{
			_ui = new CardCUI();
			this.addChild(_ui);
		}
		
		override public function set dataSource(value):void
		{
			super.dataSource = value;
			
			var fvo:FightUnitVo = GameConfigManager.unit_dic[dataSource];
			_ui.img.skin = UnitPicUtil.getUintPic(fvo.model,UnitPicUtil.ICON_SKEW);
		
			trace("_ui.img.width:" + _ui.img.width + "height:" + _ui.img.height + "x:" + _ui.img.x + "y:" + _ui.img.y);
		}
		
		override public function dispose():void
		{
			super.dispose();
			
			_ui = null;
		}
	}
}