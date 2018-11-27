/**Created by the LayaAirIDE,do not modify.*/
package MornUI.chests {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ChestPropertyComUI extends View {
		public var icon_0:Image;
		public var icon_1:Image;
		public var icon_2:Image;
		public var icon_3:Image;
		public var icon_5:Image;
		public var icon_6:Image;
		public var icon_7:Image;
		public var icon_8:Image;
		public var icon_4:Image;
		public var icon_9:Image;
		public var hpTF:Text;
		public var attackTF:Text;
		public var defenseTF:Text;
		public var speedTF:Text;
		public var hitTF:Text;
		public var dodgeTF:Text;
		public var critTF:Text;
		public var critDamageTF:Text;
		public var resilienceTF:Text;
		public var critDamReductTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("chests/ChestPropertyCom");

		}

	}
}