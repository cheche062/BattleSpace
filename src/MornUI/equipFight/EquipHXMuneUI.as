/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equipFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class EquipHXMuneUI extends View {
		public var storeBtn:Button;
		public var bagBtn:Button;
		public var cNameLbl:Label;
		public var endBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("equipFight/EquipHXMune");

		}

	}
}