/**Created by the LayaAirIDE,do not modify.*/
package MornUI.pvpFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class RoleContainerUI extends View {
		public var myContainer:Box;
		public var myRoleImg:Image;
		public var myBg:Image;
		public var myScoreTxt:Label;
		public var myBpTxt:Label;
		public var myWinsTxt:Label;
		public var lineupBtn:Button;
		public var mySp:Box;
		public var myRankIcon:Image;
		public var myNameTxt:Label;
		public var otherContainer:Box;
		public var otherRoleImg:Image;
		public var selectRole:Image;
		public var otherWinTxt:Label;
		public var otherBpTxt:Label;
		public var otherLoseTxt:Label;
		public var changeBtn:Button;
		public var fightBtn:Button;
		public var ocSp:Box;
		public var otherNameTxt:Label;
		public var otherRankIcon:Image;
		public var nobodyC:Box;
		public var xhTxt:Label;
		public var piPeiBtn:Button;
		public var typeIcon:Image;
		public var matchTxt:Label;
		public var freeWord:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("pvpFight/RoleContainer");

		}

	}
}