/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class NewUnitInfoViewUI extends View {
		public var selectUnitBox:Box;
		public var camp:Image;
		public var unitFace:Image;
		public var selectUnitTopBox:Box;
		public var attackIcon:Image;
		public var attackTF:Text;
		public var defendIcon:Image;
		public var defendTF:Text;
		public var lvBox:Box;
		public var levelTF:Text;
		public var psBox:Image;
		public var powerBox:Image;
		public var powerTF:Text;
		public var dom_newInfo_box:Box;
		public var dom_text:Text;
		public var btn_mine:Button;
		public var boxAttr:Box;
		public var unitListBox:Box;
		public var unitList:List;
		public var typeListBox:Box;
		public var typeListCCBox:Box;
		public var typeListBg:Image;
		public var selBtn:Button;
		public var tabListBox:Box;
		public var topBox:Box;
		public var topLeftBox:Box;
		public var helpBtn:Button;
		public var topRigthBox:Box;
		public var closeBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("camp/NewUnitInfoView");

		}

	}
}