/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class failureCellUiUI extends View {
		public var cellBtn:Button;
		public var iconImg:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingView/failureCellUi");

		}

	}
}