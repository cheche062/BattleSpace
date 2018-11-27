/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equipFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class heroArmyCellBoxUI extends View {
		public var bgImg:Image;
		public var heroFace:Image;
		public var pinzhiImg:Image;
		public var rkBox:Image;
		public var rkLbl:Label;
		public var maxLb:Label;
		public var numLbl:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("equipFight/heroArmyCellBox");

		}

	}
}