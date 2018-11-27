/**Created by the LayaAirIDE,do not modify.*/
package MornUI.Story {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class StoryViewUI extends View {
		public var bg:Image;
		public var introWithMan:Box;
		public var guideNpc:Image;
		public var des1Container:Box;
		public var des1:Text;
		public var txtBox:Box;
		public var txt:Label;
		public var arrow:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("Story/StoryView");

		}

	}
}