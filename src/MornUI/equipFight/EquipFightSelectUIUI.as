/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equipFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class EquipFightSelectUIUI extends View {
		public var listBgImg:Image;
		public var _list:List;
		public var heroName:Label;
		public var btnsBg:Box;
		public var _leftBtn:Button;
		public var _rightBtn:Button;
		public var _selectBtn:Button;
		public var heroFace:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("equipFight/EquipFightSelectUI");

		}

	}
}