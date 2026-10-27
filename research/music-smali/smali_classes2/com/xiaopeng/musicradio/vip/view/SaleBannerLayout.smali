.class public Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "SaleBannerLayout.java"


# instance fields
.field private mImageView:Lcom/xiaopeng/xui/widget/XImageView;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mType:I

.field private mVipSaleInfo:Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mType:I

    .line 30
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mType:I

    .line 30
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mType:I

    .line 30
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$f;->item_salebanner_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->image:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mImageView:Lcom/xiaopeng/xui/widget/XImageView;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 83
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onAttachedToWindow()V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mVipSaleInfo:Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;

    if-eqz v0, :cond_0

    .line 85
    iget v1, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mType:I

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->setInfo(Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;I)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mVipSaleInfo:Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;

    if-eqz p1, :cond_0

    .line 77
    iget v0, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mType:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->setInfo(Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;I)V

    :cond_0
    return-void
.end method

.method public setInfo(Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;I)V
    .locals 3

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mVipSaleInfo:Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;

    .line 54
    iput p2, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mType:I

    .line 55
    sget p2, Lcom/xiaopeng/musicradio/common/k$d;->item_bg_default:I

    .line 56
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;->getBannerImgMap()Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;->getSmallImg()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;->getBannerImgMap()Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;->getFullImg()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;->getBannerImgMap()Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2$BannerImgMapBean;->getThirdImg()Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object v2, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 60
    iget-object v2, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    iget-object v2, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mImageView:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {v0, p1, p2, v1}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mImageView:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {p1, v0, p2, v1}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mImageView:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {p1, v1, p2, v0}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->mImageView:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {p1, v1, p2, v0}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    :goto_0
    return-void
.end method
