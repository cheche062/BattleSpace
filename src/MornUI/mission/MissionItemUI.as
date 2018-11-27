/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mission {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MissionItemUI extends View {
		public var mainBg:Image;
		public var normailBg:Image;
		public var nameTF:Text;
		public var desTF:Text;
		public var dom_claimed:Text;
		public var goBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("mission/MissionItem");

		}

	}
}