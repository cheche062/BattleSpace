/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class BossRankItemUI extends View {
		public var bg_blue:Image;
		public var bg_green:Image;
		public var nameTF:Text;
		public var hurtTF:Text;
		public var rankTF:Text;
		public var rFirst:Image;
		public var rSecond:Image;
		public var rThird:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/BossRankItem");

		}

	}
}