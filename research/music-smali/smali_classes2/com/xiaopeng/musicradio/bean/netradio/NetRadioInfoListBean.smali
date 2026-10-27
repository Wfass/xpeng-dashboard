.class public Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "NetRadioInfoListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;->data:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;->data:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;

    return-void
.end method
