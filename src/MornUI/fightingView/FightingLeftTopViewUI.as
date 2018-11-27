/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class FightingLeftTopViewUI extends View {
		public var btnInfo:Button;
		public var bgImage:Image;
		public var cellBox:Box;
		public var upBtn:Button;
		public var upBtn2:Button;
		public var boxItem:Box;
		public var tfNum:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingView/FightingLeftTopView");

		}

	}
}