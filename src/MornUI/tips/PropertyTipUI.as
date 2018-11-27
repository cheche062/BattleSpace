/**Created by the LayaAirIDE,do not modify.*/
package MornUI.tips {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.html.dom.HTMLDivElement;

	public class PropertyTipUI extends View {
		public var bg:Image;
		public var icon:Image;
		public var nameTF:HTMLDivElement;
		public var introTF:HTMLDivElement;

		override protected function createChildren():void {
			View.regComponent("HTMLDivElement",HTMLDivElement);
			super.createChildren();
			loadUI("tips/PropertyTip");

		}

	}
}