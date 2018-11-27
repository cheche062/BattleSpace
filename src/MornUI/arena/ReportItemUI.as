/**Created by the LayaAirIDE,do not modify.*/
package MornUI.arena {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ReportItemUI extends View {
		public var resutlTF:Text;
		public var nameTF:Text;
		public var rTF:Text;
		public var timeTF:Text;
		public var lvTF:Text;
		public var reBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("arena/ReportItem");

		}

	}
}