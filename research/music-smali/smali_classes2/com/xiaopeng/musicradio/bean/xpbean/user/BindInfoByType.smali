.class public Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "BindInfoByType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType;->data:Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType;->data:Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;

    return-void
.end method
