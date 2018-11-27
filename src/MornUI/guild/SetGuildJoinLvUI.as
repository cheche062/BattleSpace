/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class SetGuildJoinLvUI extends View {
		public var lvTF:TextInput;
		public var addBtn:Button;
		public var minBtn:Button;
		public var closeBtn:Button;
		public var confirmBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/SetGuildJoinLv");

		}

	}
}