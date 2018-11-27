/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GuildActivityItmeUI extends View {
		public var actImg:Image;
		public var purpleBg:Box;
		public var greenBg:Box;
		public var blueBg:Box;
		public var actNameTF:Text;
		public var lockTF:Text;
		public var enterBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/GuildActivityItme");

		}

	}
}