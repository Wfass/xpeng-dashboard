.class public Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;
.super Ljava/lang/Object;
.source "NetworkEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager$TestData;,
        Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager$NetworkEventManagerHolder;
    }
.end annotation


# static fields
.field private static final APPLICATION_ID:Ljava/lang/String; = "com.xiaopeng.xuiservice"

.field private static final KEY_PROBE_CONFIG:Ljava/lang/String; = "probe_config"

.field private static final TAG:Ljava/lang/String; = "NetworkEventManager"

.field private static configurationInited:Z = false

.field private static final notifyPackageName:Ljava/lang/String; = "com.xiaopeng.networkmonitor"


# instance fields
.field private mApplication:Landroid/app/Application;

.field private moduleInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->configurationInited:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->moduleInit:Z

    .line 50
    const-string v0, "networkevent"

    new-instance v1, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$NetworkEventManager$-oAUM9V-QnOxuLOd3Bukbba4tFk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$NetworkEventManager$-oAUM9V-QnOxuLOd3Bukbba4tFk;-><init>(Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager$1;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;-><init>()V

    return-void
.end method

.method private getConfigAndNotify()V
    .locals 4

    .line 89
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->getConfigInterface()Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;

    move-result-object v0

    const-string v1, "probe_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;->getConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "configurationValue":Ljava/lang/String;
    const-string v1, "NetworkEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigAndNotify,get configurationValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",configurationInited="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->configurationInited:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    if-eqz v0, :cond_0

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "probe_config"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->getInstance()Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    move-result-object v2

    const-string v3, "com.xiaopeng.networkmonitor"

    invoke-virtual {v2, v3, v1}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->notifyApp(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "configurationValue":Ljava/lang/String;
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NetworkEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigAndNotify,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private getConfigInterface()Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;
    .locals 2

    .line 154
    const-class v0, Lcom/xiaopeng/lib/framework/configuration/ConfigurationModuleEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;
    .locals 1

    .line 56
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager$NetworkEventManagerHolder;->access$100()Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized initConfigurationModule()V
    .locals 2

    monitor-enter p0

    .line 158
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->moduleInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 159
    monitor-exit p0

    return-void

    .line 161
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->moduleInit:Z

    .line 163
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$NetworkEventManager$Kzq7oW-lN9m2ao6XkS9n0F1T8Uo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$NetworkEventManager$Kzq7oW-lN9m2ao6XkS9n0F1T8Uo;-><init>(Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;
    throw v0
.end method

.method private initConfigurationModuleInner()V
    .locals 4

    .line 169
    const-string v0, "NetworkEventManager"

    const-string v1, "initConfigurationModule"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const-string v0, "NetworkEventManager"

    const-string v1, "register listener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 176
    :cond_0
    const-class v0, Lcom/xiaopeng/lib/framework/configuration/ConfigurationModuleEntry;

    new-instance v1, Lcom/xiaopeng/lib/framework/configuration/ConfigurationModuleEntry;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/configuration/ConfigurationModuleEntry;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 177
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->getConfigInterface()Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->mApplication:Landroid/app/Application;

    const-string v2, "com.xiaopeng.xuiservice"

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;->init(Landroid/app/Application;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$NetworkEventManager$uQdKB3ZFeZh-nqPwYButNAGSzQI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$NetworkEventManager$uQdKB3ZFeZh-nqPwYButNAGSzQI;-><init>(Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->configurationInited:Z

    .line 183
    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->initConfigurationModule()V

    .line 63
    return-void
.end method

.method public static synthetic lambda$init$2(Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->getConfigAndNotify()V

    .line 79
    return-void
.end method

.method public static synthetic lambda$init$3(Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 70
    const-string v0, "NetworkEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get broadcast="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x45e5283a

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 73
    :cond_2
    sget-boolean v0, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->configurationInited:Z

    if-nez v0, :cond_3

    .line 74
    const-string v0, "NetworkEventManager"

    const-string v1, "network changed but configuration not ready"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    goto :goto_2

    .line 77
    :cond_3
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$NetworkEventManager$es0ZK4mT120u4mS51UuQRyqNkq8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$NetworkEventManager$es0ZK4mT120u4mS51UuQRyqNkq8;-><init>(Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 80
    nop

    .line 84
    :goto_2
    return-void
.end method

.method public static synthetic lambda$initConfigurationModule$4(Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->initConfigurationModuleInner()V

    .line 165
    return-void
.end method

.method public static synthetic lambda$initConfigurationModuleInner$5(Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->getConfigAndNotify()V

    .line 181
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private postTest()V
    .locals 4

    .line 122
    new-instance v0, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager$TestData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager$TestData;-><init>(Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager$1;)V

    .line 123
    .local v0, "data":Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager$TestData;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfigurationData;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v2, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;

    invoke-direct {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;-><init>()V

    .line 126
    .local v2, "event":Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;
    invoke-virtual {v2, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;->setChangeList(Ljava/util/List;)V

    .line 127
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 128
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 103
    const-string v0, "NetworkEventManager"

    const-string v1, "dump NetworkEventManager"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->getConfigInterface()Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;

    move-result-object v0

    const-string v1, "probe_config"

    const-string v2, "defaultValue"

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;->getConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "configurationValue":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public init()V
    .locals 3

    .line 60
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->mApplication:Landroid/app/Application;

    .line 61
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$NetworkEventManager$8FKZQOkHEamNSrzudSH7LIlCccw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$NetworkEventManager$8FKZQOkHEamNSrzudSH7LIlCccw;-><init>(Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->addBootCompleteTask(Ljava/lang/Runnable;)V

    .line 64
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->isBootComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->initConfigurationModule()V

    .line 67
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "filter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$NetworkEventManager$TjTXLXC1he9b8OZ5x3R5ca1HZ-k;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$NetworkEventManager$TjTXLXC1he9b8OZ5x3R5ca1HZ-k;-><init>(Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;)V

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListener(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 85
    return-void
.end method

.method public onConfigurationChanged(Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 132
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;->getChangeList()Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfigurationData;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 134
    const-string v1, "NetworkEventManager"

    const-string v2, "onConfigurationChanged()"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfigurationData;

    .line 136
    .local v2, "config":Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfigurationData;
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfigurationData;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "key":Ljava/lang/String;
    const-string v4, "NetworkEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v4, "probe_config"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    const-string v4, "NetworkEventManager"

    const-string v5, "KEY_PROBE_CONFIG hit"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfigurationData;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 142
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "probe_config"

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->getInstance()Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    move-result-object v6

    const-string v7, "com.xiaopeng.networkmonitor"

    invoke-virtual {v6, v7, v5}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->notifyApp(Ljava/lang/String;Ljava/util/Map;)V

    .line 145
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 146
    :cond_0
    const-string v5, "NetworkEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConfigurationChanged,value class="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v2    # "config":Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfigurationData;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1
    :goto_1
    goto :goto_0

    .line 151
    :cond_2
    return-void
.end method
