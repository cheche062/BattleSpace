/**Created by the LayaAirIDE,do not modify.*/
package MornUI.componets {
	import laya.ui.*;
	import laya.display.*; 
	

	public class RewardsItemUI extends View {
		public var dom_icon:Image;
		public var dom_num:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("componets/RewardsItem");

		}

	}
}