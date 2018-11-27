/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ArmyGroupChatItemUI extends View {
		public var otWord:Box;
		public var otBg:Image;
		public var otNameTxt:Text;
		public var otGroupTxt:Text;
		public var otMsgTxt:Text;
		public var otTimeTxt:Text;
		public var myWord:Box;
		public var myBg:Image;
		public var myNameTxt:Text;
		public var myGroupTxt:Text;
		public var myMsgTxt:Text;
		public var myTimeTxt:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/ArmyGroupChatItem");

		}

	}
}