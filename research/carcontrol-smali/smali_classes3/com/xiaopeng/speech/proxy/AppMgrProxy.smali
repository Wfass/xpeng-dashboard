.class public Lcom/xiaopeng/speech/proxy/AppMgrProxy;
.super Lcom/xiaopeng/speech/coreapi/IAppMgr$Stub;
.source "AppMgrProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# instance fields
.field private mAppNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/IPCRunner<",
            "Lcom/xiaopeng/speech/coreapi/IAppMgr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/speech/coreapi/IAppMgr$Stub;-><init>()V

    .line 25
    new-instance v0, Lcom/xiaopeng/speech/common/util/IPCRunner;

    const-string v1, "AppMgrProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->mAppNames:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->registerApp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/proxy/AppMgrProxy;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->mAppNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/proxy/AppMgrProxy;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 109
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 110
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v1, :cond_0

    .line 111
    iget-object p1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private reRegisterApp()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AppMgrProxy$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/AppMgrProxy$4;-><init>(Lcom/xiaopeng/speech/proxy/AppMgrProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAppNameByPackage(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AppMgrProxy$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AppMgrProxy$3;-><init>(Lcom/xiaopeng/speech/proxy/AppMgrProxy;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public getPackageByAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AppMgrProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/AppMgrProxy$2;-><init>(Lcom/xiaopeng/speech/proxy/AppMgrProxy;Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getAppMgr()Lcom/xiaopeng/speech/coreapi/IAppMgr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 80
    invoke-direct {p0}, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->reRegisterApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 84
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->fetchAll()V

    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    return-void
.end method

.method public registerApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/AppMgrProxy$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/proxy/AppMgrProxy$1;-><init>(Lcom/xiaopeng/speech/proxy/AppMgrProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setWorkerHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    return-void
.end method
