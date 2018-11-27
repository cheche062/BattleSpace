/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingChapter {
	import laya.ui.*;
	import laya.display.*; 
	

	public class SaoDangRewardViewUI extends View {
		public var close2:Button;
		public var rBox:Box;
		public var nBox:Box;
		public var needBox:Box;
		public var closeBtn:Button;
		public var zaiciSaoDang:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingChapter/SaoDangRewardView");

		}

	}
}