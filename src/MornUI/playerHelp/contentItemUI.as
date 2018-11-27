/**Created by the LayaAirIDE,do not modify.*/
package MornUI.playerHelp {
	import laya.ui.*;
	import laya.display.*; 
	

	public class contentItemUI extends View {
		public var dom_txt:Label;
		public var dom_img:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("playerHelp/contentItem");

		}

	}
}