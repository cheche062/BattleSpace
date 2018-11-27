/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ArmyNpcHeadUI extends View {
		public var headImg:Image;
		public var lightImg:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroup/ArmyNpcHead");

		}

	}
}