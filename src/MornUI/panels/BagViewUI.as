/**Created by the LayaAirIDE,do not modify.*/
package MornUI.panels {
	import laya.ui.*;
	import laya.display.*; 
	

	public class BagViewUI extends View {
		public var bg:Image;
		public var mainBox:Box;
		public var light:Image;
		public var sellBtn:Button;
		public var itemDesBox:Box;
		public var itemNameLbl:Label;
		public var dom_info:Label;
		public var useBtn:Button;
		public var sortingBtn:Button;
		public var c_pos:Image;
		public var m_list:List;
		public var itemPi:Image;
		public var bar:Box;
		public var barBg:Image;
		public var closeBtn:Button;
		public var titlTF:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("panels/BagView");

		}

	}
}