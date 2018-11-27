/**Created by the LayaAirIDE,do not modify.*/
package MornUI.acitivity {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class FBLikeViewUI extends View {
		public var FacebookImage:Image;
		public var TitleText:Text;
		public var getBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("acitivity/FBLikeView");

		}

	}
}