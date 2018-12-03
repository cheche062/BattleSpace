/**Created by the LayaAirIDE,do not modify.*/
package MornUI.tips {
	import laya.ui.*;
	import laya.display.*; 
	

	public class FightSaveTipUI extends View {
		public var bg:Image;
		public var msgTF:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("tips/FightSaveTip");

		}

	}
}