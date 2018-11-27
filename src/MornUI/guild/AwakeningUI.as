/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class AwakeningUI extends View {
		public var title:Label;
		public var context:Label;
		public var pro:ProgressBar;
		public var lv:Label;
		public var nextLv:Label;
		public var btn1:Button;
		public var btn2:Button;
		public var p1:Image;
		public var num1:Label;
		public var p2:Image;
		public var num2:Label;
		public var p3:Image;
		public var num3:Label;
		public var p4:Image;
		public var num4:Label;
		public var btnClose:Button;
		public var icon:Image;
		public var tipBox:Box;
		public var tip:Label;
		public var remain:Label;
		public var bomBox:Box;
		public var leftTime:Label;
		public var exp:Label;
		public var itemIcon1:Image;
		public var numTF1:Text;
		public var itemIcon2:Image;
		public var numTF2:Text;
		public var curLv:Label;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/Awakening");

		}

	}
}