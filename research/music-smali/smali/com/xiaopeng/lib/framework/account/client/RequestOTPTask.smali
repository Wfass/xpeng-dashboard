.class public Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;
.super Ljava/lang/Object;
.source "RequestOTPTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestOTPTask"


# instance fields
.field private mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IOTPInfo;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;",
            ">;"
        }
    .end annotation
.end field

.field private mContextProvider:Lcom/xiaopeng/lib/framework/account/client/IContextProvider;

.field private mDeviceID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/account/client/IContextProvider;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/framework/account/client/IContextProvider;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IOTPInfo;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;->mContextProvider:Lcom/xiaopeng/lib/framework/account/client/IContextProvider;

    .line 30
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;->mDeviceID:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;->notifyFailed(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    return-object p0
.end method

.method private notifyFailed(I)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    new-instance v1, Lcom/xiaopeng/lib/framework/account/exception/OTPInfoError;

    invoke-direct {v1, p1}, Lcom/xiaopeng/lib/framework/account/exception/OTPInfoError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;->onFail(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;->mContextProvider:Lcom/xiaopeng/lib/framework/account/client/IContextProvider;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/account/client/IContextProvider;->getService()Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    move-result-object v1

    const/16 v0, 0x3e8

    const-string v7, "RequestOTPTask"

    if-nez v1, :cond_0

    const-string v1, "RequestOTPTask run, IXpAccountService is null"

    .line 38
    invoke-static {v7, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;->notifyFailed(I)V

    return-void

    .line 43
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;->mContextProvider:Lcom/xiaopeng/lib/framework/account/client/IContextProvider;

    invoke-interface {v4}, Lcom/xiaopeng/lib/framework/account/client/IContextProvider;->getAppID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;->mDeviceID:Ljava/lang/String;

    new-instance v6, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask$1;

    invoke-direct {v6, p0}, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask$1;-><init>(Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;)V

    invoke-interface/range {v1 .. v6}, Lcom/xiaopeng/lib/framework/account/IXpAccountService;->requestOTP(JLjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/account/IXpCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestOTPTask run, exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;->notifyFailed(I)V

    :goto_0
    return-void
.end method
