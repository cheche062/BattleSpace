/**Created by the LayaAirIDE,do not modify.*/
package MornUI.newPaTa {
	import laya.ui.*;
	import laya.display.*; 
	

	public class PreItemUI extends View {
		public var icon:Image;
		public var txt:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("newPaTa/PreItem");

		}

	}
}