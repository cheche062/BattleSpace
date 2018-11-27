/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equipFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class EquipFightLuckyViewUI extends View {
		public var timerBar:ProgressBar;
		public var timerLbl:Label;
		public var box1:Box;
		public var startBtn:Button;
		public var getAllBtn:Button;
		public var allNeedBox:Box;
		public var RallNeedBox:Box;
		public var box2:Box;
		public var freeLbl:Label;
		public var box3:Box;
		public var endBtn:Button;
		public var needWBox:Box;
		public var numLbl:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("equipFight/EquipFightLuckyView");

		}

	}
}