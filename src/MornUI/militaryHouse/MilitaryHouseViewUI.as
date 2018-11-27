/**Created by the LayaAirIDE,do not modify.*/
package MornUI.militaryHouse {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.militaryHouse.MilitaryTypeItemUI;
	import MornUI.militaryHouse.MilitartUnitItemUI;
	import laya.display.Text;

	public class MilitaryHouseViewUI extends View {
		public var mhBg:Image;
		public var titleArea:Box;
		public var ruleBtn:Button;
		public var closeBtn:Button;
		public var selectTypeArea:Box;
		public var type_0:MilitaryTypeItemUI;
		public var type_1:MilitaryTypeItemUI;
		public var type_2:MilitaryTypeItemUI;
		public var type_3:MilitaryTypeItemUI;
		public var type_4:MilitaryTypeItemUI;
		public var type_5:MilitaryTypeItemUI;
		public var type_6:MilitaryTypeItemUI;
		public var type_7:MilitaryTypeItemUI;
		public var type_8:MilitaryTypeItemUI;
		public var leftArea:Box;
		public var leftBg:Image;
		public var choosen_0:MilitartUnitItemUI;
		public var autoBtn:Button;
		public var scoreTF:Text;
		public var choosen_1:MilitartUnitItemUI;
		public var choosen_3:MilitartUnitItemUI;
		public var choosen_4:MilitartUnitItemUI;
		public var choosen_5:MilitartUnitItemUI;
		public var choosen_2:MilitartUnitItemUI;
		public var upgradeBtn:Button;
		public var sArea:Sprite;
		public var upgradeNumTF:Text;
		public var upgradeItemImg:Image;
		public var rightArea:Box;
		public var typeTF:Text;
		public var typeDesTF:Text;
		public var typeStateTF:Text;
		public var unitArea:Box;
		public var unitList:List;
		public var effectArea:Box;
		public var effectScore:Text;

		override protected function createChildren():void {
			View.regComponent("MornUI.militaryHouse.MilitaryTypeItemUI",MilitaryTypeItemUI);
			View.regComponent("MornUI.militaryHouse.MilitartUnitItemUI",MilitartUnitItemUI);
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("militaryHouse/MilitaryHouseView");

		}

	}
}