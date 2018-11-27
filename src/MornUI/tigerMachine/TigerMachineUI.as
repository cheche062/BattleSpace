/**Created by the LayaAirIDE,do not modify.*/
package MornUI.tigerMachine {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TigerMachineUI extends View {
		public var btn_r:Button;
		public var btn_i:Button;
		public var btn_start:Button;
		public var itemBox:Box;
		public var i1:Box;
		public var i2:Box;
		public var i3:Box;
		public var i4:Box;
		public var i5:Box;
		public var leftTime:Label;
		public var numTf:Text;
		public var itemIcon:Image;
		public var points:Label;
		public var forcast:Label;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("tigerMachine/TigerMachine");

		}

	}
}