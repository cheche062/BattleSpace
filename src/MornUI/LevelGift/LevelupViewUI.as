/**Created by the LayaAirIDE,do not modify.*/
package MornUI.LevelGift {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class LevelupViewUI extends View {
		public var list:List;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("LevelGift/LevelupView");

		}

	}
}