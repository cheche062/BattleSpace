/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import laya.html.dom.HTMLDivElement;

	public class FightLogListItemAiUI extends View {
		public var attackImg:Image;
		public var overImg:Image;
		public var goBtn:Button;
		public var timeTxt:Text;
		public var describeDom:HTMLDivElement;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("HTMLDivElement",HTMLDivElement);
			super.createChildren();
			loadUI("armyGroup/FightLogListItemAi");

		}

	}
}