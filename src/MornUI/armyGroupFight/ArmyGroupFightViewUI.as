/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroupFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ArmyGroupFightViewUI extends View {
		public var armyBox:Box;
		public var bar:Box;
		public var infoBtn:Button;
		public var attTF:Label;
		public var denTF:Label;
		public var homeIcon:Image;
		public var awayIcon:Image;
		public var hNameTF:Label;
		public var aNameTF:Label;
		public var closeBtn:Button;
		public var helpBtn:Button;
		public var bottomBox:Box;
		public var bgBottom:Image;
		public var teamBox:Box;
		public var timeBg:Image;
		public var timeLabel:Label;
		public var timeTF:Label;
		public var teamsList:List;
		public var apLabel:Label;
		public var addBtn:Button;
		public var escapeBtn:Button;
		public var autoBtn:Button;
		public var msgBox:Box;
		public var chatBtn:Button;
		public var rightInfoBox:Box;
		public var foodIcon:Image;
		public var foodTF:Label;
		public var killBtn:Button;
		public var killNum:Label;
		public var setFoodBtn:Button;
		public var joinBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroupFight/ArmyGroupFightView");

		}

	}
}