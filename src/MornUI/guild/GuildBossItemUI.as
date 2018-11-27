/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GuildBossItemUI extends View {
		public var bImg:Image;
		public var blueBg:Box;
		public var selectBtn:Button;
		public var rewardLabel:Text;
		public var lvBox:Box;
		public var star0:Image;
		public var star1:Image;
		public var star2:Image;
		public var star3:Image;
		public var star4:Image;
		public var bossName:Text;
		public var openNumTF:Text;
		public var remTF:Text;
		public var freeTF:Text;
		public var noticeBtn:Button;
		public var openRewardNum:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/GuildBossItem");

		}

	}
}