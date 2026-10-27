.class public abstract Lcom/xiaopeng/btservice/base/AbsControl;
.super Ljava/lang/Object;
.source "AbsControl.java"


# instance fields
.field mConnectCompletedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/btservice/base/AbstractConnection$ConnecteCompletedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mConnection:Lcom/xiaopeng/btservice/base/AbstractConnection;

.field public mContext:Landroid/content/Context;

.field public nForeService:Lcom/nforetek/bt/aidl/UiCommand;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/btservice/base/AbsControl;->mConnectCompletedCallbacks:Ljava/util/List;

    .line 26
    new-instance v0, Lcom/xiaopeng/btservice/base/AbsControl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/btservice/base/AbsControl$1;-><init>(Lcom/xiaopeng/btservice/base/AbsControl;)V

    iput-object v0, p0, Lcom/xiaopeng/btservice/base/AbsControl;->mConnection:Lcom/xiaopeng/btservice/base/AbstractConnection;

    return-void
.end method


# virtual methods
.method public getHfpConnectedAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 69
    const-string v0, "getHfpConnectedAddress"

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/btservice/base/AbsControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/btservice/base/AbsControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 72
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/base/AbsControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .local v0, "address1":Ljava/lang/String;
    return-object v0

    .line 74
    .end local v0    # "address1":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/btservice/base/AbsControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public printError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public printLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/btservice/base/AbsControl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/btservice/base/AbsControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/btservice/base/AbsControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v0, :cond_1

    .line 87
    const-string v0, "nForeService == null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1
    return-void
.end method

.method protected abstract registerCallback(Lcom/nforetek/bt/aidl/UiCommand;)V
.end method

.method protected abstract release()V
.end method
