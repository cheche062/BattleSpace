/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class FightingSelectUnitViewUI extends View {
		public var bgBar:Image;
		public var unitTypeTab:Tab;
		public var m_list:List;
		public var rightBox:Box;
		public var fightBtn:Button;
		public var hlNumLbl:Label;
		public var fBox:Box;
		public var foodIcon:Image;
		public var needFoodLbl:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingView/FightingSelectUnitView");

		}

	}
}