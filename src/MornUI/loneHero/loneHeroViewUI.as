/**Created by the LayaAirIDE,do not modify.*/
package MornUI.loneHero {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class loneHeroViewUI extends View {
		public var closeBtn:Button;
		public var infoBtn:Button;
		public var fightBtn:Button;
		public var resetBtn:Button;
		public var refreshRateBtn:Button;
		public var refreshHeroBtn:Button;
		public var xImg:Image;
		public var n1Txt:Text;
		public var n2Txt:Text;
		public var n3Txt:Text;
		public var heroResetTxt:Text;
		public var fightResetTxt:Text;
		public var stage_0:Button;
		public var stage_1:Button;
		public var stage_2:Button;
		public var stage_3:Button;
		public var stage_4:Button;
		public var stage_5:Button;
		public var stage_6:Button;
		public var headImg:Image;
		public var defendIcon:Image;
		public var attackIcon:Image;
		public var ratePriceTxt:Text;
		public var maxImg:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("loneHero/loneHeroView");

		}

	}
}