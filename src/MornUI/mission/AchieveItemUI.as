/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mission {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class AchieveItemUI extends View {
		public var achieveNameTF:Text;
		public var progessTF:Text;
		public var finishTF:Text;
		public var getBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("mission/AchieveItem");

		}

	}
}