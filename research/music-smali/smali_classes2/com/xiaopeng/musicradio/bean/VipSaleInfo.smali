.class public Lcom/xiaopeng/musicradio/bean/VipSaleInfo;
.super Ljava/lang/Object;
.source "VipSaleInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bannerImg:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBannerImg()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipSaleInfo;->bannerImg:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipSaleInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipSaleInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setBannerImg(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipSaleInfo;->bannerImg:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipSaleInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipSaleInfo;->url:Ljava/lang/String;

    return-void
.end method
