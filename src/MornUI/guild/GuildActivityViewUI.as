/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	

	public class GuildActivityViewUI extends View {
		public var activityContainer:List;
		public var leftBtn:Button;
		public var rightBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("guild/GuildActivityView");

		}

	}
}