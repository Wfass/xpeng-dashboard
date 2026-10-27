.class public Lcom/zhpan/bannerview/manager/AttributeController;
.super Ljava/lang/Object;
.source "AttributeController.java"


# instance fields
.field private final mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;


# direct methods
.method public constructor <init>(Lcom/zhpan/bannerview/manager/BannerOptions;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/zhpan/bannerview/manager/AttributeController;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    return-void
.end method

.method private initBannerAttrs(Landroid/content/res/TypedArray;)V
    .locals 9

    .line 82
    sget v0, Lcom/zhpan/bannerview/R$styleable;->BannerViewPager_bvp_interval:I

    const/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 83
    sget v1, Lcom/zhpan/bannerview/R$styleable;->BannerViewPager_bvp_auto_play:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 84
    sget v3, Lcom/zhpan/bannerview/R$styleable;->BannerViewPager_bvp_can_loop:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 85
    sget v3, Lcom/zhpan/bannerview/R$styleable;->BannerViewPager_bvp_page_margin:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    .line 86
    sget v5, Lcom/zhpan/bannerview/R$styleable;->BannerViewPager_bvp_round_corner:I

    .line 87
    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    .line 88
    sget v5, Lcom/zhpan/bannerview/R$styleable;->BannerViewPager_bvp_reveal_width:I

    const/high16 v6, -0x3b860000    # -1000.0f

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    .line 90
    sget v6, Lcom/zhpan/bannerview/R$styleable;->BannerViewPager_bvp_page_style:I

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 91
    sget v8, Lcom/zhpan/bannerview/R$styleable;->BannerViewPager_bvp_scroll_duration:I

    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 92
    iget-object v7, p0, Lcom/zhpan/bannerview/manager/AttributeController;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-virtual {v7, v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->setInterval(I)V

    .line 93
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/AttributeController;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-virtual {v0, v1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setAutoPlay(Z)V

    .line 94
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/AttributeController;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-virtual {v0, v2}, Lcom/zhpan/bannerview/manager/BannerOptions;->setCanLoop(Z)V

    .line 95
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/AttributeController;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-virtual {v0, v3}, Lcom/zhpan/bannerview/manager/BannerOptions;->setPageMargin(I)V

    .line 96
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/AttributeController;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-virtual {v0, v4}, Lcom/zhpan/bannerview/manager/BannerOptions;->setRoundRectRadius(I)V

    .line 97
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/AttributeController;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-virtual {v0, v5}, Lcom/zhpan/bannerview/manager/BannerOptions;->setRightRevealWidth(I)V

    .line 98
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/AttributeController;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-virtual {v0, v5}, Lcom/zhpan/bannerview/manager/BannerOptions;->setLeftRevealWidth(I)V

    .line 99
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/AttributeController;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-virtual {v0, v6}, Lcom/zhpan/bannerview/manager/BannerOptions;->setPageStyle(I)V

    .line 100
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/AttributeController;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setScrollDuration(I)V

    return-void
.end method

.method private initIndicatorAttrs(Landroid/content/res/TypedArray;)V
    .locals 8

    .line 56
    sget v0, Lcom/zhpan/bannerview/R$styleable;->BannerViewPager_bvp_indicator_checked_color:I

    const-string v1, "#8C18171C"

    .line 58
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 59
    sget v1, Lcom/zhpan/bannerview/R$styleable;->BannerViewPager_bvp_indicator_normal_color:I

    const-string v2, "#8C6C6D72"

    .line 61
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 60
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 62
    sget v2, Lcom/zhpan/bannerview/R$styleable;->BannerViewPager_bvp_indicator_radius:I

    const/high16 v3, 0x41000000    # 8.0f

    .line 64
    invoke-static {v3}, Lcom/zhpan/bannerview/utils/BannerUtils;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    .line 63
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    .line 65
    sget v3, Lcom/zhpan/bannerview/R$styleable;->BannerViewPager_bvp_indicator_gravity:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 66
    sget v5, Lcom/zhpan/bannerview/R$styleable;->BannerViewPager_bvp_indicator_style:I

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 67
    sget v6, Lcom/zhpan/bannerview/R$styleable;->BannerViewPager_bvp_indicator_slide_mode:I

    .line 68
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 69
    sget v7, Lcom/zhpan/bannerview/R$styleable;->BannerViewPager_bvp_indicator_visibility:I

    .line 70
    invoke-virtual {p1, v7, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 71
    iget-object v4, p0, Lcom/zhpan/bannerview/manager/AttributeController;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-virtual {v4, v1, v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->setIndicatorSliderColor(II)V

    .line 72
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/AttributeController;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-virtual {v0, v2, v2}, Lcom/zhpan/bannerview/manager/BannerOptions;->setIndicatorSliderWidth(II)V

    .line 73
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/AttributeController;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-virtual {v0, v3}, Lcom/zhpan/bannerview/manager/BannerOptions;->setIndicatorGravity(I)V

    .line 74
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/AttributeController;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-virtual {v0, v5}, Lcom/zhpan/bannerview/manager/BannerOptions;->setIndicatorStyle(I)V

    .line 75
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/AttributeController;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-virtual {v0, v6}, Lcom/zhpan/bannerview/manager/BannerOptions;->setIndicatorSlideMode(I)V

    .line 76
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/AttributeController;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setIndicatorVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/zhpan/bannerview/manager/AttributeController;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    int-to-float v0, v2

    invoke-virtual {p1, v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->setIndicatorGap(F)V

    .line 78
    iget-object p1, p0, Lcom/zhpan/bannerview/manager/AttributeController;->mBannerOptions:Lcom/zhpan/bannerview/manager/BannerOptions;

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2}, Lcom/zhpan/bannerview/manager/BannerOptions;->setIndicatorHeight(I)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 48
    sget-object v0, Lcom/zhpan/bannerview/R$styleable;->BannerViewPager:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Lcom/zhpan/bannerview/manager/AttributeController;->initBannerAttrs(Landroid/content/res/TypedArray;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/zhpan/bannerview/manager/AttributeController;->initIndicatorAttrs(Landroid/content/res/TypedArray;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method
