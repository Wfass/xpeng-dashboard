.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAccount;
.super Ljava/lang/Object;
.source "IAccount.java"


# virtual methods
.method public abstract getUserInfo()Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
.end method

.method public abstract init(Landroid/app/Application;Ljava/lang/String;)V
.end method

.method public abstract init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract login()V
.end method

.method public abstract logout()V
.end method

.method public abstract requestOAuth(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
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
