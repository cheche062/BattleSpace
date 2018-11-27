/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class SelectUnitItemCellUI extends View {
		public var bgImg:Image;
		public var faceImg:Image;
		public var flag:Image;
		public var numBox:Box;
		public var xLbl:Label;
		public var numLbl:Label;
		public var heroName:Label;
		public var infoBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingView/SelectUnitItemCell");

		}

	}
}