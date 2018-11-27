/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.camp.NewTeXingCellUI;

	public class NewTuPoAddTexingCellUI extends View {
		public var desLbl:Label;
		public var voCell:NewTeXingCellUI;

		override protected function createChildren():void {
			View.regComponent("MornUI.camp.NewTeXingCellUI",NewTeXingCellUI);
			super.createChildren();
			loadUI("camp/NewTuPoAddTexingCell");

		}

	}
}