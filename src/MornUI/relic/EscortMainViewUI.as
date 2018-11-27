/**Created by the LayaAirIDE,do not modify.*/
package MornUI.relic {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.relic.GoodsCellUI;

	public class EscortMainViewUI extends View {
		public var SelectCarrierBtn:Button;
		public var CarrierImage:Image;
		public var SelectTroopsBtn:Button;
		public var CloseBtn:Button;
		public var StartBtn:Button;
		public var GroupHelpBtn:Button;
		public var SelectTroopsText:Text;
		public var TitleText:Text;
		public var Plan0:GoodsCellUI;
		public var Plan1:GoodsCellUI;
		public var Plan2:GoodsCellUI;
		public var TrainBtn:Button;
		public var PlunderBtn:Button;
		public var LogBtn:Button;
		public var LogDotImage:Image;
		public var Plan4:GoodsCellUI;
		public var TrainTipsText:Text;
		public var TrainTimeText:Text;
		public var TrainTimeTipsText:Text;
		public var BattleBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.relic.GoodsCellUI",GoodsCellUI);
			super.createChildren();
			loadUI("relic/EscortMainView");

		}

	}
}