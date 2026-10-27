.class public Lcom/xiaopeng/xuiservice/XUIServiceApplication;
.super Landroid/app/Application;
.source "XUIServiceApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XUIService##"

.field private static mLocale:Ljava/util/Locale;

.field private static mLocaleStrings:Lcom/xiaopeng/util/LocaleStrings;

.field private static mOpenSdkServerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/car/opensdk/pipebus/IPipeBus;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/xiaopeng/xuiservice/XUIServiceApplication;


# instance fields
.field private mNodeListener:Lcom/xiaopeng/speech/INodeListener;

.field private mSpeechModel:Lcom/xiaopeng/speech/protocol/SpeechModel;

.field private mSpeechVuiElementStateQueryCaller:Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->mOpenSdkServerMap:Ljava/util/HashMap;

    .line 218
    sget-object v0, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->mOpenSdkServerMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->getModuleName()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    move-result-object v2

    .line 218
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->mOpenSdkServerMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->getModuleName()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    move-result-object v2

    .line 220
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/protocol/SpeechModel;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->mSpeechModel:Lcom/xiaopeng/speech/protocol/SpeechModel;

    return-object v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/XUIServiceApplication;Lcom/xiaopeng/speech/protocol/SpeechModel;)Lcom/xiaopeng/speech/protocol/SpeechModel;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/XUIServiceApplication;
    .param p1, "x1"    # Lcom/xiaopeng/speech/protocol/SpeechModel;

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->mSpeechModel:Lcom/xiaopeng/speech/protocol/SpeechModel;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/INodeListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->mNodeListener:Lcom/xiaopeng/speech/INodeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->mSpeechVuiElementStateQueryCaller:Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->initXUIServiceBusServer()V

    return-void
.end method

.method static synthetic access$400()Lcom/xiaopeng/xuiservice/XUIServiceApplication;
    .locals 1

    .line 63
    sget-object v0, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->sInstance:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->openSdkRegisterImplementors()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->openSdkUnRegisterImplementors()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/XUIServiceApplication;
    .locals 1

    .line 203
    sget-object v0, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->sInstance:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    return-object v0
.end method

.method private initOpenSdkManagers()V
    .locals 4

    .line 244
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/-$$Lambda$XUIServiceApplication$hZot2pbQLDzRnJh_rhvMWOuStIc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/-$$Lambda$XUIServiceApplication$hZot2pbQLDzRnJh_rhvMWOuStIc;-><init>(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    return-void
.end method

.method private initVuiSceneListener()V
    .locals 1

    .line 281
    new-instance v0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication$4;-><init>(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->mNodeListener:Lcom/xiaopeng/speech/INodeListener;

    .line 289
    new-instance v0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication$5;-><init>(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->mSpeechVuiElementStateQueryCaller:Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    .line 296
    return-void
.end method

.method private initXUIServiceBusServer()V
    .locals 3

    .line 268
    const-string v0, "XUIService##"

    const-string v1, "initXUIServiceBusServer"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceBusServer;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceBusServer;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getModuleName()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    move-result-object v2

    .line 269
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/XUIServiceBusServer;->addManager(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/server/PipeBusManager;)V

    .line 271
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceBusServer;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceBusServer;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;->getInstance()Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;->getModuleName()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {}, Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;->getInstance()Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;

    move-result-object v2

    .line 271
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/XUIServiceBusServer;->addManager(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/server/PipeBusManager;)V

    .line 273
    invoke-static {}, Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;

    move-result-object v0

    .line 274
    .local v0, "appConfigManagerServer":Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceBusServer;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceBusServer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/XUIServiceBusServer;->addManager(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/server/PipeBusManager;)V

    .line 275
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/-$$Lambda$XUIServiceApplication$JMsdRh3phuOcQiuo2mxhMTq8EhQ;->INSTANCE:Lcom/xiaopeng/xuiservice/-$$Lambda$XUIServiceApplication$JMsdRh3phuOcQiuo2mxhMTq8EhQ;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 278
    return-void
.end method

.method public static synthetic lambda$initOpenSdkManagers$1(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V
    .locals 4

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.xuimanager.OpenCarService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaopeng.xuiservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->openSdkServerInit()V

    .line 251
    sget-object v1, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->sInstance:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    new-instance v2, Lcom/xiaopeng/xuiservice/XUIServiceApplication$3;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication$3;-><init>(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 264
    return-void
.end method

.method static synthetic lambda$initXUIServiceBusServer$2()V
    .locals 1

    .line 276
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceBusServer;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceBusServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/XUIServiceBusServer;->init()Z

    .line 277
    return-void
.end method

.method static synthetic lambda$onCreate$0()V
    .locals 1

    .line 77
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SysUtils;->getInstance()Lcom/xiaopeng/xuiservice/utils/SysUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/SysUtils;->init()V

    .line 78
    return-void
.end method

.method private logInit()V
    .locals 2

    .line 207
    const-string v0, "persist.sys.xiaopeng.xuisvc.loglevel"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 208
    .local v0, "targetLevel":I
    if-eq v1, v0, :cond_0

    .line 209
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->setOutputLevel(I)V

    .line 211
    :cond_0
    return-void
.end method

.method private openSdkRegisterImplementors()V
    .locals 5

    .line 230
    sget-object v0, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->mOpenSdkServerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 231
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/car/opensdk/pipebus/IPipeBus;>;"
    invoke-static {}, Lcom/car/opensdk/OpenCarManager;->getInstance()Lcom/car/opensdk/OpenCarManager;

    move-result-object v2

    .line 232
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/car/opensdk/pipebus/IPipeBus;

    .line 231
    invoke-virtual {v2, v3, v4}, Lcom/car/opensdk/OpenCarManager;->registerModuleImplementor(Ljava/lang/String;Lcom/car/opensdk/pipebus/IPipeBus;)V

    .line 233
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/car/opensdk/pipebus/IPipeBus;>;"
    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method

.method private openSdkServerInit()V
    .locals 1

    .line 225
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->init()V

    .line 226
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->init()V

    .line 227
    return-void
.end method

.method private openSdkUnRegisterImplementors()V
    .locals 5

    .line 237
    sget-object v0, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->mOpenSdkServerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 238
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/car/opensdk/pipebus/IPipeBus;>;"
    invoke-static {}, Lcom/car/opensdk/OpenCarManager;->getInstance()Lcom/car/opensdk/OpenCarManager;

    move-result-object v2

    .line 239
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/car/opensdk/pipebus/IPipeBus;

    .line 238
    invoke-virtual {v2, v3, v4}, Lcom/car/opensdk/OpenCarManager;->unRegisterModuleImplementor(Ljava/lang/String;Lcom/car/opensdk/pipebus/IPipeBus;)V

    .line 240
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/car/opensdk/pipebus/IPipeBus;>;"
    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 184
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 185
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 187
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    const-string v1, "XUIService##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged, locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v1, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->mLocaleStrings:Lcom/xiaopeng/util/LocaleStrings;

    if-eqz v1, :cond_0

    .line 191
    sget-object v1, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->mLocaleStrings:Lcom/xiaopeng/util/LocaleStrings;

    invoke-virtual {v1}, Lcom/xiaopeng/util/LocaleStrings;->update()V

    .line 193
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->getInstance()Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->notifyLocaleChanged()V

    .line 194
    sput-object v0, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->mLocale:Ljava/util/Locale;

    .line 197
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    invoke-static {}, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;->get()Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;->notifyThemeChanged()V

    .line 200
    :cond_2
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 75
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->logInit()V

    .line 76
    sget-object v0, Lcom/xiaopeng/xuiservice/-$$Lambda$XUIServiceApplication$8Upzg4mkFC9eA_bYEF_VVSzNhsQ;->INSTANCE:Lcom/xiaopeng/xuiservice/-$$Lambda$XUIServiceApplication$8Upzg4mkFC9eA_bYEF_VVSzNhsQ;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 80
    sput-object p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->sInstance:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    .line 81
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 82
    invoke-static {p0}, Lcom/xiaopeng/xui/Xui;->init(Landroid/app/Application;)V

    .line 84
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->sInstance:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->init(Landroid/content/Context;)V

    .line 86
    invoke-static {}, Lcom/xiaopeng/xuimanager/utils/ProcessUtil;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "processName":Ljava/lang/String;
    const-string v1, "XUIService##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->mLocale:Ljava/util/Locale;

    .line 90
    invoke-static {}, Lcom/xiaopeng/util/LocaleStrings;->getInstance()Lcom/xiaopeng/util/LocaleStrings;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->mLocaleStrings:Lcom/xiaopeng/util/LocaleStrings;

    .line 91
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->initVuiSceneListener()V

    .line 92
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "XUIService##"

    const-string v2, "enable taskOnHome when init"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->subscribeVuiFeature()V

    .line 98
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;-><init>(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V

    invoke-virtual {v1, p0, v2}, Lcom/xiaopeng/speech/SpeechClient;->init(Landroid/content/Context;Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;)V

    .line 134
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/Xui;->setVuiEnable(ZLcom/xiaopeng/vui/commons/IVuiEngine;)V

    .line 135
    invoke-static {p0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    sget v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setLoglevel(I)V

    .line 136
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/innerutils/DataLogUtils;->init(Landroid/content/Context;)V

    .line 137
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->initForMain()V

    .line 138
    new-instance v1, Lcom/xiaopeng/xuiservice/XUIServiceApplication$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication$2;-><init>(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 154
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->initOpenSdkManagers()V

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    goto :goto_0

    .line 161
    :cond_0
    const-string v1, "XUIService##"

    const-string v2, "create business service:"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-eqz v0, :cond_2

    .line 163
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->initNonMain()V

    .line 165
    const-string v1, "iotservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    const-string v1, "iot"

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/XUIConfig$BusinessModule;->setBusinessModule(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->initForIoT()V

    goto :goto_0

    .line 168
    :cond_1
    const-string v1, "opencarsvc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    const-string v1, "opencar"

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/XUIConfig$BusinessModule;->setBusinessModule(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xiaopeng/speech/SpeechClient;->init(Landroid/content/Context;)V

    .line 174
    :cond_2
    :goto_0
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 179
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 180
    return-void
.end method
