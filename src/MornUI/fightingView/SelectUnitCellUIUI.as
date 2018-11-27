/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class SelectUnitCellUIUI extends View {
		public var bgBox:Box;
		public var bgImg:Image;
		public var faceImg:Image;
		public var flag:Image;
		public var rkBox:Image;
		public var rkLbl:Label;
		public var maxLb:Label;
		public var numBox:Box;
		public var xLbl:Label;
		public var numLbl:Label;
		public var camp:Image;
		public var hpBarBg:Image;
		public var hpBar:ProgressBar;
		public var heroName:Label;
		public var topSp:Box;
		public var stateText:Label;
		public var timerText:Label;
		public var rebornBtn:Button;
		public var stypeIcon:Image;
		public var gjTypeImg:Image;
		public var infoBtn:Button;
		public var fsTypeImg:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingView/SelectUnitCellUI");

		}

	}
}