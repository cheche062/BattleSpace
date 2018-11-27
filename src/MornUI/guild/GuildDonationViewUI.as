/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GuildDonationViewUI extends View {
		public var cancelBtn:Button;
		public var silverAdvBtn:Button;
		public var expBar:ProgressBar;
		public var gExpTF:Text;
		public var itemTF:Text;
		public var add1TF:Text;
		public var add2TF:Text;
		public var gfNumTxt:Text;
		public var gfAddTxt:Text;
		public var gfImg:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/GuildDonationView");

		}

	}
}