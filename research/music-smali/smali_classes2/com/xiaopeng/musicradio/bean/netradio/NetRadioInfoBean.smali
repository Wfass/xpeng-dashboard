.class public Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "NetRadioInfoBean.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoBean;->data:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoBean;->data:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    return-void
.end method
