/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp {
	import laya.ui.*;
	import laya.display.*; 
	

	public class NewJuexingTupoViewUI extends View {
		public var bgImg:Image;
		public var tileLbl:Label;
		public var closeBtn:Button;
		public var topBox:Box;
		public var leftBox:Box;
		public var rightBox:Box;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("camp/NewJuexingTupoView");

		}

	}
}