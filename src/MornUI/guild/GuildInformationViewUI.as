/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.guild.GuildMemberItemUI;

	public class GuildInformationViewUI extends View {
		public var ginfoarea:Box;
		public var gIcon:Image;
		public var expBar:ProgressBar;
		public var gNameTF:Text;
		public var gDesTF:Text;
		public var gLvTF:Text;
		public var gExpTF:Text;
		public var gIconBtn:Button;
		public var editDesBtn:Button;
		public var donateBtn:Button;
		public var gMemberTF:Text;
		public var gJoinType:Text;
		public var changeEnterBtn:Button;
		public var gClaimLvTF:Text;
		public var changeEnterLvBtn:Button;
		public var dom_nav:Box;
		public var memberList:List;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.guild.GuildMemberItemUI",GuildMemberItemUI);
			super.createChildren();
			loadUI("guild/GuildInformationView");

		}

	}
}