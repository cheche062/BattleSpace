/**Created by the LayaAirIDE,do not modify.*/
package MornUI.tips {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GeneTipUI extends View {
		public var bg:Image;
		public var bg1:Image;
		public var nameTF:Text;
		public var iconBg:Image;
		public var icon:Image;
		public var lvTF:Text;
		public var proBG:Image;
		public var p0:Image;
		public var p1:Image;
		public var p2:Image;
		public var valueTF_0:Text;
		public var valueTF_1:Text;
		public var valueTF_2:Text;
		public var suit2Box:Box;
		public var suitBG0:Image;
		public var sicon_0:Image;
		public var suitLabel0:Text;
		public var svTF_0:Text;
		public var suit3Box:Box;
		public var suitBG01:Image;
		public var sicon_01:Image;
		public var suitLabel1:Text;
		public var svTF_01:Text;
		public var btnBox:Box;
		public var priceIcon:Image;
		public var priceTf:Text;
		public var btn_0:Button;
		public var labelTF:Text;
		public var btn_1:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("tips/GeneTip");

		}

	}
}