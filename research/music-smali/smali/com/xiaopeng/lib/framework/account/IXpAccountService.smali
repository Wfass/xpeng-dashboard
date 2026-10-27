.class public interface abstract Lcom/xiaopeng/lib/framework/account/IXpAccountService;
.super Ljava/lang/Object;
.source "IXpAccountService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/account/IXpAccountService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getUserInfo(J)Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;
.end method

.method public abstract init(JLjava/lang/String;)V
.end method

.method public abstract requestAction(JILandroid/os/Bundle;)V
.end method

.method public abstract requestOAuth(JLjava/lang/String;Lcom/xiaopeng/lib/framework/account/IXpCallback;)V
.end method

.method public abstract requestOTP(JLjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/account/IXpCallback;)V
.end method

.method public abstract subscribe(JLandroid/os/Bundle;Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener;)V
.end method

.method public abstract unsubscribe(JLandroid/os/Bundle;Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener;)V
.end method
