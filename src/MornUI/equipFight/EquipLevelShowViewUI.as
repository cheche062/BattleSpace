/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equipFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class EquipLevelShowViewUI extends View {
		public var closeBtn:Button;
		public var fName:Label;
		public var ackBtn:Button;
		public var rBox:Box;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("equipFight/EquipLevelShowView");

		}

	}
}