/**Created by the LayaAirIDE,do not modify.*/
package MornUI.buildHelp {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class BuildHelpViewUI extends View {
		public var restTimeProg:ProgressBar;
		public var helpTimeProg:ProgressBar;
		public var buildName:Text;
		public var closeBtn:Button;
		public var infoBtn:Button;
		public var todayProg:ProgressBar;
		public var restTimeTxt:Text;
		public var helpTimeTxt:Text;
		public var todayTxt:Text;
		public var helpList:List;
		public var noBuild:Text;
		public var addMotion:Box;
		public var addNum:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("buildHelp/BuildHelpView");

		}

	}
}