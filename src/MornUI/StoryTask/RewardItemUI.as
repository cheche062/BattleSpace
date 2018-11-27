/**Created by the LayaAirIDE,do not modify.*/
package MornUI.StoryTask {
	import laya.ui.*;
	import laya.display.*; 
	

	public class RewardItemUI extends View {
		public var icon:Image;
		public var num:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("StoryTask/RewardItem");

		}

	}
}