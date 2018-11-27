/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equipFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class EquipFightSelectMyArmyViewUI extends View {
		public var tabSelLbl:Label;
		public var closeBtn:Button;
		public var unitTypeTab:Tab;
		public var m_list1:List;
		public var bbox:Box;
		public var wNumLbl:Label;
		public var fightBtn:Button;
		public var m_list2:List;
		public var zyLbl:Label;
		public var m_list3:List;
		public var mfLbl:Label;
		public var rBox:Box;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("equipFight/EquipFightSelectMyArmyView");

		}

	}
}