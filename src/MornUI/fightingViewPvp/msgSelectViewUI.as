/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingViewPvp {
	import laya.ui.*;
	import laya.display.*; 
	

	public class msgSelectViewUI extends View {
		public var listBox:Box;
		public var msgList:List;
		public var msgBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingViewPvp/msgSelectView");

		}

	}
}