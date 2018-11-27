/**Created by the LayaAirIDE,do not modify.*/
package MornUI.StoryTask {
	import laya.ui.*;
	import laya.display.*; 
	

	public class StoryTaskViewUI extends View {
		public var btn_close:Button;
		public var list:List;
		public var tipBox:Box;
		public var cankao:Image;
		public var title:Label;
		public var context:Label;
		public var btn_receive:Button;
		public var process:Label;
		public var tip:Box;
		public var tiptext:Label;
		public var btn_right:Button;
		public var red2:Image;
		public var btn_left:Button;
		public var red1:Image;
		public var leftTime:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("StoryTask/StoryTaskView");

		}

	}
}