/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GuildWelfareViewUI extends View {
		public var myWelfareTF:Text;
		public var welfareList:List;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/GuildWelfareView");

		}

	}
}