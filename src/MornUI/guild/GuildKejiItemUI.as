/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	

	public class GuildKejiItemUI extends View {
		public var dom_name:Label;
		public var dom_level:Label;
		public var dom_current:Label;
		public var dom_next:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("guild/GuildKejiItem");

		}

	}
}