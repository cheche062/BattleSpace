/**Created by the LayaAirIDE,do not modify.*/
package MornUI.train {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TrainingItemUI extends View {
		public var icon:Image;
		public var numTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("train/TrainingItem");

		}

	}
}