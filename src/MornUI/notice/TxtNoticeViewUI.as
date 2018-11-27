/**Created by the LayaAirIDE,do not modify.*/
package MornUI.notice {
	import laya.ui.*;
	import laya.display.*; 
	

	public class TxtNoticeViewUI extends View {
		public var image_bg:Image;
		public var label_tf:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("notice/TxtNoticeView");

		}

	}
}