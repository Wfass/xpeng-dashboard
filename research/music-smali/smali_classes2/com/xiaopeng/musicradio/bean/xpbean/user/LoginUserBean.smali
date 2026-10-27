.class public Lcom/xiaopeng/musicradio/bean/xpbean/user/LoginUserBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "LoginUserBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/user/LoginUserBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/xpbean/user/LoginUserBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/xpbean/user/LoginUserBean$DataBean;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/LoginUserBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/user/LoginUserBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/xpbean/user/LoginUserBean$DataBean;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/LoginUserBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/user/LoginUserBean$DataBean;

    return-void
.end method
