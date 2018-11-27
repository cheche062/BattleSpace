/**Created by the LayaAirIDE,do not modify.*/
package MornUI.militaryHouse {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MilitartUnitItemUI extends View {
		public var unitBg:Image;
		public var selectFrame:Image;
		public var lvTF:Text;
		public var sTF:Text;
		public var scoreTF:Text;
		public var stateImg:Image;
		public var openPirceTF:Text;
		public var delBtn:Button;
		public var unlockBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("militaryHouse/MilitartUnitItem");

		}

	}
}