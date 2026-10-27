.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
.super Ljava/lang/Object;
.source "IUserInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;,
        Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;
    }
.end annotation


# virtual methods
.method public abstract getAvatar()Ljava/lang/String;
.end method

.method public abstract getInfoType()Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;
.end method

.method public abstract getUserName()Ljava/lang/String;
.end method

.method public abstract getUserType()Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;
.end method

.method public abstract setAvatar(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
.end method

.method public abstract setInfoType(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
.end method

.method public abstract setUserName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
.end method

.method public abstract setUserType(I)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setUserType(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
.end method
