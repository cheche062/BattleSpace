/**Created by the LayaAirIDE,do not modify.*/
package MornUI.turnCards {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TurnCardsViewUI extends View {
		public var box1:Box;
		public var a1:Image;
		public var l1:Image;
		public var gou1:Image;
		public var box6:Box;
		public var a6:Image;
		public var l6:Image;
		public var gou6:Image;
		public var box5:Box;
		public var a5:Image;
		public var l5:Image;
		public var gou5:Image;
		public var box4:Box;
		public var a4:Image;
		public var l4:Image;
		public var gou4:Image;
		public var box2:Box;
		public var a2:Image;
		public var l2:Image;
		public var gou2:Image;
		public var box3:Box;
		public var a3:Image;
		public var l3:Image;
		public var gou3:Image;
		public var btn_start:Button;
		public var numTf:Text;
		public var itemIcon:Image;
		public var leftTime:Label;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("turnCards/TurnCardsView");

		}

	}
}