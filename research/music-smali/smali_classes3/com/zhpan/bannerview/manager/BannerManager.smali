.class public Lcom/zhpan/bannerview/manager/BannerManager;
.super Ljava/lang/Object;
.source "BannerManager.java"


# instance fields
.field private final mAttributeController:Lcom/zhpan/bannerview/manager/AttributeController;

.field private mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

.field private final mCompositePageTransformer:Landroidx/viewpager2/widget/CompositePageTransformer;

.field private mDefaultPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

.field private mMarginPageTransformer:Landroidx/viewpager2/widget/MarginPageTransformer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-direct {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;-><init>()V

    iput-object v0, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    .line 51
    new-instance v0, Lcom/zhpan/bannerview/manager/AttributeController;

    iget-object v1, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-direct {v0, v1}, Lcom/zhpan/bannerview/manager/AttributeController;-><init>(Lcom/zhpan/bannerview/manager/BannerOptions;)V

    iput-object v0, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mAttributeController:Lcom/zhpan/bannerview/manager/AttributeController;

    .line 52
    new-instance v0, Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-direct {v0}, Landroidx/viewpager2/widget/CompositePageTransformer;-><init>()V

    iput-object v0, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mCompositePageTransformer:Landroidx/viewpager2/widget/CompositePageTransformer;

    return-void
.end method


# virtual methods
.method public addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mCompositePageTransformer:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-void
.end method

.method public createMarginTransformer()V
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/zhpan/bannerview/manager/BannerManager;->removeMarginPageTransformer()V

    .line 96
    new-instance v0, Landroidx/viewpager2/widget/MarginPageTransformer;

    iget-object v1, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-virtual {v1}, Lcom/zhpan/bannerview/manager/BannerOptions;->getPageMargin()I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/MarginPageTransformer;-><init>(I)V

    iput-object v0, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mMarginPageTransformer:Landroidx/viewpager2/widget/MarginPageTransformer;

    .line 97
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mCompositePageTransformer:Landroidx/viewpager2/widget/CompositePageTransformer;

    iget-object v1, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mMarginPageTransformer:Landroidx/viewpager2/widget/MarginPageTransformer;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-void
.end method

.method public getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-direct {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;-><init>()V

    iput-object v0, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    return-object v0
.end method

.method public getCompositePageTransformer()Landroidx/viewpager2/widget/CompositePageTransformer;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mCompositePageTransformer:Landroidx/viewpager2/widget/CompositePageTransformer;

    return-object v0
.end method

.method public initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mAttributeController:Lcom/zhpan/bannerview/manager/AttributeController;

    invoke-virtual {v0, p1, p2}, Lcom/zhpan/bannerview/manager/AttributeController;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public removeDefaultPageTransformer()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mDefaultPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mCompositePageTransformer:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/CompositePageTransformer;->removeTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    :cond_0
    return-void
.end method

.method public removeMarginPageTransformer()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mMarginPageTransformer:Landroidx/viewpager2/widget/MarginPageTransformer;

    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mCompositePageTransformer:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/CompositePageTransformer;->removeTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    :cond_0
    return-void
.end method

.method public removeTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mCompositePageTransformer:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/CompositePageTransformer;->removeTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-void
.end method

.method public setMultiPageStyle(ZF)V
    .locals 7

    .line 101
    invoke-virtual {p0}, Lcom/zhpan/bannerview/manager/BannerManager;->removeDefaultPageTransformer()V

    if-eqz p1, :cond_0

    .line 102
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 103
    new-instance p1, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;

    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    .line 104
    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->getOrientation()I

    move-result v2

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;-><init>(IFFFF)V

    iput-object p1, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mDefaultPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    goto :goto_0

    .line 106
    :cond_0
    new-instance p1, Lcom/zhpan/bannerview/transform/ScaleInTransformer;

    invoke-direct {p1, p2}, Lcom/zhpan/bannerview/transform/ScaleInTransformer;-><init>(F)V

    iput-object p1, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mDefaultPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    .line 108
    :goto_0
    iget-object p1, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mCompositePageTransformer:Landroidx/viewpager2/widget/CompositePageTransformer;

    iget-object p2, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mDefaultPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-void
.end method

.method public setPageMargin(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerManager;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setPageMargin(I)V

    return-void
.end method
