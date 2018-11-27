/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp {
	import laya.ui.*;
	import laya.display.*; 
	

	public class NewTeXingCellUI extends View {
		public var btn:Button;
		public var iconImg:Image;
		public var lockIcon:Image;
		public var lvBg:Image;
		public var lvLbl:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("camp/NewTeXingCell");

		}

	}
}