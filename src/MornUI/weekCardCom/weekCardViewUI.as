/**Created by the LayaAirIDE,do not modify.*/
package MornUI.weekCardCom {
	import laya.ui.*;
	import laya.display.*; 
	

	public class weekCardViewUI extends View {
		public var btn_buy:Button;
		public var dom_time:Label;
		public var listReward:List;
		public var dom_title:Label;
		public var dom_txt1:Label;
		public var dom_txt2:Label;
		public var lb_text1:Label;
		public var lb_text2:Label;
		public var lb_text3:Label;
		public var lb_text4:Label;
		public var lb_text5:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("weekCardCom/weekCardView");

		}

	}
}