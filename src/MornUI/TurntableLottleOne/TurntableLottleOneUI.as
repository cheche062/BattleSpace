/**Created by the LayaAirIDE,do not modify.*/
package MornUI.TurntableLottleOne {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TurntableLottleOneUI extends View {
		public var lottleArea:Box;
		public var r_7:Sprite;
		public var r_6:Sprite;
		public var r_5:Sprite;
		public var r_4:Sprite;
		public var r_3:Sprite;
		public var r_2:Sprite;
		public var r_1:Sprite;
		public var r_0:Sprite;
		public var oneBtn:Button;
		public var tenBtn:Button;
		public var lottleImg0:Image;
		public var lottleImg1:Image;
		public var oneTxt:Text;
		public var tenTxt:Text;
		public var rotatImg:Image;
		public var rankBtn:Button;
		public var rotatArrow:Image;
		public var timeTxt:Text;
		public var myScoreTxt:Text;
		public var getArea:Box;
		public var getRankReward:Button;
		public var finalRankTxt:Text;
		public var noRewardTips:Text;
		public var imgI0:Image;
		public var imgI1:Image;
		public var itemBagNum:Text;
		public var waterNum:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("TurntableLottleOne/TurntableLottleOne");

		}

	}
}