/**Created by the LayaAirIDE,do not modify.*/
package MornUI.military {
	import laya.ui.*;
	import laya.display.*; 
	

	public class RewardItemUI extends View {
		public var bg:Image;
		public var icon:Image;
		public var claimBtn:Button;
		public var cupNumTF:Label;
		public var receivedLabel:Label;
		public var itemContainer:Sprite;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("military/RewardItem");

		}

	}
}