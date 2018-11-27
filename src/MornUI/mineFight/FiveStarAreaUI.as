/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mineFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.mineFight.superMineItemUI;
	import MornUI.mineFight.midMineItemUI;
	import MornUI.mineFight.normalMineItemUI;

	public class FiveStarAreaUI extends View {
		public var b_0:superMineItemUI;
		public var m_0:midMineItemUI;
		public var m_1:midMineItemUI;
		public var s_1:normalMineItemUI;
		public var s_0:normalMineItemUI;
		public var m_3:midMineItemUI;
		public var m_2:midMineItemUI;
		public var s_2:normalMineItemUI;
		public var s_3:normalMineItemUI;
		public var s_7:normalMineItemUI;
		public var s_6:normalMineItemUI;
		public var s_5:normalMineItemUI;
		public var s_4:normalMineItemUI;

		override protected function createChildren():void {
			View.regComponent("MornUI.mineFight.superMineItemUI",superMineItemUI);
			View.regComponent("MornUI.mineFight.midMineItemUI",midMineItemUI);
			View.regComponent("MornUI.mineFight.normalMineItemUI",normalMineItemUI);
			super.createChildren();
			loadUI("mineFight/FiveStarArea");

		}

	}
}