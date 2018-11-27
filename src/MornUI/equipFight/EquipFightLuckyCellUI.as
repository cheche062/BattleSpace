/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equipFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class EquipFightLuckyCellUI extends View {
		public var bgImg:Image;
		public var pzImg:Image;
		public var menBox:Box;
		public var tImg:Image;
		public var bImg:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("equipFight/EquipFightLuckyCell");

		}

	}
}