/**Created by the LayaAirIDE,do not modify.*/
package MornUI.invasion {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class InvasionMenuUI extends View {
		public var rightBox:Box;
		public var quitBtn:Button;
		public var leftDownBox:Box;
		public var label:Text;
		public var icon_0:Image;
		public var icon_1:Image;
		public var mNumTF_0:Text;
		public var mNumTF_1:Text;
		public var goldTF:Text;
		public var steelTF:Text;
		public var foodTF:Text;
		public var stoneTF:Text;
		public var breadTF:Text;
		public var upCenterBox:Box;
		public var nameTF:Text;
		public var lvTF:Text;
		public var powerTF:Text;
		public var cupTF:Text;
		public var timeTF:Text;
		public var rankIcon:Image;
		public var midDownBox:Box;
		public var attackBtn:Button;
		public var rightDownBox:Box;
		public var changeBtn:Button;
		public var priceTF:Text;
		public var changeIcon:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("invasion/InvasionMenu");

		}

	}
}