.class public Lcom/qiyi/video/client/IQYSManager;
.super Ljava/lang/Object;
.source "IQYSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;,
        Lcom/qiyi/video/client/IQYSManager$RegisterListener;,
        Lcom/qiyi/video/client/IQYSManager$SINGLE;
    }
.end annotation


# instance fields
.field private final mNative:Lcom/qiyi/video/client/IQYSNative;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/qiyi/video/client/IQYSNative;

    invoke-direct {v0}, Lcom/qiyi/video/client/IQYSNative;-><init>()V

    iput-object v0, p0, Lcom/qiyi/video/client/IQYSManager;->mNative:Lcom/qiyi/video/client/IQYSNative;

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/qiyi/video/client/IQYSManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qiyi/video/client/IQYSManager$1;

    .line 5
    invoke-direct {p0}, Lcom/qiyi/video/client/IQYSManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/qiyi/video/client/IQYSManager;
    .locals 1

    .line 15
    sget-object v0, Lcom/qiyi/video/client/IQYSManager$SINGLE;->INSTANCE:Lcom/qiyi/video/client/IQYSManager;

    return-object v0
.end method


# virtual methods
.method public addConnectStatusChangedListener(Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;)V
    .locals 1
    .param p1, "connectStatusChangedListener"    # Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;

    .line 23
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSManager;->mNative:Lcom/qiyi/video/client/IQYSNative;

    invoke-virtual {v0, p1}, Lcom/qiyi/video/client/IQYSNative;->addConnectStatusChangedListener(Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;)V

    .line 24
    return-void
.end method

.method public getService()Lcom/qiyi/video/client/IQYSService;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSManager;->mNative:Lcom/qiyi/video/client/IQYSNative;

    invoke-virtual {v0}, Lcom/qiyi/video/client/IQYSNative;->getService()Lcom/qiyi/video/client/IQYSService;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSManager;->mNative:Lcom/qiyi/video/client/IQYSNative;

    invoke-virtual {v0}, Lcom/qiyi/video/client/IQYSNative;->isConnected()Z

    move-result v0

    return v0
.end method

.method public register(Landroid/content/Context;Lcom/qiyi/video/client/IQYSManager$RegisterListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/qiyi/video/client/IQYSManager$RegisterListener;

    .line 39
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSManager;->mNative:Lcom/qiyi/video/client/IQYSNative;

    invoke-virtual {v0, p1, p2}, Lcom/qiyi/video/client/IQYSNative;->register(Landroid/content/Context;Lcom/qiyi/video/client/IQYSManager$RegisterListener;)V

    .line 40
    return-void
.end method

.method public removeConnectStatusChangedListener(Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;)V
    .locals 1
    .param p1, "connectStatusChangedListener"    # Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;

    .line 27
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSManager;->mNative:Lcom/qiyi/video/client/IQYSNative;

    invoke-virtual {v0, p1}, Lcom/qiyi/video/client/IQYSNative;->removeConnectStatusChangedListener(Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;)V

    .line 28
    return-void
.end method

.method public unRegister()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSManager;->mNative:Lcom/qiyi/video/client/IQYSNative;

    invoke-virtual {v0}, Lcom/qiyi/video/client/IQYSNative;->unRegister()V

    .line 44
    return-void
.end method
