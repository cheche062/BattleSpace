/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp.talent {
	import laya.ui.*;
	import laya.display.*; 
	

	public class UnitTalentItemUI extends View {
		public var levelTxt:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("camp/talent/UnitTalentItem");

		}

	}
}