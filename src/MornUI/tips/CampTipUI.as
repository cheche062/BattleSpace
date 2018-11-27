/**Created by the LayaAirIDE,do not modify.*/
package MornUI.tips {
	import laya.ui.*;
	import laya.display.*; 
	

	public class CampTipUI extends View {
		public var btnClose:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("tips/CampTip");

		}

	}
}