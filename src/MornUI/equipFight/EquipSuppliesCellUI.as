/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equipFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class EquipSuppliesCellUI extends View {
		public var nameLbl:Label;
		public var xgNumLbl:Label;
		public var buyBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("equipFight/EquipSuppliesCell");

		}

	}
}