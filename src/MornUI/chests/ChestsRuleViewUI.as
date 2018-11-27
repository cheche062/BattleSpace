/**Created by the LayaAirIDE,do not modify.*/
package MornUI.chests {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ChestsRuleViewUI extends View {
		public var RuleText:Text;
		public var CloseBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("chests/ChestsRuleView");

		}

	}
}