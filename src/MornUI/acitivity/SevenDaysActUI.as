/**Created by the LayaAirIDE,do not modify.*/
package MornUI.acitivity {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class SevenDaysActUI extends View {
		public var btnArea:Box;
		public var btn_0:Button;
		public var btn_1:Button;
		public var btn_2:Button;
		public var btn_3:Button;
		public var btn_4:Button;
		public var btn_5:Button;
		public var btn_6:Button;
		public var day_0:Text;
		public var day_1:Text;
		public var day_2:Text;
		public var day_3:Text;
		public var day_4:Text;
		public var day_5:Text;
		public var day_6:Text;
		public var targetList:List;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("acitivity/SevenDaysAct");

		}

	}
}