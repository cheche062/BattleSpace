/**Created by the LayaAirIDE,do not modify.*/
package MornUI.startrek {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class StarTrekShopViewUI extends View {
		public var closeBtn:Button;
		public var buy0:Button;
		public var buy1:Button;
		public var old0:Text;
		public var now0:Text;
		public var old1:Text;
		public var now1:Text;
		public var sale0:Text;
		public var sale1:Text;
		public var name0:Text;
		public var name1:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("startrek/StarTrekShopView");

		}

	}
}