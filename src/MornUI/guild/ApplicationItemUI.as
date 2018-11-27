/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ApplicationItemUI extends View {
		public var confirmBtn:Button;
		public var denyBtn:Button;
		public var nameTF:Text;
		public var lvTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/ApplicationItem");

		}

	}
}