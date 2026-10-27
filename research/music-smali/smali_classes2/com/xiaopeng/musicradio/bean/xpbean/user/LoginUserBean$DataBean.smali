.class public Lcom/xiaopeng/musicradio/bean/xpbean/user/LoginUserBean$DataBean;
.super Ljava/lang/Object;
.source "LoginUserBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/user/LoginUserBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private openId:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOpenId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/LoginUserBean$DataBean;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/LoginUserBean$DataBean;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/LoginUserBean$DataBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/LoginUserBean$DataBean;->openId:Ljava/lang/String;

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/LoginUserBean$DataBean;->sid:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/LoginUserBean$DataBean;->uid:Ljava/lang/String;

    return-void
.end method
