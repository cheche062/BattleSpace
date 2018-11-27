/**Created by the LayaAirIDE,do not modify.*/
package MornUI.randomCondition {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class RandomConditionViewUI extends View {
		public var btn_refresh:Button;
		public var conDes:Label;
		public var conTitle:Label;
		public var btn_battle:Button;
		public var btn_reset:Button;
		public var btn_infor:Button;
		public var btn_close:Button;
		public var pass1:Box;
		public var pass2:Box;
		public var pass3:Box;
		public var pass5:Box;
		public var pass4:Box;
		public var itemIcon:Image;
		public var numTF:Text;
		public var itemIcon1:Image;
		public var numTF1:Text;
		public var rewardBox:Box;
		public var pass6:Box;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("randomCondition/RandomConditionView");

		}

	}
}