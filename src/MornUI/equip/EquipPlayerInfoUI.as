/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equip {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.equip.EquipCellUI;

	public class EquipPlayerInfoUI extends View {
		public var eff:Image;
		public var PlayerImage:Image;
		public var PlayerEquipImage:Image;
		public var EquipImage1:Image;
		public var EquipImage6:Image;
		public var EquipImage3:Image;
		public var EquipImage2:Image;
		public var EquipImage5:Image;
		public var EquipImage4:Image;
		public var LeftPropertyBox:Box;
		public var icon_0:Image;
		public var icon_1:Image;
		public var icon_4:Image;
		public var icon_6:Image;
		public var icon_7:Image;
		public var ValueText0:Text;
		public var ValueText1:Text;
		public var ValueText2:Text;
		public var ValueText3:Text;
		public var ValueText4:Text;
		public var ValueAddText0:Text;
		public var ValueAddText1:Text;
		public var ValueAddText2:Text;
		public var ValueAddText3:Text;
		public var ValueAddText4:Text;
		public var RightPropertyBox:Box;
		public var icon_2:Image;
		public var icon_3:Image;
		public var icon_5:Image;
		public var icon_8:Image;
		public var icon_9:Image;
		public var RightValueText0:Text;
		public var RightValueText1:Text;
		public var RightValueText2:Text;
		public var RightValueText3:Text;
		public var RightValueText4:Text;
		public var RightValueAddText0:Text;
		public var RightValueAddText1:Text;
		public var RightValueAddText2:Text;
		public var RightValueAddText3:Text;
		public var RightValueAddText4:Text;
		public var NameText:Text;
		public var LevelText:Text;
		public var TipImage:Image;
		public var SuitEquipTipsBtn:Button;
		public var EquipCell3:EquipCellUI;
		public var EquipCell2:EquipCellUI;
		public var EquipCell5:EquipCellUI;
		public var EquipCell6:EquipCellUI;
		public var EquipCell4:EquipCellUI;
		public var EquipCell1:EquipCellUI;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.equip.EquipCellUI",EquipCellUI);
			super.createChildren();
			loadUI("equip/EquipPlayerInfo");

		}

	}
}