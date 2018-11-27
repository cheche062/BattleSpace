/**Created by the LayaAirIDE,do not modify.*/
package MornUI.homeScenceView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class SpeedItemUserViewUI extends View {
		public var btnClose:Button;
		public var tfName:Label;
		public var tfLv:Label;
		public var bar:Image;
		public var tfTime:Label;
		public var itemContainer:Sprite;
		public var btnAdd:Button;
		public var btnMinus:Button;
		public var btnUse:Button;
		public var tfItemNum:Label;
		public var tfTotal:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("homeScenceView/SpeedItemUserView");

		}

	}
}