/**Created by the LayaAirIDE,do not modify.*/
package MornUI.acitivity {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ActivityMainViewUI extends View {
		public var actBG:Image;
		public var viewContainer:Box;
		public var activityList:List;
		public var titleArea:Box;
		public var titleLabel:Label;
		public var closeBtn:Button;
		public var helpBtn:Button;
		public var noActArea:Box;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("acitivity/ActivityMainView");

		}

	}
}