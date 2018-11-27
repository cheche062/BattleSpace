/**Created by the LayaAirIDE,do not modify.*/
package MornUI.tips {
	import laya.ui.*;
	import laya.display.*; 
	

	public class CommTipUI extends View {
		public var bg:Image;
		public var msgTF:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("tips/CommTip");

		}

	}
}