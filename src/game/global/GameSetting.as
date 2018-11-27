package game.global
{
	import game.common.AndroidPlatform;
	import game.common.ResourceManager;
	import game.global.util.TraceUtils;
	import game.net.socket.WebSocketNetService;
	
	import laya.net.LocalStorage;
	import laya.utils.Browser;
	import laya.utils.Handler;

	////////////////////////////////////////////////////////////////////////////
	//// 
	//// 游戏全局配置
	////
	////////////////////////////////////////////////////////////////////////////
	public class GameSetting
	{
		//游戏uid
		public static var Login_UID:String="5901418";
		//平台新用户
		//平台类型  guest，gamecenter，facebook，mutantbox
		public static var LoginType:String="gamecenter";
		//游戏sdk传入的token=页游也用这个
		public static var Login_Token:String="96a3d1daf3b49735ed031c929c98d163";
		//设备唯一id
		public static var Login_UDID:String="81BC19A8-B49B-47CC-BEFE-193E723B521A";
		//初始登录的名字
		public static var Login_UserName:String="";
		
		public static var UserBindType:String="";
		
		public static var TimeZone:String="";
			
		public static var FCM_Token:String = "";
		
		/**
		 *当前用户绑定的平台数据
		 */		
		public static var UserBanding:Array=[];
		
		//是否是正式版-
		//如果真是版本，不显示登录,只在web端有效
		public static var IsRelease:Boolean=false;
		/**
		 * 是否使用新手引导 
		 */
		public static var UseGuide:Boolean=false;
		
		public static var App_Version:String="1.0.0";
		
		public static var isLogin:Boolean=false;
		
		public static var ServerId:String="18420002";
		/**游戏ID*/
		public static var gameId:String = "";
		/**游戏登录ID*/
		public static var openId:String = "";
		
		/**游戏版本号*/
		public static var Version:String = "20181127";
		/**tag，平台分需要*/
		public static var tag:String = "";
		/**时间戳*/
		public static var Time:String;
		/***/
		public static var loginIp:String="";

		/**
		 * 游戏配置json 
		 */		
		public static var GameResource_URL:String = "appRes/GameResource.json";
		/**
		 * 未打包图片路径 
		 */		
		public static var UNPACK_RES_ROOT:String = "unpackUI/";
		
		/**
		 * 是否facebook平台
		 */
		public static var isFackBook:Boolean=false;
		
		
		/**
		 * 平台 
		 */		
		public static var Platform:String="facebook";
		
		/**常量-Plantform-FB*/
		public static var P_FB:String = "facebook";
		/**常量-Plantform-官网*/
		public static var P_GW:String = "gw"
		
			
		public static function get lang():String{
			return LocalStorage.getItem("lang");
		}
		
		public static function set lang(v:String):void{
			LocalStorage.setItem("lang", v);
		}
		
		public static function getAppLan():void{
//			var lan:String = GameSetting.lang;
//			if(!lan){
			AndroidPlatform.instance.FGM_GetLan(Handler.create(null,onGetAppLan));
//			}
		}
		
		public static function getPCLan():void{
			var lan = AndroidPlatform.instance.language;
			if (lanDic[lan]) {
				GameSetting.lang = lanDic[lan];
			}
		}
		
		private static function checkLangRight(lang):Boolean {
			for (var key in lanDic) {
				if (lanDic[key] == lang) return true;
			}
			return false;
		}
		
		//APP-web映射表
		private static var lanDic:Object = {en:"en-us", es:"es-es",de:"de-de", fr:"fr-fr",pt:"pt-pt"};
		private static function onGetAppLan(p_str:String):void
		{
			TraceUtils.log("onGetAppLanxxxx:")
			TraceUtils.log(p_str);
			/*英文	en	en-us
			中文	zh	中文
			西班牙	es	es-es
			德语	de	de-de
			法语	fr	fr-fr
			葡萄牙语	pt	pt-pt
			捷克语	cs	cs-cs
			意大利语	it	it-it
			匈牙利语	hu	hu-hu
			罗马尼亚语	ro	ro-ro
			阿拉伯语	ar	ar-ar
			希腊语	el	el-el
			土耳其语	tr	tr-tr
			波兰语	pl	pl-pl*/

			var val:String = (lanDic[p_str] || "en-us");
			GameSetting.lang = val;
		}
		
		/**
		 * 当前系统的语言类型
		 * */
		/*public function get language():String
		{
			var type:String = Browser.window.navigator.appName;
			var lang:String;
			if (type=="Netscape"){
				lang = Browser.window.navigator.language;
			}
			else{
				lang = Browser.window.navigator.userLanguage
			}
			//取得浏览器语言的前两个字母
			lang = lang.substr(0,2)
			return lang;
		}*/
		/**
		 * 刷新游戏
		 * 
		 */		
		public static function reloadGame():void
		{
			if(GameSetting.IsRelease){
				__JS__("refreshWin()");
			}else{
				Browser.window.location.reload();
			}
		}
		
		/**是否为app端*/
		public static function get isApp():Boolean {
			return Browser.window['conch'] != null;
		}
		
		/**获取来源设备*/
		public static function getLaiyuanShebei():String {
			var str:String = "";
			if( GameSetting.isApp )
			{
				if( Browser.onIOS )
				{
					str = "ios";
				}
				else 
				{
					str = "android";
				}
			}
			if(GameSetting.Platform==GameSetting.P_GW)
			{
				str = "gw";
			}
			if(GameSetting.Platform==GameSetting.P_FB)
			{
				str = "fb";
			}
			
			return str;
		}
		
		/**是否为iPhoneX,根据特殊分辨率判断2436， 1125*/
		public static function get isIPhoneX():Boolean{
			return Browser.width == 2436 && Browser.height == 1125;
		}
		
		/**是否是pc*/
		public static function isPc():Boolean {
			var userAgentInfo = Browser.window.navigator.userAgent;    
			var Agents = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod");    
			var flag = true;    
			for (var v = 0; v < Agents.length; v++) {    
				if (userAgentInfo.indexOf(Agents[v]) > 0) { flag = false; break; }    
			}
			return flag;  
		}
		
		/**是否是正式sn服务   用来判断是否上报正式的埋点数据*/
		public static function isZhengshiSNserver():Boolean {
			var list:Array = ResourceManager.instance.getResByURL("staticConfig/servList.json");
			
			if(GameSetting.isApp){
				//当切换qa,s0服CDN时候，自动选择qa配置
				var str:String = "";
				if(Browser.window['conch'] && Browser.window['conch']['presetUrl']){
					str = Browser.window['conch']['presetUrl']+"";
					
					// 以防漏掉
				} else {
					return true;
				}
				var key:String = "sn";
				if(str.indexOf("qa") != -1){
					key = "qa"
				}else if(str.indexOf("s0") != -1){
					key = "s0"
				}else if(str.indexOf("10.8") != -1){//连局域网
					key = "test";
				}
				
				return key == "sn";
				
				//正式的web
			} else if (GameSetting.IsRelease){
				if (list) {
					return WebSocketNetService.instance.SOCKET_HOST == list[0][0];
				} else {
					return true;
				}
			}
			
			return false;
		}
	}
}