/**Created by the LayaAirIDE,do not modify.*/
package MornUI.login {
	import laya.ui.*;
	import laya.display.*; 
	

	public class SceneLoadingUI extends View {
		public var mcProcess:ProgressBar;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("login/SceneLoading");

		}

	}
}