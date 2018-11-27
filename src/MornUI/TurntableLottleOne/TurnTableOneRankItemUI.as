/**Created by the LayaAirIDE,do not modify.*/
package MornUI.TurntableLottleOne {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TurnTableOneRankItemUI extends View {
		public var ybg:Image;
		public var gbg:Image;
		public var rankTxt:Text;
		public var nameTxt:Text;
		public var scoreTxt:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("TurntableLottleOne/TurnTableOneRankItem");

		}

	}
}