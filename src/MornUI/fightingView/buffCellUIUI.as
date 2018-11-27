/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class buffCellUIUI extends View {
		public var iconImg:Image;
		public var bg1:Image;
		public var bg2:Image;
		public var NumLbl:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingView/buffCellUI");

		}

	}
}