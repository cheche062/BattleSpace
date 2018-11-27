/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class CampViewUI extends View {
		public var bg:Image;
		public var bar:Box;
		public var barBg:Image;
		public var closeBtn:Button;
		public var infoBtn:Button;
		public var content:Box;
		public var dom_list:List;
		public var btn_0:Button;
		public var btn_1:Button;
		public var btn_2:Button;
		public var btn_3:Button;
		public var btn_4:Button;
		public var typeTab:Tab;
		public var titlTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("camp/CampView");

		}

	}
}