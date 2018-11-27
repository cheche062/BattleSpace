/**Created by the LayaAirIDE,do not modify.*/
package MornUI.replay {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ReplayItem1UI extends View {
		public var bg:Button;
		public var lvTF:Text;
		public var nameTF:Text;
		public var cupIcon:Image;
		public var cupTF:Text;
		public var revengeBtn:Button;
		public var tfWin:Text;
		public var tfLose:Text;
		public var infoBox:Box;
		public var attLabel:Text;
		public var sList:List;
		public var replayBtn:Button;
		public var shareBtn:Button;
		public var tipLabel:Label;
		public var resBox:Box;
		public var resLabel:Text;
		public var goldTF:Text;
		public var steelTF:Text;
		public var stoneTF:Text;
		public var foodTF:Text;
		public var dbIcon:Image;
		public var dbTF:Text;
		public var breadTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("replay/ReplayItem1");

		}

	}
}