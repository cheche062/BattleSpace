/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp {
	import laya.ui.*;
	import laya.display.*; 
	

	public class NewJuXingXQViewUI extends View {
		public var rigthBox:Box;
		public var itemBox:Box;
		public var nameLbl:Label;
		public var shuxingLbl:Label;
		public var levelErrorLbl:Label;
		public var equipBtn:Button;
		public var numBox:Box;
		public var numLbl:Label;
		public var numBox2:Box;
		public var numLbl2:Label;
		public var laiyuanList:List;
		public var closeBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("camp/NewJuXingXQView");

		}

	}
}