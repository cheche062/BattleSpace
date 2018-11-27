/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightResults {
	import laya.ui.*;
	import laya.display.*; 
	

	public class RequirementCellUI extends View {
		public var rStar:Image;
		public var decLbl:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightResults/RequirementCell");

		}

	}
}