/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ChangeGuildIntroUI extends View {
		public var okBtn:Button;
		public var inputText:TextInput;
		public var cancleBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("guild/ChangeGuildIntro");

		}

	}
}