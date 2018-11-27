/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GuildRankItemUI extends View {
		public var bg_green:Image;
		public var rankTF:Text;
		public var gNameTF:Text;
		public var aLvTF:Text;
		public var honorTF:Text;
		public var memberTF:Text;
		public var rFirst:Image;
		public var rSecond:Image;
		public var rThird:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/GuildRankItem");

		}

	}
}