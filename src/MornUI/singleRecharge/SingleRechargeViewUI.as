/**Created by the LayaAirIDE,do not modify.*/
package MornUI.singleRecharge {
	import laya.ui.*;
	import laya.display.*; 
	

	public class SingleRechargeViewUI extends View {
		public var dom_time:Label;
		public var dom_list:List;
		public var btn_charge:Button;
		public var dom_remain:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("singleRecharge/SingleRechargeView");

		}

	}
}