/**Created by the LayaAirIDE,do not modify.*/
package MornUI.kapai {
	import laya.ui.*;
	import laya.display.*; 
	

	public class KapaiMainViewUI extends View {
		public var dom_viewStack:ViewStack;
		public var dom_tab:Tab;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("kapai/KapaiMainView");

		}

	}
}