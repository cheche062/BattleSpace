/**Created by the LayaAirIDE,do not modify.*/
package MornUI.homeScenceView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class homeMenuViewUI extends View {
		public var build:Box;
		public var bg:Image;
		public var pane:Panel;
		public var tab:Tab;
		public var lvUp:Box;
		public var infoBtn:Button;
		public var lvUpBtn:Button;
		public var enterBtn:Button;
		public var speedBtn:Button;
		public var noBtn:Button;
		public var yesBtn:Button;
		public var attackBtn:Button;
		public var titleBG:Image;
		public var infoTF:Text;
		public var defendBtn:Button;
		public var equipCopyBtn:Button;
		public var growthBtn:Button;
		public var geneCopyBtn:Button;
		public var radarBtn:Button;
		public var techBtn:Button;
		public var unitLvupBtn:Button;
		public var transportBtn:Button;
		public var enhanceBtn:Button;
		public var mineBtn:Button;
		public var teamBtn:Button;
		public var jfBtn:Button;
		public var guidFightBtn:Button;
		public var supplyBtn:Button;
		public var gameRankBtn:Button;
		public var formatBtn:Button;
		public var shop1Btn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("homeScenceView/homeMenuView");

		}

	}
}