.class public Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "NetRadioTagListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;->data:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;->data:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;

    return-void
.end method
