/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class KilledChildViewUI extends View {
		public var killedNum:Text;
		public var claimBtn:Button;
		public var step0Box:Box;
		public var step0Txt:Text;
		public var step1Box:Box;
		public var step1Txt:Text;
		public var step2Box:Box;
		public var step2Txt:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/KilledChildView");

		}

	}
}