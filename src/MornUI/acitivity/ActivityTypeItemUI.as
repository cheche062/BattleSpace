/**Created by the LayaAirIDE,do not modify.*/
package MornUI.acitivity {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ActivityTypeItemUI extends View {
		public var actBtn:Button;
		public var actName:Text;
		public var tipsImg:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("acitivity/ActivityTypeItem");

		}

	}
}