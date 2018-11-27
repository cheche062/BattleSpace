/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	

	public class PersonalKejiItemUI extends View {
		public var dom_icon:Image;
		public var dom_name:Label;
		public var dom_level:Label;
		public var dom_current:Label;
		public var dom_viewstack:ViewStack;
		public var dom_daoju:Image;
		public var dom_num:Label;
		public var btn_up:Button;
		public var dom_limit:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("guild/PersonalKejiItem");

		}

	}
}