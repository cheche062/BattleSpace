/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equipFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class EquipFightSuppliesViewUI extends View {
		public var addBtn:Button;
		public var closeBtn:Button;
		public var m_list:List;
		public var dbImg:Image;
		public var wNumLbl:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("equipFight/EquipFightSuppliesView");

		}

	}
}