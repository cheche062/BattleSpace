/**Created by the LayaAirIDE,do not modify.*/
package MornUI.baseTips {
	import laya.ui.*;
	import laya.display.*; 
	

	public class BaseTipViewUI extends View {
		public var tipBg:Image;
		public var stringLa:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("baseTips/BaseTipView");

		}

	}
}