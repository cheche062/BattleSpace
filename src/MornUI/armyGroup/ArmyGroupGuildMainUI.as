/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ArmyGroupGuildMainUI extends View {
		public var GuildResourceBtn:Button;
		public var GuildLotteryBtn:Button;
		public var GuildResource:Box;
		public var CollectBtn:Button;
		public var TipsText:Text;
		public var TimeText:Text;
		public var AllianceIncomeText:Text;
		public var PersonalIncomeText:Text;
		public var PersonalList:List;
		public var AllianceList:List;
		public var GuildLottery:Box;
		public var LotteryBox1:Image;
		public var OpenBtn:Button;
		public var GuildBattle:Box;
		public var StarList:List;
		public var ReceiveBtn:Button;
		public var CloseBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/ArmyGroupGuildMain");

		}

	}
}