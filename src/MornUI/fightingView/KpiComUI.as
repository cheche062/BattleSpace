/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class KpiComUI extends View {
		public var hKpiLB:Label;
		public var aKpiLb:Label;
		public var btnInfo:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingView/KpiCom");

		}

	}
}