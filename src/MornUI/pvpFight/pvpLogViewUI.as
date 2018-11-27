/**Created by the LayaAirIDE,do not modify.*/
package MornUI.pvpFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class pvpLogViewUI extends View {
		public var levelLbl:Label;
		public var pointLbl:Label;
		public var maxFNumLbl:Label;
		public var winLbl:Label;
		public var loseLbl:Label;
		public var shenglvLbl:Label;
		public var nameLbl:Label;
		public var logList:List;
		public var closeBtn:Button;
		public var rankeFace:Image;
		public var atkBtn:Button;
		public var defBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("pvpFight/pvpLogView");

		}

	}
}