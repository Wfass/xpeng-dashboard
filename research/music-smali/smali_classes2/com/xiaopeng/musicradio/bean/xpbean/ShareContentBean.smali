.class public Lcom/xiaopeng/musicradio/bean/xpbean/ShareContentBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "ShareContentBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/ShareContentBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/xpbean/ShareContentBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/xpbean/ShareContentBean$DataBean;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ShareContentBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/ShareContentBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/xpbean/ShareContentBean$DataBean;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ShareContentBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/ShareContentBean$DataBean;

    return-void
.end method
