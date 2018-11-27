/**Created by the LayaAirIDE,do not modify.*/
package MornUI.military {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ShieldItem1UI extends View {
		public var icon:Image;
		public var buyBtn:Button;
		public var priceTf:Text;
		public var nameTF:Text;
		public var rTimeTF:Text;
		public var coolTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("military/ShieldItem1");

		}

	}
}