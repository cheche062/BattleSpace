/**Created by the LayaAirIDE,do not modify.*/
package MornUI.military {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MolitaryBuffItemUI extends View {
		public var icon:Image;
		public var priceTF_0:Text;
		public var introTF:Text;
		public var nameTF:Text;
		public var buyBtn:Button;
		public var currencyIcon:Image;
		public var priceTf:Text;
		public var timeTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("military/MolitaryBuffItem");

		}

	}
}