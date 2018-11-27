/**Created by the LayaAirIDE,do not modify.*/
package MornUI.newerGuide {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GuiderViewUI extends View {
		public var ani1:FrameAnimation;
		public var introWithMan:Box;
		public var guideNpc:Image;
		public var commandTxt:Text;
		public var des1Container:Box;
		public var des1:Text;
		public var normalDes:Box;
		public var middleBg:Image;
		public var des2:Text;
		public var arrowMotion:Box;
		public var btnTips:Box;
		public var upBg:Image;
		public var des3:Text;
		public var leftBtnTips:Box;
		public var leftBg:Image;
		public var leftArrow:Image;
		public var des4:Text;
		public var downBtnTips:Box;
		public var downBg:Image;
		public var des5:Text;
		public var rightBtnTips:Box;
		public var rightBg:Image;
		public var des6:Text;
		public var rightArrow:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("newerGuide/GuiderView");

		}

	}
}