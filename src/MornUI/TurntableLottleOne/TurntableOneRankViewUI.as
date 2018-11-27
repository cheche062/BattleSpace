/**Created by the LayaAirIDE,do not modify.*/
package MornUI.TurntableLottleOne {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.TurntableLottleOne.TurnTableOneRankItemUI;
	import laya.display.Text;

	public class TurntableOneRankViewUI extends View {
		public var closeBtn:Button;
		public var rItem_0:TurnTableOneRankItemUI;
		public var rItem_1:TurnTableOneRankItemUI;
		public var rItem_2:TurnTableOneRankItemUI;
		public var rItem_3:TurnTableOneRankItemUI;
		public var rItem_4:TurnTableOneRankItemUI;
		public var pRank:Text;
		public var pScore:Text;
		public var prevBtn:Button;
		public var nextBtn:Button;
		public var pageTxt:Text;

		override protected function createChildren():void {
			View.regComponent("MornUI.TurntableLottleOne.TurnTableOneRankItemUI",TurnTableOneRankItemUI);
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("TurntableLottleOne/TurntableOneRankView");

		}

	}
}