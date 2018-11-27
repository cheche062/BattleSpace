/**Created by the LayaAirIDE,do not modify.*/
package MornUI.bagua {
	import laya.ui.*;
	import laya.display.*; 
	

	public class baguaRewardsDialogUI extends View {
		public var btn_close:Button;
		public var dom_info:Label;
		public var dom_buff_box:HBox;
		public var dom_rewards_box:HBox;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("bagua/baguaRewardsDialog");

		}

	}
}