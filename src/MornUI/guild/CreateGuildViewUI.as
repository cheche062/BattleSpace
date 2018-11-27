/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class CreateGuildViewUI extends Dialog {
		public var closeBtn:Button;
		public var titleTF:Text;
		public var searchBtn:Button;
		public var createBtn:Button;
		public var createBtnTF:Text;
		public var searchInput:TextInput;
		public var guildListContainer:List;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/CreateGuildView");

		}

	}
}