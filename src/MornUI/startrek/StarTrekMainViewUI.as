/**Created by the LayaAirIDE,do not modify.*/
package MornUI.startrek {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class StarTrekMainViewUI extends View {
		public var mBg:Image;
		public var menuBox:Box;
		public var leftBar:Box;
		public var leftBarBg:Image;
		public var resetBtn:Button;
		public var costIcon:Image;
		public var costTxt:Text;
		public var freeTxt:Text;
		public var buff0:Box;
		public var buff0Icon:Image;
		public var buff1:Box;
		public var buff1Icon:Image;
		public var buff2:Box;
		public var buff2Icon:Image;
		public var buff3:Box;
		public var buff3Icon:Image;
		public var buff4:Box;
		public var buff4Icon:Image;
		public var rightBar:Box;
		public var rightBarBg:Image;
		public var bagBtn:Button;
		public var finalBtn:Button;
		public var finalImgClose:Image;
		public var finalImgOpen:Image;
		public var btnAwake:Button;
		public var topBar:Box;
		public var topBarBg:Image;
		public var infoBtn:Button;
		public var closeBtn:Button;
		public var infoBox:Box;
		public var waterTxt:Text;
		public var foodTxt:Text;
		public var waterIcon:Image;
		public var foodIcon:Image;
		public var bottomBar:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("startrek/StarTrekMainView");

		}

	}
}