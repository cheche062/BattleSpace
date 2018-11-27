/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class bounsAreaUI extends View {
		public var bHelpBtn:Button;
		public var killedNum:Text;
		public var bounsHBox:HBox;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/bounsArea");

		}

	}
}