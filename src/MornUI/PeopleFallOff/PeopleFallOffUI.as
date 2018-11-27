/**Created by the LayaAirIDE,do not modify.*/
package MornUI.PeopleFallOff {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class PeopleFallOffUI extends View {
		public var btn_addPos:Button;
		public var box1:Box;
		public var box2:Box;
		public var box3:Box;
		public var box4:Box;
		public var box5:Box;
		public var di1:Box;
		public var di2:Box;
		public var di3:Box;
		public var di4:Box;
		public var di5:Box;
		public var btn_random:Button;
		public var n1Txt:Label;
		public var n3Txt:Label;
		public var n2Txt:Label;
		public var itemIcon2:Image;
		public var numTf2:Text;
		public var maxImg:Image;
		public var tf_memberAllow:Label;
		public var tf_enemyLevel:Label;
		public var btn_reset:Button;
		public var btn_battle:Button;
		public var btn_infor:Button;
		public var btn_close:Button;
		public var refer:Box;
		public var rewardBox:Box;
		public var btn_addPos1:Button;
		public var itemIcon:Image;
		public var numTf:Text;
		public var itemIcon1:Image;
		public var numTf1:Text;
		public var xImg:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("PeopleFallOff/PeopleFallOff");

		}

	}
}