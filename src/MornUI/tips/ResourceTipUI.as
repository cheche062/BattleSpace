/**Created by the LayaAirIDE,do not modify.*/
package MornUI.tips {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.html.dom.HTMLDivElement;

	public class ResourceTipUI extends View {
		public var icon:Image;
		public var nameTF:Label;
		public var infoTF:Label;
		public var maxTF:Label;
		public var lineIMG:Image;
		public var outHDE:HTMLDivElement;

		override protected function createChildren():void {
			View.regComponent("HTMLDivElement",HTMLDivElement);
			super.createChildren();
			loadUI("tips/ResourceTip");

		}

	}
}