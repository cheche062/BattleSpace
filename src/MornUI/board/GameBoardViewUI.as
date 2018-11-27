/**Created by the LayaAirIDE,do not modify.*/
package MornUI.board {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GameBoardViewUI extends View {
		public var type1:Box;
		public var type1Bg:Image;
		public var boardBorder:Image;
		public var jumpBtn:Button;
		public var titleTxt:Text;
		public var contentTxt:Text;
		public var btn_close:Button;
		public var dom_checkbox:CheckBox;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("board/GameBoardView");

		}

	}
}