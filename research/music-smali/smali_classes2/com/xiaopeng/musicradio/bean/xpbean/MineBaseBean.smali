.class public Lcom/xiaopeng/musicradio/bean/xpbean/MineBaseBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "MineBaseBean.java"


# instance fields
.field private data:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MineBaseBean;->setCode(I)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/xpbean/MineBaseBean;->setMsg(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getData()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineBaseBean;->data:I

    return v0
.end method

.method public setData(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineBaseBean;->data:I

    return-void
.end method
