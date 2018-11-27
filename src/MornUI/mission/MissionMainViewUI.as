/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mission {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MissionMainViewUI extends View {
		public var closeBtn:Button;
		public var titleTF:Text;
		public var missionBtn:Button;
		public var achieveBtn:Button;
		public var challengeBtn:Button;
		public var missionList:List;
		public var achieveList:List;
		public var mTip:Box;
		public var mNumTF:Text;
		public var aTip:Box;
		public var aNumTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("mission/MissionMainView");

		}

	}
}