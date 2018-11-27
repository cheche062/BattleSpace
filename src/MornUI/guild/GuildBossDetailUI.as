/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GuildBossDetailUI extends View {
		public var closeBtn:Button;
		public var titleTF:Text;
		public var bossImg:Image;
		public var blueBg:Box;
		public var star0:Image;
		public var star1:Image;
		public var star2:Image;
		public var star3:Image;
		public var star4:Image;
		public var bossName:Text;
		public var bloodBar:Image;
		public var bloodPrecentTF:Text;
		public var fightList:List;
		public var fightBtn:Button;
		public var tipsBtn:Button;
		public var freeTimeTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/GuildBossDetail");

		}

	}
}