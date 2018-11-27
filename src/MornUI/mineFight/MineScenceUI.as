/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mineFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MineScenceUI extends View {
		public var mineBg:Image;
		public var backBtn:Button;
		public var closeBtn:Button;
		public var titleTF:Label;
		public var num0TF:Label;
		public var num1TF:Label;
		public var s0:Image;
		public var s1:Image;
		public var s2:Image;
		public var s3:Image;
		public var s4:Image;
		public var deployArea:Box;
		public var deployBtn:Button;
		public var pTips:Image;
		public var dPowerTF:Text;
		public var remTimeArea:Box;
		public var rtTF:Label;
		public var attTF:Label;
		public var addTimesBtn:Button;
		public var reciveArea:Sprite;
		public var recieveBtn:Button;
		public var cumTF:Label;
		public var num2TF:Label;
		public var dunBg:Image;
		public var buyDefenceBtn:Button;
		public var dunImg:Image;
		public var defenTimeTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("mineFight/MineScence");

		}

	}
}