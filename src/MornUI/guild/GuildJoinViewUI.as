/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	

	public class GuildJoinViewUI extends View {
		public var btn_close:Button;
		public var dom_num:Label;
		public var btn_join:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("guild/GuildJoinView");

		}

	}
}