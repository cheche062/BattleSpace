/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class BossRewardItemUI extends View {
		public var bgb:Image;
		public var bgg:Image;
		public var rankTF:Text;
		public var rFirst:Image;
		public var rSecond:Image;
		public var rThird:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/BossRewardItem");

		}

	}
}