/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mineFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.mineFight.normalMineItemUI;
	import MornUI.mineFight.midMineItemUI;
	import MornUI.mineFight.superMineItemUI;

	public class ThreeStarAreaUI extends View {
		public var s_3:normalMineItemUI;
		public var s_1:normalMineItemUI;
		public var s_0:normalMineItemUI;
		public var s_2:normalMineItemUI;
		public var m_1:midMineItemUI;
		public var m_0:midMineItemUI;
		public var b_0:superMineItemUI;
		public var m_2:midMineItemUI;
		public var m_3:midMineItemUI;
		public var s_4:normalMineItemUI;
		public var s_5:normalMineItemUI;
		public var s_6:normalMineItemUI;
		public var s_7:normalMineItemUI;

		override protected function createChildren():void {
			View.regComponent("MornUI.mineFight.normalMineItemUI",normalMineItemUI);
			View.regComponent("MornUI.mineFight.midMineItemUI",midMineItemUI);
			View.regComponent("MornUI.mineFight.superMineItemUI",superMineItemUI);
			super.createChildren();
			loadUI("mineFight/ThreeStarArea");

		}

	}
}