.class public interface abstract Lcom/xiaopeng/lib/framework/account/server/IAccountProvider;
.super Ljava/lang/Object;
.source "IAccountProvider.java"


# virtual methods
.method public abstract action(JLcom/xiaopeng/lib/framework/account/action/AccountAction;Landroid/os/Bundle;)V
.end method

.method public abstract authorize(JLjava/lang/String;Lcom/xiaopeng/lib/framework/account/IXpCallback;)V
.end method

.method public abstract requestOTP(JLjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/account/IXpCallback;)V
.end method

.method public abstract userInfo()Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
.end method
