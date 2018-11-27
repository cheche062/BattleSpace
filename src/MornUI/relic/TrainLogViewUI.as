/**Created by the LayaAirIDE,do not modify.*/
package MornUI.relic {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TrainLogViewUI extends View {
		public var TitleText:Text;
		public var CloseBtn:Button;
		public var AttackBtn:Button;
		public var DefenceBtn:Button;
		public var LogPanel:Panel;
		public var BattleBtn:Button;
		public var TrainBtn:Button;
		public var PlunderBtn:Button;
		public var LogBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("relic/TrainLogView");

		}

	}
}