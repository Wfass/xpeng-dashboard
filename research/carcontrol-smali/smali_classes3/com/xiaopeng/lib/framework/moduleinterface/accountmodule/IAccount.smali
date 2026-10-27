.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAccount;
.super Ljava/lang/Object;
.source "IAccount.java"


# virtual methods
.method public abstract getUserInfo()Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/AbsException;
        }
    .end annotation
.end method

.method public abstract init(Landroid/app/Application;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "application",
            "appId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/AbsException;
        }
    .end annotation
.end method

.method public abstract init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "application",
            "appId",
            "packageName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/AbsException;
        }
    .end annotation
.end method

.method public abstract login()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/AbsException;
        }
    .end annotation
.end method

.method public abstract logout()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/AbsException;
        }
    .end annotation
.end method

.method public abstract requestOAuth(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAuthInfo;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestOAuth(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appID",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAuthInfo;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestOTP(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deviceID",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IOTPInfo;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;",
            ">;)V"
        }
    .end annotation
.end method
