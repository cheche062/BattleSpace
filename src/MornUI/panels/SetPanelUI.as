/**Created by the LayaAirIDE,do not modify.*/
package MornUI.panels {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class SetPanelUI extends View {
		public var tab1:Tab;
		public var MailIconBtn:Button;
		public var CharIconBtn:Button;
		public var FriendIconBtn:Button;
		public var tabBox:Box;
		public var box4:Box;
		public var backBtn:Button;
		public var list01:List;
		public var box1:Box;
		public var selLangfBtn:Button;
		public var mkgBg:Image;
		public var mkgImg:Image;
		public var skgBg:Image;
		public var skgImg:Image;
		public var helpBtn:Button;
		public var box2:Box;
		public var BindBtn:Button;
		public var ChangeBtn:Button;
		public var SwitchBox:Box;
		public var FaceBookBtn:Button;
		public var MutantboxBtn:Button;
		public var GameCenterBtn:Button;
		public var GameImage:Image;
		public var GuestBtn:Button;
		public var BindBox:Box;
		public var BindFaceBookBtn:Button;
		public var FacebookGouImage:Image;
		public var BindGoogleBtn:Button;
		public var GoogleGouImage:Image;
		public var GoogleImage:Image;
		public var BindMutantboxBtn:Button;
		public var MutanBoxGouImage:Image;
		public var LastLoginText:Text;
		public var box3:Box;
		public var exchangeBtn:Button;
		public var inputTxt:TextInput;
		public var closeBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("panels/SetPanel");

		}

	}
}