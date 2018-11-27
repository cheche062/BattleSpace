package game.common
{
	import game.global.GameSetting;
	import game.global.util.TraceUtils;
	import game.global.vo.User;
	import game.module.login.PreLoadingView;
	
	import laya.runtime.IPlatform;
	import laya.runtime.IPlatformClass;
	import laya.utils.Browser;
	import laya.utils.Handler;
	
	public class AndroidPlatform
	{
		private static var _instance:AndroidPlatform;
		public static function get instance():AndroidPlatform{
			if(_instance)return _instance;
			_instance = new AndroidPlatform;
			
			return _instance;
		}
		
		private var m_platformClass:IPlatformClass;//平台静态类
		private var m_patform:IPlatform;//平台对象
		public function AndroidPlatform()
		{
			if(Laya.PlatformClass){
				TraceUtils.log("Laya.PlatformClass--------------------------------AndroidPlatform")
				if(Browser.onIOS){
					m_platformClass = Laya.PlatformClass.createClass("FGMPlatform");
					m_patform=m_platformClass.newObject();
				}else if(Browser.onAndriod){
					m_platformClass = Laya.PlatformClass.createClass("layaair.game.Market.FGMPlatform");
				}
			}
		}
		
		public function FGM_GetUDID(_callBack:Handler):void{
			if(m_platformClass==null &&m_patform==null)
			{
				return;
			}
			//trace.trace("FGM_GetUDID----->FGMPlatform="+m_platformClass);
			function callBack(str:String):void
			{
				_callBack.runWith(str);
			}
			if(Browser.onIOS){
				m_patform.callWithBack(callBack,"FGM_GetUDID");
			}else if(Browser.onAndriod){
				m_platformClass.callWithBack(callBack,"FGM_GetUDID");
			}
		}
		
		/**
		 * 获取fcmToken
		 * @param _callBack
		 */
		public function FGM_GetFCMToken(_callBack:Handler=null):void{
			if(m_platformClass==null &&m_patform==null)
			{
				return;
			}
			function callBack(str:String):void{
				TraceUtils.log("initGame->-------------------------------- Get FCM_Token:=="+ str);
				GameSetting.FCM_Token=str;
				if(_callBack){
					_callBack.runWith(str);
				}
			}
			
			if(Browser.onIOS){
//				if( isOldThan("1.8.25") )//老版本
//				{
//				}else{
					m_patform.callWithBack(callBack,"FGM_GetFCMToken");
//				}
			}else if(Browser.onAndriod){
//				if( parseInt(GameSetting.App_Version) >= 1000035 )//老版本
//				{
					m_platformClass.callWithBack(callBack,"FGM_GetFCMToken");
//				}else{
//				}
			}
		}
		
		public function FGM_GetLan(_callBack:Handler):void{
			if(m_platformClass==null &&m_patform==null)
			{
				return;
			}
			//trace.trace("FGM_GetUDID----->FGMPlatform="+m_platformClass);
			function callBack(str:String):void
			{
				_callBack.runWith(str);
			}
			if(Browser.onIOS){
				m_patform.callWithBack(callBack,"FGM_GetLan");
			}else if(Browser.onAndriod){
				m_platformClass.callWithBack(callBack,"FGM_GetLan");
			}
		}
		/**
		 * 获取app版本号 
		 * @param _callBack
		 * 
		 */
		public function FGM_GetAppVersion(_callBack:Handler):void{
			if(m_platformClass==null &&m_patform==null)
			{
				_callBack.runWith(1);
				return;
			}
			TraceUtils.log("FGM_GetAppVersion----->FGMPlatform="+m_platformClass);
			function callBack(str:String):void
			{
				_callBack.runWith(str);
			}
			if(Browser.onIOS){
				m_patform.callWithBack(callBack,"FGM_GetAppVersion");
			}else if(Browser.onAndriod){
				m_platformClass.callWithBack(callBack,"FGM_GetAppVersion");		
			}
		}
		/**
		 * 获取SDK版本号 
		 * @param _callBack
		 * 
		 */
		public function FGM_GetSDKVersion(_callBack:Handler):void{
			if(m_platformClass==null &&m_patform==null)
			{
				return;
			}
			TraceUtils.log("FGM_GetSDKVersion----->FGMPlatform="+m_platformClass);
			function callBack(str:String):void
			{
				_callBack.runWith(str);
			}
			if(Browser.onIOS){
				m_patform.callWithBack(callBack,"FGM_GetSDKVersion");
			}else if(Browser.onAndriod){
				m_platformClass.callWithBack(callBack,"FGM_GetSDKVersion");		
			}
		}
		/**
		 * 打开应用商店
		 * @param _callBack
		 */
		public function FGM_OpenAppStore(_callBack:Handler):void{
			if(m_platformClass==null &&m_patform==null)
			{
				return;
			}
			TraceUtils.log("FGM_OpenAppStore----->FGMPlatform="+m_platformClass);
			function callBack(str:String):void
			{
				_callBack.runWith(str);
			}
			if(Browser.onIOS){
				m_patform.callWithBack(callBack,"FGM_OpenAppStore");
			}else if(Browser.onAndriod){
				m_platformClass.callWithBack(callBack,"FGM_OpenAppStore");		
			}
		}
		
		/**
		 * 获取手机型号 
		 * @param _callBack
		 */
		public function FGM_GetDeviceInfo(_callBack:Handler):void{
			if(m_platformClass==null &&m_patform==null)
			{
				return;
			}
			TraceUtils.log("FGM_GetDeviceInfo----->FGMPlatform="+m_platformClass);
			function callBack(str:String):void
			{
				_callBack.runWith(str);
			}
			if(Browser.onIOS){
				m_patform.callWithBack(callBack,"FGM_GetDeviceInfo");
			}else if(Browser.onAndriod){
				m_platformClass.callWithBack(callBack,"FGM_GetDeviceInfo");		
			}
		}
		
		/**
		 * 获取浏览器当前语言
		 * */
		public function get language():String
		{
			//获取指定键名的值。
			var lang:String;
			var type:String = Browser.window.navigator.appName;
			if (type=="Netscape"){
				lang = Browser.window.navigator.language;
			}
			else{
				lang = Browser.window.navigator.userLanguage;
			}
			TraceUtils.log("laya---------语言:"+lang +"	type:"+type);
			return lang;
		}
		/**
		 * 设置语言
		 * @param _callBack
		 */
		public function FGM_SetLanguage( language:String ):void{
			TraceUtils.log("initgame->FGM_SetLanguage: " + language);
			if(language && language!=""){
				//告诉本地cookie
				//存储指定键名和键值，字符串类型。
				//				LocalStorage.setItem(GameSetting.COOKIE_CF_LAN, language);
				
				if(!Laya.PlatformClass){				
					TraceUtils.log("************FGM_SetLanguage Laya.PlatformClass==null*************");
					return;
				}
				//告诉sdk切换语言包
				if(Browser.onIOS){
					var jsonData:String = "";
					var _obj:Object=new Object();
					_obj["language"]=language;//等级
					jsonData=JSON.stringify(_obj);
					m_patform.call("FGM_SetLanguage:", jsonData);
				}else if(Browser.onAndriod){
					//					if( parseInt(GameSetting.App_Version) >= 1000077 )
					//					{
					m_platformClass.call("FGM_SetLanguage", language);
					//					}
				}
			}
		}
		
		public function FGM_GetTimeZone(_callBack:Handler):void
		{
			if(m_platformClass==null &&m_patform==null)
			{
				return;
			}
			TraceUtils.log("FGM_GetTimeZone----->FGMPlatform="+m_platformClass);
			function callBack(str:String):void
			{
				_callBack.runWith(str);
			}
			if(Browser.onIOS){
				m_patform.callWithBack(callBack,"FGM_GetTimeZone");
			}else if(Browser.onAndriod){
				m_platformClass.callWithBack(callBack,"FGM_GetTimeZone");		
			}
		}
		
		
		/**
		 * Facebook分享
		 * @param _callBack
		 * 
		 */
		public function FGM_FacebookShare(p_title:String,p_description,p_contentUrl,p_imageUrl,_callBack:Handler):void{
			if(m_platformClass==null &&m_patform==null)
			{
				return;
			}
			TraceUtils.log("FGM_GetSDKVersion----->FGMPlatform="+m_platformClass);
			function callBack(str:String):void
			{
				_callBack.runWith(str);
			}
			if(Browser.onIOS){
				var obj:Object = {};
				obj.title = p_title;
				obj.desc = p_description;
				obj.urlStr = p_imageUrl;
				obj.contentURL = p_contentUrl;
				m_patform.callWithBack(callBack,"FGM_FacebookShare:",JSON.stringify(obj));
			}else if(Browser.onAndriod){
				m_platformClass.callWithBack(callBack,"FGM_FacebookShare",p_title,p_description,p_contentUrl,p_imageUrl);		
			}
		}
		/**
		 * 注册公共回调方法
		 * @param _callBack
		 * 
		 */
		public function FGM_RegisterCommCallBack(_callBack:Handler):void{
			if(m_platformClass==null &&m_patform==null)
			{
				return;
			}
			TraceUtils.log("FGM_RegisterCommCallBack----->FGMPlatform="+m_platformClass);
			function callBack(str:String):void
			{
				_callBack.runWith(str);
			}
			if(Browser.onIOS){
				m_patform.callWithBack(callBack,"FGM_RegisterCommCallBack");
			}else if(Browser.onAndriod){
				m_platformClass.callWithBack(callBack,"FGM_RegisterCommCallBack");
			}
		}
		/**
		 * 打开客服系统
		 * @param _callBack
		 * 
		 */
		public function FGM_OpenSupport(_callBack:Handler):void{
			if(m_platformClass==null &&m_patform==null)
			{
				return;
			}
			TraceUtils.log("FGM_OpenSupport----->FGMPlatform="+m_platformClass);
			function callBack(str:String):void
			{
				_callBack.runWith(str);
			}
			if(Browser.onIOS){
				if(GameSetting.App_Version == "1.8.2"){
					var FGPlatformManager:IPlatformClass = Laya.PlatformClass.createClass("FGPlatformManager");
					var fgPlatformManager:IPlatform = FGPlatformManager.newObject();
					fgPlatformManager.call("loadFAQ");
				}else{
					m_patform.callWithBack(callBack,"FGM_OpenSupport");
				}
			}else if(Browser.onAndriod){
				m_platformClass.callWithBack(callBack,"FGM_OpenSupport");
			}
		}
		/**
		 * 运维测试网络
		 * @param _callBack
		 * 
		 */
		public function FGM_NetTest(params:String):void{
			if(m_platformClass==null && m_patform==null)
			{
				return;
			}
			TraceUtils.log("FGM_NetTest----->FGMPlatform="+m_platformClass);
			if(Browser.onIOS){
				m_patform.call("FGM_NetTest:", params);
				
			}else if(Browser.onAndriod){
				TraceUtils.log("android调用FGM_NetTest："+m_platformClass);
				TraceUtils.log("android调用FGM_NetTest："+params);	
				m_platformClass.call("FGM_NetTest", params);
			}
		}
		
		/**
		 *　登录 
		 * @param _callBack
		 * 
		 */
		public function FGM_Login(_callBack:Handler):void{
			if(m_platformClass==null &&m_patform==null)
			{
				return;
			}
			TraceUtils.log("android调用登录："+m_platformClass);	
			function callBack(str:String):void
			{
				TraceUtils.log("FGM_Login->callBack():  "+str);
				_callBack.runWith(str);
			}
			if(Browser.onIOS){
				m_patform.callWithBack(callBack,"FGM_Login");
			}else if(Browser.onAndriod){
				try
				{
					m_platformClass.callWithBack(callBack,"FGM_Login");		
				} 
				catch(error:Error) 
				{
					TraceUtils.log("gameinit->调用skd登录接口异常："+error);
					GameSetting.reloadGame();
				}
			}
		}
		/**
		 * 切换用户 
		 * @param params
		 * @param _callBack
		 * 
		 */		
		public function FGM_SwitchUser(params:String,_callBack:Handler):void{
			if(m_platformClass==null &&m_patform==null)
			{
				return;
			}
			TraceUtils.log("FGM_SwitchUser:"+m_platformClass);
			function callBack(str:String):void
			{
				_callBack.runWith(str);
			}
			if(Browser.onIOS){
				m_patform.callWithBack(callBack,"FGM_SwitchUser:",params);
			}else if(Browser.onAndriod){
				m_platformClass.callWithBack(callBack,"FGM_SwitchUser",params);
			}
			
		}
		
		/**
		 * 邀请好友
		 * @param _callBack
		 */
		public function FGM_GameRequest(_callBack:Handler, title:String = "邀请", message:String = "快来和我一起玩游戏吧", data:String="", recipients:Array = null):void{
			TraceUtils.log("FGM_GameRequest----->FGMPlatform="+m_platformClass);
			function callBack(str:String):void
			{
				TraceUtils.log("AndroidPlatform.FGM_GameRequest.callBack(str): " + str);
				var isFail:Boolean = false;
				var errCode:int;
				if(Browser.onIOS){
					isFail = _obj.hasOwnProperty("errCode");
					if(isFail)
						errCode = _obj.errCode;
				}
				else if(Browser.onAndriod)
					isFail = (_obj["isSuc"]==false);
				if(isFail){
					TraceUtils.log("initGame->获取邀请好友失败");
				}else{
					TraceUtils.log("initGame->获取邀请好友成功*******************************************************");
					if(Browser.onIOS){
					}
					else if(Browser.onAndriod){
					}
				}
				if(_callBack)
					_callBack.runWith(str);
			}
			
			if(Browser.onIOS){
				if( isOldThan("1.8.44") )//老版本
				{
					//					HttpNetService.ErrorTips= GameLanguageMgr.instance.getConfigLan(5106);
					//					ModuleManager.intance.openModule(ModuleName.ClientErrView,[HttpNetService.ErrorTips,1]);
				}else{
					var _obj:Object=new Object();
					_obj["title"] = title;
					_obj["message"] = message;
					_obj["data"] = data;
					var _recipients:String = "";
					if(recipients && recipients.length)
						_recipients = recipients.join(",");
					_obj["recipients"] = _recipients;
					var str:String = JSON.stringify(_obj);
					m_patform.callWithBack(callBack,"FGM_GameRequest:", str);
				}
			}else if(Browser.onAndriod){
				TraceUtils.log("FGM_GameRequest----->邀请好友=");
				TraceUtils.log("FGM_GameRequest----->邀请好友=");
				//				if( parseInt(GameSetting.App_Version) >= 1000072 )//老版本
				//				{
				var _obj1:Object=new Object();
				_obj1["title"] = title;
				_obj1["message"] = message;
				_obj1["data"] = data;
				var _recipients1:String = "";
				if(recipients && recipients.length)
					_recipients1 = recipients.join(",");
				_obj1["recipients"] = _recipients1;
				var str1:String = JSON.stringify(_obj1);
				m_platformClass.callWithBack(callBack,"FGM_GameRequest", str1);
				//				}else{
				//					HttpNetService.ErrorTips = GameLanguageMgr.instance.getConfigLan(5106);
				//					ModuleManager.intance.openModule(ModuleName.ClientErrView,[HttpNetService.ErrorTips,1]);
				//				}
			}else{
				callBack(null);
			}
		}
		
		/**
		 * 切换登录（IOS） 
		 * @param params
		 * @param _callBack
		 * @return 
		 * 
		 */
		public function FGM_SwitchLogin(params:String,_callBack:Handler):void{
			if(m_platformClass==null &&m_patform==null)
			{
				return;
			}
			if(Browser.onIOS)
			{
				function callBack(str:String):void
				{
					_callBack.runWith(str);
				}
				m_patform.callWithBack(callBack,"FGM_SwitchLogin:",params);
			}
			
		}
		/**
		 * 支付 
		 * @param params
		 * @param _callBack
		 * 
		 */		
		public function FGM_Purchase(params:Object,_callBack:Handler):void{
			if(m_platformClass==null &&m_patform==null)
			{
				return;
			}
			TraceUtils.log("android调用支付："+m_platformClass);	
			function callBack(str:String):void
			{
				TraceUtils.log("FGM_Purchase->callBack():  "+str);
				_callBack.runWith(str);
			}
			if(Browser.onIOS){
				var obj:Object = {};
				obj.ProductID = params.item_id;
				obj.Para = params.token;
				obj.price = params.price;
				obj.serverId = params.serverId;
				m_patform.callWithBack(callBack,"FGM_Purchase:",JSON.stringify(obj));
			}else if(Browser.onAndriod){
				m_platformClass.callWithBack(callBack,"FGM_Purchase",params.item_id,params.serverId);
			}
		}
		/**
		 * 游客登录 
		 * @param _callBack
		 * 
		 */		
		public function FGM_GuestLogin(_callBack:Handler):void{
			if(m_platformClass==null &&m_patform==null)
			{
				return;
			}
			function callBack(str:String):void
			{
				_callBack.runWith(str);
			}
			if(Browser.onIOS){
				m_patform.callWithBack(callBack,"FGM_GuestLogin");
			}else if(Browser.onAndriod){
				m_platformClass.callWithBack(callBack,"FGM_GuestLogin");
			}
		}
		/**
		 * 绑定账号 
		 * @param params
		 * @param _callBack
		 * 
		 */		
		public function FGM_BindingAccount(params:String,_callBack:Handler):void{
			if(m_platformClass!=null||m_patform!=null)
			{
				function callBack(str:String):void
				{
					_callBack.runWith(str);
				}
				if(Browser.onIOS){
					m_patform.callWithBack(callBack,"FGM_BindingAccount:",params);
				}else if(Browser.onAndriod){
					m_platformClass.callWithBack(callBack,"FGM_BindingAccount",params);
				}
			}
		}
		/**
		 * 发送自定义事件 
		 * @param name
		 * @param _callBack
		 * 
		 */		
		public function FGM_CustumEvent(jsonData:String, starttime:*=null, endtime:*=null ,type:String = ''):void {
			TraceUtils.log("发送记录事件："+ jsonData);
			var arr = jsonData.split("_");
			var guideId = arr[0];
			var obj = {
				"150" : "guideId_clk_150",//
				"160" : "guideId_clk_160",//
				"170" : "guideId_clk_170",//
				"180" : "guideId_clk_180",//
				"300" : "guideId_clk_300",//
				"310" : "guideId_clk_310",//
				"320" : "guideId_clk_320",//
				"140" : "guideId_clk_140",//
				"550" : "guideId_clk_550",//
				"560" : "guideId_clk_560"//
			}
			if(obj[guideId] && !User.getInstance().hasFinishGuide){
				TraceUtils.log("埋点: "+ guideId,obj[guideId]);
				(XFacade.instance.getView(PreLoadingView) as PreLoadingView).setIndexLog(obj[guideId]);
			}
			if(m_platformClass!=null||m_patform!=null)
			{
				if(Browser.onIOS){//eventKey
					//XTip.showTip( GameLanguage.getLangByKey("事件"+jsonData));
					m_patform.call("FGM_CustumEvent:",JSON.stringify({"eventKey":jsonData}));
				}else if(Browser.onAndriod){
					//XTip.showTip( GameLanguage.getLangByKey("事件"+jsonData));
					m_platformClass.call("FGM_CustumEvent",jsonData);
					TraceUtils.log("initgame->自定义事件"+jsonData);
				}
			}
			else
			{
				/*var xhr:HttpRequest = new HttpRequest();
				xhr.http.timeout = 10000;//设置超时时间；
				xhr.once(Event.COMPLETE,this,completeHandler);
				xhr.once(Event.ERROR,this,errorHandler);
				xhr.on(Event.PROGRESS,this,processHandler);*/
				var str:String="sep="+jsonData+"&open_id="+GameSetting.openId+"&platform="+GameSetting.Platform+"&server_id="+GameSetting.ServerId+"&game_id="+GameSetting.gameId;
				var obj:Object = {};
				obj["sep"] = jsonData;
				obj["open_id"] = GameSetting.Login_UID;
				obj["platform"] = GameSetting.Platform;
				obj["server_id"] = GameSetting.ServerId; 
				obj["game_id"] = GameSetting.gameId;
				obj["type"] = (type || "cflash");
				if(starttime){
					obj["starttime"] = starttime;
					obj["endtime"] = endtime;
				}
				
				//xhr.send("http://upload.mutantbox.com/SendMessage.php?"+str,"","get","text");
				
				if(GameSetting.IsRelease){
					//var script:* = Browser.createElement("script");
					//Browser.document.body.appendChild(script);
					//script.src ="https://upload.mutantbox.com/SendMessage.php?"+str;
					__JS__("report(obj)");
					
				}
			}
		}
		
		
		private function processHandler(data:Object):void
		{
			//			trace("shijianprocess"+data);
		}
		private function completeHandler(data:Object):void
		{
			
			//			trace("shijiancomplete"+data);
			
		}
		private function errorHandler(e:Object):void
		{
			//			trace("shijianerrorHandler"+e);
			
		}
		
		
		public static var M_FACKEBOOK_URL:String = "https://www.facebook.com/ClothesForeverGame/";
		public static var M_INSTAGRAM_URL:String = "https://www.instagram.com/clothesforever/";
		
		public function FGM_OpenURL(url:String =  "https://www.instagram.com/clothesforever/"):void
		{
			if(!Laya.PlatformClass){				
				TraceUtils.log("************Laya.PlatformClass==null*************");
				return;
			}
			TraceUtils.log("FGM_OpenURL 调用打开连接方法: "+url);
			function callBack(str:String):void
			{
				TraceUtils.log("FGM_OpenURL 关闭连接回调成功");
			}
			if(Browser.onIOS){
				if( isOldThan("1.8.14") )//老版本
				{
					m_patform.callWithBack(callBack,"FGM_OpenURL:",url);
				}else{
					m_patform.callWithBack(callBack,"FGM_BuyReal:",url);//新版本用游戏内部的浏览器
				}
			}else if(Browser.onAndriod){
				m_platformClass.callWithBack(callBack,"FGM_OpenURL",url);
			}
			
		}
		
		public function FGM_EventCompletedRegisterSuccess(p_chennel:String):void
		{
			if(m_platformClass!=null||m_patform!=null)
			{
				if(Browser.onIOS){//eventKey
					//XTip.showTip( GameLanguage.getLangByKey("事件"+jsonData));
					m_patform.call("FGM_AssignedEvent:",JSON.stringify({"eventKey":"FGM_EventCompletedRegisterSuccess","parameters":{"FGSDKAppEventParameterNameRegistrationMethod":p_chennel}}));
				}else if(Browser.onAndriod){
					//XTip.showTip( GameLanguage.getLangByKey("事件"+jsonData));
					m_platformClass.call("FGM_EventCompletedRegisterSuccess",p_chennel);
					//					trace("initgame->EventCompletedRegisterSuccess"+p_chanel);
				}
			}
		}
		
		public function FGM_EventCompletedTutorial():void
		{
			if(m_platformClass!=null||m_patform!=null)
			{
				if(Browser.onIOS){//eventKey
					//XTip.showTip( GameLanguage.getLangByKey("事件"+jsonData));
					m_patform.call("FGM_AssignedEvent:",JSON.stringify({"eventKey":"FGSDKAppEventNameCompletedTutorial","parameters":{}}));
				}else if(Browser.onAndriod){
					//XTip.showTip( GameLanguage.getLangByKey("事件"+jsonData));
					m_platformClass.call("FGM_EventCompletedTutorial");
					//					trace("initgame->EventCompletedRegisterSuccess"+p_chanel);
				}
			}
		}
		
		public function FGM_ReportDataEvents(p_url:String):void
		{
			if(m_platformClass!=null||m_patform!=null)
			{
				if(Browser.onIOS){//eventKey
					//XTip.showTip( GameLanguage.getLangByKey("事件"+jsonData));
					m_patform.call("FGM_NetTest:",JSON.stringify({"url":p_url}));
				}else if(Browser.onAndriod){
					//XTip.showTip( GameLanguage.getLangByKey("事件"+jsonData));
					m_platformClass.call("FGM_ReportDataEvents",p_url);
					//					trace("initgame->EventCompletedRegisterSuccess"+p_chanel);
				}
			}
		}
		
		public function FGM_OpenWeb(p_url:String):void
		{
			if(m_platformClass!=null||m_patform!=null)
			{
				if(Browser.onIOS){//eventKey
					//XTip.showTip( GameLanguage.getLangByKey("事件"+jsonData));
					m_patform.call("FGM_OpenURL:",p_url);
				}else if(Browser.onAndriod){
					//XTip.showTip( GameLanguage.getLangByKey("事件"+jsonData));
					m_platformClass.call("FGM_OpenWeb",p_url);
					//					trace("initgame->EventCompletedRegisterSuccess"+p_chanel);
				}
			}
		}
		
		public function FGM_EventAchievedLevel(p_level:int):void
		{
			if(m_platformClass!=null||m_patform!=null)
			{
				if(Browser.onIOS){//eventKey
					m_patform.call("FGM_AssignedEvent:",JSON.stringify({"eventKey":"FGSDKAppEventNameAchievedLevel","parameters":{"FGSDKAppEventParameterNameLevel":p_level}}));
				}else if(Browser.onAndriod){
					m_platformClass.call("FGM_EventAchievedLevel",p_level);
				}
			}
		}
		
		public function FGM_EventUnlockedAchievement(p_str:String):void
		{
			if(m_platformClass!=null||m_patform!=null)
			{
				if(Browser.onIOS){//eventKey
					m_patform.call("FGM_AssignedEvent:",JSON.stringify({"eventKey":"FGSDKAppEventNameUnlockedAchievement","parameters":{"FGSDKAppEventParameterNameDescription":p_str}}));
				}else if(Browser.onAndriod){
					m_platformClass.call("FGM_EventUnlockedAchievement",p_str);
				}
			}
		}
		
		public function FGM_GetGameServiceList(p_str:String,_callBack:Handler):void
		{
			if(m_platformClass!=null||m_patform!=null)
			{
				function callBack(str:String):void
				{
					_callBack.runWith(str);
				}
				if(Browser.onIOS){
					m_patform.callWithBack(callBack,"FGM_GetGameServiceList:",p_str);
				}else if(Browser.onAndriod){
					m_platformClass.callWithBack(callBack,"FGM_GetGameServiceList",p_str);
				}
			}
		}
		
		public function isOldThan(version:String):Boolean{
			return false;
			var appVersionNum:int = getVersionNum(GameSetting.App_Version);
			var compareVersionNum:int = getVersionNum(version);
			
			TraceUtils.log("initgame--->netTest 版本号index:"+appVersionNum+" <= "+compareVersionNum, 1);
			return appVersionNum <= compareVersionNum;
		}
		
		private function getVersionNum(version:*):int{
			var versionNum:int;
			if(version){
				if(version is String){
					var versions:Array = version.split(".");
					var versionStr:String = "";
					for (var i:int = 0; i < versions.length; i++) 
					{
						var vNum:String = versions[i];
						if(i == 0)
							versionStr += vNum;
						else{
							if(vNum.length == 1){
								versionStr += "0" + vNum;
							}else
								versionStr += vNum;
						}
					}
					versionNum = parseInt(versionStr);
				}else
					versionNum = version;
			}
			return versionNum;
		}
		
		/**获取app FB好友列表*/
		public function FGM_getFacebookAppFriends(_callBack:Handler):*{
			
			TraceUtils.log("init------FGM_getFacebookAppFriends");
			function callBack(data:Object):void
			{
				TraceUtils.log("back-------FGM_getFacebookAppFriends" , data);
				_callBack.runWith(data);
			}
			if(Browser.onIOS){
				TraceUtils.log("ios----------FGM_getFacebookAppFriends");
				m_patform.callWithBack(callBack, "FGM_getFacebookAppFriends");
			}else if(Browser.onAndriod){
				TraceUtils.log("and----------FGM_getFacebookAppFriends");
				m_platformClass.callWithBack(callBack, "FGM_getFacebookAppFriends");
			}
		}
	}
}