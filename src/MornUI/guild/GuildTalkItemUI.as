/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GuildTalkItemUI extends View {
		public var selfWord:Box;
		public var mBg:Image;
		public var senderTF:Text;
		public var timeTF:Text;
		public var myWordTF:Text;
		public var otherWord:Box;
		public var oBg:Image;
		public var oSenderTF:Text;
		public var oTimeTF:Text;
		public var oWordTF:Text;
		public var sysWord:Box;
		public var sysBg:Image;
		public var wordTF:Text;
		public var helpBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/GuildTalkItem");

		}

	}
}