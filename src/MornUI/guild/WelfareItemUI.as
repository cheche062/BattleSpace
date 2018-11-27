/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class WelfareItemUI extends View {
		public var picContainer:Sprite;
		public var welfareNameTF:Text;
		public var welfareLvTF:Text;
		public var enhancedTF:Text;
		public var timeTF:Text;
		public var priceTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/WelfareItem");

		}

	}
}