.class public Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;
.super Ljava/lang/Object;
.source "VipSaleInfoV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BannerImgMapBean"
.end annotation


# instance fields
.field private fullImg:Ljava/lang/String;

.field private smallImg:Ljava/lang/String;

.field private thirdImg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFullImg()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;->fullImg:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallImg()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;->smallImg:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdImg()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;->thirdImg:Ljava/lang/String;

    return-object v0
.end method

.method public setFullImg(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;->fullImg:Ljava/lang/String;

    return-void
.end method

.method public setSmallImg(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;->smallImg:Ljava/lang/String;

    return-void
.end method

.method public setThirdImg(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;->thirdImg:Ljava/lang/String;

    return-void
.end method
