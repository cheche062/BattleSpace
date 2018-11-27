/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equip {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.equip.EquipCellUI;
	import MornUI.equip.WashFightingCellUI;

	public class EquipStrongViewUI extends View {
		public var bgImage:Image;
		public var StrongProperty:Box;
		public var PropertyImage2:Image;
		public var PropertyImage1:Image;
		public var PropertyImage0:Image;
		public var CostImage:Image;
		public var HasImage:Image;
		public var EnhanceBtn:Button;
		public var Time5EnhanceBtn:Button;
		public var PropertyText0:Text;
		public var PropertyText1:Text;
		public var PropertyText2:Text;
		public var NowPropertyText2:Text;
		public var NowPropertyText1:Text;
		public var NowPropertyText0:Text;
		public var NextLevelText:Text;
		public var NowLevelText:Text;
		public var CostNumText:Text;
		public var NumText:Text;
		public var CostList:List;
		public var QualityImage:Image;
		public var EquipWash:Box;
		public var WashPropertyList:List;
		public var ItemList:List;
		public var WashChangePropertyList:List;
		public var RefreshBtn:Button;
		public var RetainBtn:Button;
		public var CurrentstatesText:Text;
		public var NewStatesText:Text;
		public var SelectEquipCell:EquipCellUI;
		public var SelfFightingCell:WashFightingCellUI;
		public var ChangeFightingCell:WashFightingCellUI;
		public var NoEquipBox:Box;
		public var TipsText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.equip.EquipCellUI",EquipCellUI);
			View.regComponent("MornUI.equip.WashFightingCellUI",WashFightingCellUI);
			super.createChildren();
			loadUI("equip/EquipStrongView");

		}

	}
}