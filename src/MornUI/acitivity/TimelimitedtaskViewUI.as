/**Created by the LayaAirIDE,do not modify.*/
package MornUI.acitivity {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.acitivity.TaskItemUI;

	public class TimelimitedtaskViewUI extends View {
		public var dom_time:Label;
		public var dom_list:List;

		override protected function createChildren():void {
			View.regComponent("MornUI.acitivity.TaskItemUI",TaskItemUI);
			super.createChildren();
			loadUI("acitivity/TimelimitedtaskView");

		}

	}
}