.class public Lcom/xiaopeng/musicradio/bean/UserBuyUrlResult;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "UserBuyUrlResult.java"


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/UserBuyUrl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/UserBuyUrl;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/UserBuyUrlResult;->data:Lcom/xiaopeng/musicradio/bean/UserBuyUrl;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/UserBuyUrl;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/UserBuyUrlResult;->data:Lcom/xiaopeng/musicradio/bean/UserBuyUrl;

    return-void
.end method
