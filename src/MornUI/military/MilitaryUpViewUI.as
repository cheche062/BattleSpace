/**Created by the LayaAirIDE,do not modify.*/
package MornUI.military {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MilitaryUpViewUI extends View {
		public var bgBox:Box;
		public var winTF:Text;
		public var loseTF:Text;
		public var icon:Image;
		public var aniBox:Box;
		public var aniBox2:Box;
		public var confirmBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("military/MilitaryUpView");

		}

	}
}