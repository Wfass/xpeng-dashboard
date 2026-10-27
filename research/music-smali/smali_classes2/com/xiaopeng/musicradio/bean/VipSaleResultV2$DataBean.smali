.class public Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean;
.super Ljava/lang/Object;
.source "VipSaleResultV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/VipSaleResultV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;
    }
.end annotation


# instance fields
.field private bannerMap:Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBannerMap()Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean;->bannerMap:Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;

    return-object v0
.end method

.method public setBannerMap(Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean;->bannerMap:Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;

    return-void
.end method
