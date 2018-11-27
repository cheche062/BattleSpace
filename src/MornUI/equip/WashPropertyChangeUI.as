/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equip {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class WashPropertyChangeUI extends View {
		public var PropertyTextg:Text;
		public var ArrowImage:Image;
		public var PropertyImage:Image;
		public var NowPropertyBat:ProgressBar;
		public var ChangeImage:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("equip/WashPropertyChange");

		}

	}
}