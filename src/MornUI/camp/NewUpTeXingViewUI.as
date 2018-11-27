/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp {
	import laya.ui.*;
	import laya.display.*; 
	

	public class NewUpTeXingViewUI extends View {
		public var closeBtn:Button;
		public var lvDesLbl:Label;
		public var nextDesLbl:Label;
		public var posImg:Image;
		public var dom_title:Image;
		public var dom_unabled:Label;
		public var dom_bottom_box:Box;
		public var btnBox1:Box;
		public var btn1:Button;
		public var btnBox2:Box;
		public var btn2:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("camp/NewUpTeXingView");

		}

	}
}