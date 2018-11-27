/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp {
	import laya.ui.*;
	import laya.display.*; 
	

	public class NewUnitInfoArmyCellUI extends View {
		public var bgImg:Image;
		public var faceImg:Image;
		public var levelLbl:Label;
		public var dom_red:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("camp/NewUnitInfoArmyCell");

		}

	}
}