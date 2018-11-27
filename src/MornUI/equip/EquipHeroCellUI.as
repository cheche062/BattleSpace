/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equip {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.equip.EquipCellUI;

	public class EquipHeroCellUI extends View {
		public var HeroNameText:Text;
		public var HeroLevelText:Text;
		public var EquipCell0:EquipCellUI;
		public var EquipCell1:EquipCellUI;
		public var EquipCell2:EquipCellUI;
		public var EquipCell3:EquipCellUI;
		public var EquipCell4:EquipCellUI;
		public var EquipCell5:EquipCellUI;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.equip.EquipCellUI",EquipCellUI);
			super.createChildren();
			loadUI("equip/EquipHeroCell");

		}

	}
}