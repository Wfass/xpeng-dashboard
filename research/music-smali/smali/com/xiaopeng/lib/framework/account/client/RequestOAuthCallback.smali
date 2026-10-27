.class public Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;
.super Ljava/lang/Object;
.source "RequestOAuthCallback.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestOAuthCallback"


# instance fields
.field private isCallBackDone:Z

.field private mAuthInfo:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAuthInfo;

.field private mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAuthInfo;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAuthInfo;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    .line 28
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dispatchMessage(IJ)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->dispatchMessage(ILjava/lang/String;J)V

    return-void
.end method

.method public dispatchMessage(ILjava/lang/String;J)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 42
    iput v1, v0, Landroid/os/Message;->what:I

    .line 43
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 44
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public dispatchMessage(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAuthInfo;J)V
    .locals 1

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->mAuthInfo:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAuthInfo;

    .line 33
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestOAuthCallback"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->isCallBackDone:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    if-eqz v0, :cond_3

    .line 62
    new-instance v0, Lcom/xiaopeng/lib/framework/account/exception/AuthInfoError;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v0, v2}, Lcom/xiaopeng/lib/framework/account/exception/AuthInfoError;-><init>(I)V

    .line 63
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 64
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/account/exception/AuthInfoError;->setErr(Ljava/lang/String;)V

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;->onFail(Ljava/lang/Object;)V

    .line 67
    iput-boolean v1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->isCallBackDone:Z

    goto :goto_0

    .line 55
    :cond_2
    iget-boolean p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->isCallBackDone:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    if-eqz p1, :cond_3

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->mAuthInfo:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAuthInfo;

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;->onSuccess(Ljava/lang/Object;)V

    .line 57
    iput-boolean v1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->isCallBackDone:Z

    :cond_3
    :goto_0
    return v1
.end method
