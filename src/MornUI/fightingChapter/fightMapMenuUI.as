/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingChapter {
	import laya.ui.*;
	import laya.display.*; 
	

	public class fightMapMenuUI extends View {
		public var tab1:Tab;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingChapter/fightMapMenu");

		}

	}
}