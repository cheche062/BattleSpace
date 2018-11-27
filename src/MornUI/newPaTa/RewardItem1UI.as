/**Created by the LayaAirIDE,do not modify.*/
package MornUI.newPaTa {
	import laya.ui.*;
	import laya.display.*; 
	

	public class RewardItem1UI extends View {
		public var nor:Image;
		public var sel:Image;
		public var icon:Image;
		public var num:Label;
		public var sName:Label;
		public var gou:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("newPaTa/RewardItem1");

		}

	}
}