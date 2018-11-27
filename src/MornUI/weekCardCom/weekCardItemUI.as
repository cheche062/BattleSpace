/**Created by the LayaAirIDE,do not modify.*/
package MornUI.weekCardCom {
	import laya.ui.*;
	import laya.display.*; 
	

	public class weekCardItemUI extends View {
		public var imgBg:Image;
		public var btnGet:Button;
		public var hbox_icons:HBox;
		public var lbTitle:Label;
		public var lbClaimed:Label;
		public var imgHaveGot:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("weekCardCom/weekCardItem");

		}

	}
}