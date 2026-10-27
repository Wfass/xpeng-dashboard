.class public Lcom/xiaopeng/xuiservice/smart/SmartBiService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartBiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;,
        Lcom/xiaopeng/xuiservice/smart/SmartBiService$InstanceHolder;,
        Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;
    }
.end annotation


# static fields
.field private static final BI_UPLOADLOG_ACTION:Ljava/lang/String; = "android.intent.action.BI_UPLOADLOG"

.field private static final BI_UPLOADLOG_EXTRA_LOG:Ljava/lang/String; = "LogString"

.field private static final MSG_BILOG_UPGRADE:I = 0x0

.field private static final SYS_MID:Ljava/lang/String; = "system"

.field private static final SYS_PID:Ljava/lang/String; = "P10069"

.field private static final TAG:Ljava/lang/String; = "SmartBiService"


# instance fields
.field private mBiHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBiService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService;->mBiHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;

    .line 60
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartBiService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBiService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartBiService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartBiService$1;

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartBiService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartBiService;
    .locals 1

    .line 99
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBiService$InstanceHolder;->access$000()Lcom/xiaopeng/xuiservice/smart/SmartBiService;

    move-result-object v0

    return-object v0
.end method

.method private registerReceiver()V
    .locals 3

    .line 78
    const-string v0, "SmartBiService"

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BI_UPLOADLOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method private sendBiUploadEvent(Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;)V
    .locals 2
    .param p1, "data"    # Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService;->mBiHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 72
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 73
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService;->mBiHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    return-void
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

    .line 95
    const-string v0, "SmartBiService"

    return-object v0
.end method

.method public declared-synchronized handleBiUploadEvent(Ljava/lang/String;)V
    .locals 8
    .param p1, "jsonStr"    # Ljava/lang/String;

    monitor-enter p0

    .line 45
    :try_start_0
    const-string v0, "SmartBiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBiUploadEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v1, "moduleId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "moduleId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "system"

    :goto_0
    move-object v4, v1

    .line 50
    .local v4, "moduleId":Ljava/lang/String;
    const-string v1, "pageId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "pageId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "P10069"

    :goto_1
    move-object v5, v1

    .line 51
    .local v5, "pageId":Ljava/lang/String;
    const-string v1, "buttonId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "buttonId":Ljava/lang/String;
    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 54
    .local v7, "params":Ljava/lang/String;
    new-instance v1, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartBiService;->sendBiUploadEvent(Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .end local v0    # "obj":Lorg/json/JSONObject;
    .end local v4    # "moduleId":Ljava/lang/String;
    .end local v5    # "pageId":Ljava/lang/String;
    .end local v6    # "buttonId":Ljava/lang/String;
    .end local v7    # "params":Ljava/lang/String;
    goto :goto_2

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "SmartBiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBiUploadEvent failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit p0

    return-void

    .line 44
    .end local p1    # "jsonStr":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartBiService;
    throw p1
.end method

.method protected onInit()V
    .locals 2

    .line 109
    const-string v0, "SmartBiService"

    const-string v1, "onInit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBiService;->registerReceiver()V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService;->mBiHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;->start()V

    .line 112
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .line 116
    const-string v0, "SmartBiService"

    const-string v1, "onRelease"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService;->mBiHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;->quit()Z

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBiService;->unregisterReceiver()V

    .line 119
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 85
    const-string v0, "SmartBiService"

    const-string v1, "unregisterReceiver.."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    return-void
.end method
