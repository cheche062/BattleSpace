/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class FightingRightBottomViewUI extends View {
		public var btnContainer:Box;
		public var DefenceBtn:Button;
		public var MoveBtn:Button;
		public var AttackBox:Box;
		public var AttackBtn:Button;
		public var skillIMG:Image;
		public var cdLbl:Label;
		public var AttackBox1:Box;
		public var AttackBtn1:Button;
		public var skillIMG1:Image;
		public var cdLbl1:Label;
		public var AttackBox2:Box;
		public var AttackBtn2:Button;
		public var skillIMG2:Image;
		public var cdLbl2:Label;
		public var bgRange:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingView/FightingRightBottomView");

		}

	}
}