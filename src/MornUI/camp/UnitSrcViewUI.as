/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp {
	import laya.ui.*;
	import laya.display.*; 
	

	public class UnitSrcViewUI extends View {
		public var srcList:List;
		public var closeBtn:Button;
		public var tfTitle:Label;
		public var dom_nojump:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("camp/UnitSrcView");

		}

	}
}