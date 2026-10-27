.class public Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;
.super Ljava/lang/Object;
.source "VipUrlResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuyUrlListBean"
.end annotation


# instance fields
.field private dolbyExchangeUrl:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

.field private neteaseBuyUrl:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

.field private qqBuyUrl:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

.field private readingBuyUrl:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDolbyExchangeUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;->dolbyExchangeUrl:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    return-object v0
.end method

.method public getNeteaseBuyUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;->neteaseBuyUrl:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    return-object v0
.end method

.method public getQqBuyUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;->qqBuyUrl:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    return-object v0
.end method

.method public getReadingBuyUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;->readingBuyUrl:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    return-object v0
.end method

.method public setDolbyExchangeUrl(Lcom/xiaopeng/musicradio/bean/VipUrlInfo;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;->dolbyExchangeUrl:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    return-void
.end method

.method public setNeteaseBuyUrl(Lcom/xiaopeng/musicradio/bean/VipUrlInfo;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;->neteaseBuyUrl:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    return-void
.end method

.method public setQqBuyUrl(Lcom/xiaopeng/musicradio/bean/VipUrlInfo;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;->qqBuyUrl:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    return-void
.end method

.method public setReadingBuyUrl(Lcom/xiaopeng/musicradio/bean/VipUrlInfo;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;->readingBuyUrl:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    return-void
.end method
