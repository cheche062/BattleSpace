/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	

	public class StoreListAllUI extends View {
		public var btn_close:Button;
		public var dom_content:Panel;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("guild/StoreListAll");

		}

	}
}