/**Created by the LayaAirIDE,do not modify.*/
package MornUI.componets {
	import laya.ui.*;
	import laya.display.*; 
	

	public class KpiUpUI extends View {
		public var kpiTF:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("componets/KpiUp");

		}

	}
}