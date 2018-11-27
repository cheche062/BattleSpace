/**Created by the LayaAirIDE,do not modify.*/
package MornUI.military {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MilitaryViewUI extends View {
		public var titleTF:Text;
		public var attackBox:Box;
		public var attackBtn:Button;
		public var cupBtn:Button;
		public var cupLabel:Label;
		public var icon:Image;
		public var logBtn:Button;
		public var logLabel:Label;
		public var timesLabel:Label;
		public var btnRward:Image;
		public var shopBtn:Button;
		public var snatchTF:Label;
		public var totalDBTF:Label;
		public var timesTF:Label;
		public var currencyIcon:Image;
		public var snatchLB:Label;
		public var loseTF:Label;
		public var winLB:Label;
		public var loseLB:Label;
		public var defendBox:Box;
		public var deployBtn:Button;
		public var kpiTF:Label;
		public var armyList:List;
		public var logBtn2:Button;
		public var shieldBtn:Button;
		public var timeTF:Label;
		public var infoBox:Box;
		public var icon2:Image;
		public var list:List;
		public var nameTF:Text;
		public var infoTF:Text;
		public var tfCup:Text;
		public var rankBox:Box;
		public var rankLabel:Text;
		public var rankList:List;
		public var globalBtn:Button;
		public var localBtn:Button;
		public var rewardBox:Box;
		public var rewardList:List;
		public var tab:Tab;
		public var closeBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("military/MilitaryView");

		}

	}
}