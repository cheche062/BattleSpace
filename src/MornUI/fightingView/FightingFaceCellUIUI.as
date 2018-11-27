/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class FightingFaceCellUIUI extends View {
		public var bgImg:Image;
		public var faceImg:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingView/FightingFaceCellUI");

		}

	}
}