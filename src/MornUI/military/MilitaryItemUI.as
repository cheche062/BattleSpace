/**Created by the LayaAirIDE,do not modify.*/
package MornUI.military {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MilitaryItemUI extends View {
		public var titleTF:Text;
		public var nameTF_0:Text;
		public var nameTF_1:Text;
		public var nameTF_2:Text;
		public var priceTF_0:Text;
		public var priceTF_1:Text;
		public var priceTF_2:Text;
		public var icon_0:Image;
		public var icon_1:Image;
		public var icon_2:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("military/MilitaryItem");

		}

	}
}