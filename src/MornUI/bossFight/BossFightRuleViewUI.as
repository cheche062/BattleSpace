/**Created by the LayaAirIDE,do not modify.*/
package MornUI.bossFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class BossFightRuleViewUI extends View {
		public var RuleText0:Text;
		public var RuleText1:Text;
		public var RuleText2:Text;
		public var RuleText3:Text;
		public var RuleText4:Text;
		public var RuleText5:Text;
		public var CloseBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("bossFight/BossFightRuleView");

		}

	}
}