/**Created by the LayaAirIDE,do not modify.*/
package MornUI.commonGuide {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class HQUpgradeViewUI extends View {
		public var lvInfo:Box;
		public var oBLV:Text;
		public var nowBLv:Text;
		public var oFNum:Text;
		public var nFNum:Text;
		public var buildInfo:Box;
		public var HQinfo:Text;
		public var closeBtn:Button;
		public var shareBtn:Button;
		public var gouImg:Image;
		public var conBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("commonGuide/HQUpgradeView");

		}

	}
}