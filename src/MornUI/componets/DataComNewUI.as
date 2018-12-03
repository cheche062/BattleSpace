/**Created by the LayaAirIDE,do not modify.*/
package MornUI.componets {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.html.dom.HTMLDivElement;

	public class DataComNewUI extends View {
		public var listAttr:List;
		public var btnLeft:Button;
		public var btnRight:Button;

		override protected function createChildren():void {
			View.regComponent("HTMLDivElement",HTMLDivElement);
			super.createChildren();
			loadUI("componets/DataComNew");

		}

	}
}