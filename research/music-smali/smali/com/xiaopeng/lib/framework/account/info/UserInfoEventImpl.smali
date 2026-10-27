.class public Lcom/xiaopeng/lib/framework/account/info/UserInfoEventImpl;
.super Ljava/lang/Object;
.source "UserInfoEventImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfoEvent;


# instance fields
.field private mUserInfo:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserInfo()Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoEventImpl;->mUserInfo:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;

    return-object v0
.end method

.method public setUserInfo(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfoEvent;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoEventImpl;->mUserInfo:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserInfoEventImpl;{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoEventImpl;->mUserInfo:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;

    if-nez v1, :cond_0

    const-string v1, " mUserInfo is null }"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
