package game.module.camp
{
	import MornUI.camp.talent.UnitTalentItemUI;
	
	import game.common.base.BaseView;
	import game.module.camp.data.UnitTalentItemVO;
	
	public class UnitTalentItemView extends BaseView
	{
		private var _ui:UnitTalentItemUI;
		
		private var _items:Vector.<UnitTalentView>;
		
		public function UnitTalentItemView()
		{
			super();
			
			_ui = new UnitTalentItemUI();
			this.addChild(_ui);
			
			_items = new Vector.<UnitTalentView>();
		}
		
		public function setData(vo:UnitTalentItemVO):void
		{
			clear();
			
			this.mouseEnabled = this.mouseThrough = true;
			this.gray = !vo.isAble;
			
			_ui.levelTxt.text = "Lv." + vo.needLv;
			
			for (var i:int = 0; i < vo.skills.length; i++) 
			{
				var item:UnitTalentView = new UnitTalentView();
				item.x = 104 + ( i * 90);
				item.setData(vo.skills[i],this.gray);
				_ui.addChild(item);
				_items.push(item);
			}
		}
		
		private function clear():void
		{
			for (var i:int = 0; i < _items.length; i++) 
			{
				_items[i].parent.removeChild(_items[i]);
			}
			
			_items.length = 0;
			_ui.levelTxt.text = "";
		}
	}
}