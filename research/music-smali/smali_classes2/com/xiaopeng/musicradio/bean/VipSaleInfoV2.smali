.class public Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;
.super Ljava/lang/Object;
.source "VipSaleInfoV2.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bannerImgMap:Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;

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
.method public getBannerImgMap()Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;->bannerImgMap:Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setBannerImgMap(Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;->bannerImgMap:Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;->url:Ljava/lang/String;

    return-void
.end method
