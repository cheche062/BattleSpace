/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GuildIconViewUI extends View {
		public var bg_0:Image;
		public var bg_1:Image;
		public var bg_4:Image;
		public var bg_3:Image;
		public var bg_2:Image;
		public var bg_5:Image;
		public var bg_6:Image;
		public var bg_7:Image;
		public var closeBtn:Button;
		public var confirmBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/GuildIconView");

		}

	}
}