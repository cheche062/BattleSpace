/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mainView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MainViewUI extends View {
		public var rightDownBox:Box;
		public var otherBtn:Button;
		public var searchPrice:Text;
		public var searchLabel:Text;
		public var searchIcon:Image;
		public var backBtn:Button;
		public var copyBtn:Button;
		public var armyGroupBtn:Button;
		public var imgArmyGroup:Image;
		public var warLabel:Text;
		public var lb_boss_time:Label;
		public var cacheBox:Box;
		public var leftUpBox:Box;
		public var topBar:Box;
		public var goldBar:ProgressBar;
		public var goldTF:Label;
		public var goldIcon:Image;
		public var steelBar:ProgressBar;
		public var steelTF:Label;
		public var steelIcon:Image;
		public var stoneBar:ProgressBar;
		public var stoneTF:Label;
		public var stoneIcon:Image;
		public var foodBar:ProgressBar;
		public var foodTF:Label;
		public var foodIcon:Image;
		public var breadBar:ProgressBar;
		public var breadTF:Label;
		public var breadIcon:Image;
		public var waterIcon:Sprite;
		public var chargeBtn:Button;
		public var waterTF:Label;
		public var timeTF:Label;
		public var expIcon:Button;
		public var nameTF:Label;
		public var lvTF:Label;
		public var expBar:ProgressBar;
		public var boxVip:Box;
		public var bmVip:Image;
		public var tfVip:Label;
		public var vipRedTip:Image;
		public var KPITF:Label;
		public var leftMidBox:Box;
		public var taskBtn:Button;
		public var missionTips:Image;
		public var btn_more:Button;
		public var dom_chat_preview:Box;
		public var dom_chat_bg:Image;
		public var dom_chat_content:VBox;
		public var dom_chatNew:Button;
		public var guildHelpBtn:Button;
		public var rightMidBox:Box;
		public var buildArea:Box;
		public var box0:Box;
		public var noBuild0:Image;
		public var canBuild0:Image;
		public var buildImg0:Image;
		public var aniPos0:Image;
		public var box1:Box;
		public var noBuild1:Image;
		public var canBuild1:Image;
		public var buildImg1:Image;
		public var aniPos1:Image;
		public var hideBuildBtn:Button;
		public var openBuildBtn:Button;
		public var red0:Image;
		public var green0:Image;
		public var red1:Image;
		public var green1:Image;
		public var leftDownBox:Box;
		public var packBtn:Button;
		public var constructBtn:Button;
		public var redot:Image;
		public var missionArea:Box;
		public var missionDes:Box;
		public var missionDesTF:TextArea;
		public var goBtn:Button;
		public var hideMissionBtn:Button;
		public var openMissionBtn:Button;
		public var missionTitle:Label;
		public var dom_more_box:Box;
		public var dom_more_bg:Label;
		public var btn_close:Button;
		public var MailBtn:Button;
		public var MainChatImage:Image;
		public var settingBtn:Button;
		public var btn_exchange:Button;
		public var helpBtn:Button;
		public var btn_account:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("mainView/MainView");

		}

	}
}