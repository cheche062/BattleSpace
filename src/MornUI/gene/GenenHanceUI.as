/**Created by the LayaAirIDE,do not modify.*/
package MornUI.gene {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GenenHanceUI extends View {
		public var leftBg:Image;
		public var enhanceBtn:Button;
		public var bagBox:Box;
		public var itemList:List;
		public var geneBg:Image;
		public var icon:Image;
		public var lvTF_0:Text;
		public var p_0:Image;
		public var vTF_0:Text;
		public var vTF_0_1:Text;
		public var a_0:Image;
		public var lvTF_1:Text;
		public var titleTF:Text;
		public var closeBtn:Button;
		public var preBar:Image;
		public var expBar:Image;
		public var backBtn:Button;
		public var btnIcon:Image;
		public var expTF:Text;
		public var nameTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("gene/GenenHance");

		}

	}
}