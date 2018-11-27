/**Created by the LayaAirIDE,do not modify.*/
package MornUI.homeScenceView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ProgressBarUI extends View {
		public var bar1:Image;
		public var bar:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("homeScenceView/ProgressBar");

		}

	}
}