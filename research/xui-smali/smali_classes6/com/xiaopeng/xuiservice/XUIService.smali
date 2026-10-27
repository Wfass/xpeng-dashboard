.class public Lcom/xiaopeng/xuiservice/XUIService;
.super Landroid/app/Service;
.source "XUIService.java"


# instance fields
.field private final mBusinessEventManager:Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

.field private mIXUIServiceImpl:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->getInstance()Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/XUIService;->mBusinessEventManager:Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lcom/xiaopeng/xuiservice/XUIService;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIService;->mBusinessEventManager:Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->init()V

    .line 38
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 73
    if-eqz p3, :cond_4

    .line 74
    const/4 v0, 0x0

    move v1, v0

    .line 75
    .local v1, "opti":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_4

    .line 76
    aget-object v2, p3, v1

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x5e0

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    const v5, 0xcc410d9

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "-module"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v6

    goto :goto_1

    :cond_1
    const-string v4, "-m"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v0

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 90
    goto :goto_0

    .line 79
    :pswitch_0
    array-length v0, p3

    sub-int/2addr v0, v6

    if-ge v1, v0, :cond_3

    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 81
    aget-object v0, p3, v1

    .line 82
    .local v0, "module":Ljava/lang/String;
    add-int/2addr v1, v6

    .line 83
    invoke-static {p2, v0, p3, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumpModule(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 84
    .end local v0    # "module":Ljava/lang/String;
    goto :goto_2

    .line 85
    :cond_3
    const-string v0, "lack module name..."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    :goto_2
    return-void

    .line 94
    .end local v1    # "opti":I
    :cond_4
    const-string v0, "*dump XUIService*"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v0, "*dump HAL*"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v0, "*dump services*"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->getInstance()Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->dump(Ljava/io/PrintWriter;)V

    .line 98
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIService;->mIXUIServiceImpl:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 32
    const-string v0, "XUI.SERVICE"

    const-string v1, "##XUIService onCreate enter"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->init()V

    .line 34
    invoke-static {}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->getInstance()Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/XUIService;->mIXUIServiceImpl:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    .line 35
    const-string v0, "XuiServiceManager"

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/XUIService;->mIXUIServiceImpl:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 36
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/-$$Lambda$XUIService$6vWhOCmoEeLbSnLapjuZpJ1tm_0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/-$$Lambda$XUIService$6vWhOCmoEeLbSnLapjuZpJ1tm_0;-><init>(Lcom/xiaopeng/xuiservice/XUIService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 39
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    const-string v0, "XUI.SERVICE"

    const-string v1, "##XUIService onCreate leave"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 55
    const-string v0, "XUI.SERVICE"

    const-string v1, "XUIService onDestroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->releaseInstance()V

    .line 57
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 58
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 63
    const/4 v0, 0x1

    return v0
.end method
