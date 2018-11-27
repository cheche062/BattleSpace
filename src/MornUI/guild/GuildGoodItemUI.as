/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GuildGoodItemUI extends View {
		public var buyBtn:Button;
		public var goodPriceTF:Text;
		public var iImg:Image;
		public var limiteTF:Text;
		public var lvLimitTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/GuildGoodItem");

		}

	}
}