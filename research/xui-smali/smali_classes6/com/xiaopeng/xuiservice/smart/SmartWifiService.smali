.class public Lcom/xiaopeng/xuiservice/smart/SmartWifiService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartWifiService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$WifiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;,
        Lcom/xiaopeng/xuiservice/smart/SmartWifiService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final MESSAGE_CONNECT_NETWORK:I = 0x3

.field public static final MESSAGE_DISCONNECT_NETWORK:I = 0x4

.field public static final MESSAGE_ENABLE_NETWORK:I = 0x2

.field public static final MESSAGE_INIT_AUTO_WIFI:I = 0x5

.field public static final MESSAGE_OPEN_WIFI:I = 0x0

.field public static final MESSAGE_SCAN_WIFI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SmartWifiService"


# instance fields
.field private mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

.field private mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

.field private mSmartWifiHandler:Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartWifiService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->mSmartWifiHandler:Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;

    .line 39
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->setListener(Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$WifiListener;)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->mSmartWifiHandler:Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->mSmartWifiHandler:Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartWifiService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartWifiService$1;

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/SmartWifiService;)Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartWifiService;

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->mSmartWifiHandler:Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartWifiService;
    .locals 1

    .line 49
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$InstanceHolder;->access$000()Lcom/xiaopeng/xuiservice/smart/SmartWifiService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "SmartWifiService"

    return-object v0
.end method

.method protected initCarListener()V
    .locals 1

    .line 54
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartWifiService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->addTboxManagerListener(Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;)V

    .line 78
    return-void
.end method

.method protected onCarManagerInited()V
    .locals 2

    .line 82
    const-string v0, "SmartWifiService"

    const-string v1, "onCarManagerInited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "xp_tbox"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    .line 84
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 88
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->removeTboxManagerListener(Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;)V

    .line 93
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->release()V

    .line 94
    return-void
.end method

.method public declared-synchronized scanResultComplete()V
    .locals 3

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->mSmartWifiHandler:Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->mSmartWifiHandler:Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartWifiService;
    throw v0
.end method

.method public declared-synchronized setWifiGwInfo(IILjava/lang/String;)V
    .locals 4
    .param p1, "wifiState"    # I
    .param p2, "wifiType"    # I
    .param p3, "wifiIp"    # Ljava/lang/String;

    monitor-enter p0

    .line 118
    :try_start_0
    const-string v0, "SmartWifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiGwInfo wifiState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " wifiType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " wifiIp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 120
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .local v1, "subJson":Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "state"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    const-string v2, "gw"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v2, "id"

    const-string/jumbo v3, "wifi_state"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    .line 131
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/car/hardware/tbox/CarTboxManager;->setWifiGwInfo(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    goto :goto_1

    .line 132
    :catch_1
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->handleException(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 117
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "subJson":Lorg/json/JSONObject;
    .end local p1    # "wifiState":I
    .end local p2    # "wifiType":I
    .end local p3    # "wifiIp":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .line 117
    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartWifiService;
    throw p1
.end method
