/**Created by the LayaAirIDE,do not modify.*/
package MornUI.commonGuide {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class CommonGuideViewUI extends View {
		public var confirmBtn:Button;
		public var funNameTxt:Text;
		public var funDesTxt:Text;
		public var imgContainer:Sprite;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("commonGuide/CommonGuideView");

		}

	}
}