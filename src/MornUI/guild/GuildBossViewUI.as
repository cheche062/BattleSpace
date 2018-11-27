/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GuildBossViewUI extends Dialog {
		public var closeBtn:Button;
		public var titleTF:Text;
		public var bossListContainer:List;
		public var leftBtn:Button;
		public var rightBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/GuildBossView");

		}

	}
}