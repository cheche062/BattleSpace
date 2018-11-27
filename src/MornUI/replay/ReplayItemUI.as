/**Created by the LayaAirIDE,do not modify.*/
package MornUI.replay {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ReplayItemUI extends View {
		public var bg:Button;
		public var icon:Image;
		public var lvTF:Text;
		public var nameTF:Text;
		public var cupTF:Text;
		public var dbIcon:Image;
		public var dbTF:Text;
		public var revengeBtn:Button;
		public var infoBox:Box;
		public var attLabel:Text;
		public var sList:List;
		public var replayBtn:Button;
		public var shareBtn:Button;
		public var tipLabel:Label;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("replay/ReplayItem");

		}

	}
}