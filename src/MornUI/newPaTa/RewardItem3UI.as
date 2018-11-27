/**Created by the LayaAirIDE,do not modify.*/
package MornUI.newPaTa {
	import laya.ui.*;
	import laya.display.*; 
	

	public class RewardItem3UI extends View {
		public var nor:Image;
		public var sel:Image;
		public var icon1:Image;
		public var num1:Label;
		public var icon2:Image;
		public var num2:Label;
		public var icon3:Image;
		public var num3:Label;
		public var gou:Image;
		public var sName:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("newPaTa/RewardItem3");

		}

	}
}