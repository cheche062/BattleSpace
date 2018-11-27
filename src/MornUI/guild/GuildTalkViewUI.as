/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	

	public class GuildTalkViewUI extends View {
		public var closeBtn:Button;
		public var inputTF:TextInput;
		public var talkContainer:Panel;
		public var sendBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("guild/GuildTalkView");

		}

	}
}