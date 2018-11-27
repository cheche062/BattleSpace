/**Created by the LayaAirIDE,do not modify.*/
package MornUI.kapai {
	import laya.ui.*;
	import laya.display.*; 
	

	public class CardPointViewUI extends View {
		public var btn_close:Button;
		public var dom_sure:Button;
		public var dom_add:Button;
		public var dom_sub:Button;
		public var dom_img:Image;
		public var dom_num:Label;
		public var dom_title_text:Label;
		public var dom_require:Label;
		public var dom_myPoint:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("kapai/CardPointView");

		}

	}
}