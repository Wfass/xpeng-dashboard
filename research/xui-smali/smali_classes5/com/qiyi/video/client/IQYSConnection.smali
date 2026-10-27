.class public Lcom/qiyi/video/client/IQYSConnection;
.super Ljava/lang/Object;
.source "IQYSConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiyi/video/client/IQYSConnection$QYSConnectionStatusListener;,
        Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;,
        Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT_CHECK_DELAY_MILLIS:I = 0xbb8

.field private static final RETRY_CONNECT_DELAY_MILLIS:I = 0xbb8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;

.field private mQYSConnectionStatusListener:Lcom/qiyi/video/client/IQYSConnection$QYSConnectionStatusListener;

.field private mService:Lcom/qiyi/video/qys/IQYS;

.field private mServiceConnectionInner:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/qiyi/video/client/IQYSConnection;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSConnection;
    .param p1, "x1"    # Z

    .line 23
    invoke-direct {p0, p1}, Lcom/qiyi/video/client/IQYSConnection;->connectAndTryLaunchProcess(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/qiyi/video/client/IQYSConnection;Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;)V
    .locals 0
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSConnection;
    .param p1, "x1"    # Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    .line 23
    invoke-direct {p0, p1}, Lcom/qiyi/video/client/IQYSConnection;->disConnect(Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;)V

    return-void
.end method

.method static synthetic access$400(Lcom/qiyi/video/client/IQYSConnection;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSConnection;

    .line 23
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qiyi/video/client/IQYSConnection;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSConnection;
    .param p1, "x1"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0, p1}, Lcom/qiyi/video/client/IQYSConnection;->startProcess(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/qiyi/video/client/IQYSConnection;)Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSConnection;

    .line 23
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection;->mListener:Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/qiyi/video/client/IQYSConnection;Lcom/qiyi/video/qys/IQYS;)Lcom/qiyi/video/qys/IQYS;
    .locals 0
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSConnection;
    .param p1, "x1"    # Lcom/qiyi/video/qys/IQYS;

    .line 23
    iput-object p1, p0, Lcom/qiyi/video/client/IQYSConnection;->mService:Lcom/qiyi/video/qys/IQYS;

    return-object p1
.end method

.method static synthetic access$800(Lcom/qiyi/video/client/IQYSConnection;)Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;
    .locals 1
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSConnection;

    .line 23
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection;->mServiceConnectionInner:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    return-object v0
.end method

.method static synthetic access$900(Lcom/qiyi/video/client/IQYSConnection;)Lcom/qiyi/video/client/IQYSConnection$QYSConnectionStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSConnection;

    .line 23
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection;->mQYSConnectionStatusListener:Lcom/qiyi/video/client/IQYSConnection$QYSConnectionStatusListener;

    return-object v0
.end method

.method private clear()V
    .locals 1

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qiyi/video/client/IQYSConnection;->mListener:Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;

    .line 135
    iput-object v0, p0, Lcom/qiyi/video/client/IQYSConnection;->mQYSConnectionStatusListener:Lcom/qiyi/video/client/IQYSConnection$QYSConnectionStatusListener;

    .line 136
    iput-object v0, p0, Lcom/qiyi/video/client/IQYSConnection;->mServiceConnectionInner:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    .line 137
    iput-object v0, p0, Lcom/qiyi/video/client/IQYSConnection;->mService:Lcom/qiyi/video/qys/IQYS;

    .line 138
    return-void
.end method

.method private connectAndTryLaunchProcess(Z)V
    .locals 6
    .param p1, "needRetryOnTimeOut"    # Z

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection;->mContext:Landroid/content/Context;

    .line 49
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0, v0, p1}, Lcom/qiyi/video/client/IQYSConnection;->connectService(Landroid/content/Context;Z)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSConnection;->mListener:Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;

    .line 53
    .local v1, "listener":Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;
    if-eqz v1, :cond_1

    .line 54
    new-instance v2, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-direct {v2}, Lcom/qiyi/video/qys/IQYSResponse;-><init>()V

    .line 55
    .local v2, "response":Lcom/qiyi/video/qys/IQYSResponse;
    const/16 v3, -0x190

    iput v3, v2, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 56
    new-instance v3, Lcom/qiyi/video/qys/IQYSString;

    const-string v4, "connect failure, context is null"

    invoke-direct {v3, v4}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 57
    invoke-interface {v1, v2}, Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;->onResult(Lcom/qiyi/video/qys/IQYSResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "listener":Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;
    .end local v2    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    :cond_1
    :goto_0
    goto :goto_1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSConnection;->mListener:Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;

    .line 62
    .restart local v1    # "listener":Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;
    if-eqz v1, :cond_2

    .line 63
    new-instance v2, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-direct {v2}, Lcom/qiyi/video/qys/IQYSResponse;-><init>()V

    .line 64
    .restart local v2    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    const/4 v3, -0x6

    iput v3, v2, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 65
    new-instance v3, Lcom/qiyi/video/qys/IQYSString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect failure, msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 66
    invoke-interface {v1, v2}, Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;->onResult(Lcom/qiyi/video/qys/IQYSResponse;)V

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;
    .end local v2    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    :cond_2
    :goto_1
    return-void
.end method

.method private connectService(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needRetryOnTimeOut"    # Z

    .line 82
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qiyi.video.iqys.connection"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0, p1}, Lcom/qiyi/video/client/IQYSConnection;->convertImplicitIntentToExplicitIntent(Landroid/content/Intent;Landroid/content/Context;)V

    .line 84
    new-instance v1, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    invoke-direct {v1, p0, p2}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;-><init>(Lcom/qiyi/video/client/IQYSConnection;Z)V

    iput-object v1, p0, Lcom/qiyi/video/client/IQYSConnection;->mServiceConnectionInner:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    .line 85
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSConnection;->mServiceConnectionInner:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    invoke-virtual {v1}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->startConnectedTimeOutCheck()V

    .line 86
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSConnection;->mServiceConnectionInner:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "intent":Landroid/content/Intent;
    nop

    .line 94
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSConnection;->mServiceConnectionInner:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    .line 89
    .local v1, "inner":Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;
    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v1}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->stopConnectedTimeOutCheck()V

    .line 92
    :cond_0
    throw v0
.end method

.method private convertImplicitIntentToExplicitIntent(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;

    .line 100
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 101
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 102
    .local v2, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 108
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 109
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 110
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v4, "component":Landroid/content/ComponentName;
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 112
    return-void

    .line 106
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v4    # "component":Landroid/content/ComponentName;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "More than one host service found"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "No host service found"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private disConnect(Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;)V
    .locals 1
    .param p1, "serviceConnectionInner"    # Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    .line 121
    if-eqz p1, :cond_1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection;->mContext:Landroid/content/Context;

    .line 124
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 131
    :cond_1
    :goto_0
    return-void
.end method

.method private startProcess(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "iqys://com.qiyi.video.iv/launch"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 74
    .local v1, "parse":Landroid/net/Uri;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 75
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method


# virtual methods
.method public connect(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qiyi/video/client/IQYSConnection;->mContext:Landroid/content/Context;

    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qiyi/video/client/IQYSConnection;->connectAndTryLaunchProcess(Z)V

    .line 44
    return-void
.end method

.method public disConnect()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection;->mServiceConnectionInner:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    .line 116
    .local v0, "serviceConnectionInner":Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;
    invoke-direct {p0, v0}, Lcom/qiyi/video/client/IQYSConnection;->disConnect(Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;)V

    .line 117
    invoke-direct {p0}, Lcom/qiyi/video/client/IQYSConnection;->clear()V

    .line 118
    return-void
.end method

.method public getService()Lcom/qiyi/video/qys/IQYS;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection;->mService:Lcom/qiyi/video/qys/IQYS;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection;->mServiceConnectionInner:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection;->mServiceConnectionInner:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    invoke-virtual {v0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setListener(Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;

    .line 34
    iput-object p1, p0, Lcom/qiyi/video/client/IQYSConnection;->mListener:Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;

    .line 35
    return-void
.end method

.method public setStatusListener(Lcom/qiyi/video/client/IQYSConnection$QYSConnectionStatusListener;)V
    .locals 0
    .param p1, "QYSConnectionStatusListener"    # Lcom/qiyi/video/client/IQYSConnection$QYSConnectionStatusListener;

    .line 38
    iput-object p1, p0, Lcom/qiyi/video/client/IQYSConnection;->mQYSConnectionStatusListener:Lcom/qiyi/video/client/IQYSConnection$QYSConnectionStatusListener;

    .line 39
    return-void
.end method
