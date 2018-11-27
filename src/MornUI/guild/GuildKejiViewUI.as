/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.guild.GuildKejiItemUI;
	import laya.display.Text;

	public class GuildKejiViewUI extends View {
		public var dom_list:List;

		override protected function createChildren():void {
			View.regComponent("MornUI.guild.GuildKejiItemUI",GuildKejiItemUI);
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/GuildKejiView");

		}

	}
}