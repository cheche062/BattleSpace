/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	

	public class TechnologyUI extends View {
		public var pan:Panel;
		public var btnCommond:Button;
		public var bom:Box;
		public var btn_info:Button;
		public var num1:Label;
		public var num2:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("guild/Technology");

		}

	}
}