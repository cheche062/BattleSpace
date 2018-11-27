/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp {
	import laya.ui.*;
	import laya.display.*; 
	

	public class NewUnitJuexingViewUI extends View {
		public var showBox:Box;
		public var xiangqiqnBox:Image;
		public var xqCellBox:Box;
		public var btn_updateall:Button;
		public var tupoBox:Image;
		public var tupoBtn:Button;
		public var tupoNeedBox:Box;
		public var dom_maxLevel:Label;
		public var juexingLvlLbl:Label;
		public var txList:List;
		public var fArea:Sprite;
		public var lArea:Sprite;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("camp/NewUnitJuexingView");

		}

	}
}