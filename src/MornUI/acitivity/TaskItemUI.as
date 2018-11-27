/**Created by the LayaAirIDE,do not modify.*/
package MornUI.acitivity {
	import laya.ui.*;
	import laya.display.*; 
	

	public class TaskItemUI extends View {
		public var dom_bg:Image;
		public var dom_title:Label;
		public var dom_content:Label;
		public var btn_get:Button;
		public var dom_icon:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("acitivity/TaskItem");

		}

	}
}