/**Created by the LayaAirIDE,do not modify.*/
package MornUI.military {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MilitaryBuffViewUI extends View {
		public var closeBtn:Button;
		public var nextBtn:Button;
		public var prevBtn:Button;
		public var titleTF:Text;
		public var infoBtn:Button;
		public var buffList:List;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("military/MilitaryBuffView");

		}

	}
}