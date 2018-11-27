/**Created by the LayaAirIDE,do not modify.*/
package MornUI.militaryHouse {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MilitaryTypeItemUI extends View {
		public var typeTF:Text;
		public var blockNumTF:Text;
		public var scoreTF:Text;
		public var lvTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("militaryHouse/MilitaryTypeItem");

		}

	}
}