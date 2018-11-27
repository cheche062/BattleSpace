/**Created by the LayaAirIDE,do not modify.*/
package MornUI.homeScenceView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.html.dom.HTMLDivElement;

	public class BuildProInfoUI extends View {
		public var hpTF:HTMLDivElement;
		public var attackTF:HTMLDivElement;
		public var defenseTF:HTMLDivElement;
		public var speedTF:HTMLDivElement;
		public var hitTF:HTMLDivElement;
		public var dodgeTF:HTMLDivElement;
		public var critTF:HTMLDivElement;
		public var critDamageTF:HTMLDivElement;
		public var resilienceTF:HTMLDivElement;
		public var critDamReductTF:HTMLDivElement;
		public var icon_0:Image;
		public var icon_2:Image;
		public var icon_1:Image;
		public var icon_3:Image;
		public var icon_5:Image;
		public var icon_6:Image;
		public var icon_7:Image;
		public var icon_8:Image;
		public var icon_4:Image;
		public var icon_9:Image;

		override protected function createChildren():void {
			View.regComponent("HTMLDivElement",HTMLDivElement);
			super.createChildren();
			loadUI("homeScenceView/BuildProInfo");

		}

	}
}