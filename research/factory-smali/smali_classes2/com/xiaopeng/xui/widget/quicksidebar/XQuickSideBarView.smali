.class public Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;
.super Lcom/xiaopeng/xui/view/XView;
.source "XQuickSideBarView.java"

# interfaces
.implements Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;


# instance fields
.field private listener:Lcom/xiaopeng/xui/widget/quicksidebar/listener/OnQuickSideBarTouchListener;

.field private mAlwaysHighlight:Z

.field private mChoose:I

.field private mHeight:I

.field private mIsTouchMove:Z

.field private mItemHeight:F

.field private final mItemStartY:F

.field private mItemWidth:F

.field private mLetters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mTextColor:I

.field private mTextColorChoose:I

.field private mTextSize:F

.field private mTextSizeChoose:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mChoose:I

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    .line 39
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mItemStartY:F

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mIsTouchMove:Z

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method private getColor(I)I
    .locals 2
    .param p1, "resourceId"    # I

    .line 228
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$array;->x_quick_side_bar_letters:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mLetters:Ljava/util/List;

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->initDefaultColor()V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_sidebar_textsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextSize:F

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_sidebar_choose_textsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextSizeChoose:F

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_sidebar_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mItemHeight:F

    .line 63
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 65
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarTextColor:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextColor:I

    .line 66
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarTextColorChoose:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextColorChoose:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextColorChoose:I

    .line 67
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarTextSize:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextSize:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextSize:F

    .line 68
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarTextSizeChoose:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextSizeChoose:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextSizeChoose:F

    .line 69
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarHighlight:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mAlwaysHighlight:Z

    .line 70
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarTextSize:I

    sget v3, Lcom/xiaopeng/xpui/R$dimen;->x_sidebar_textsize:I

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->create(Landroid/content/res/TypedArray;II)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    move-result-object v2

    .line 72
    .local v2, "xFontScaleHelper":Lcom/xiaopeng/xui/view/font/XFontScaleHelper;
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarTextSizeChoose:I

    sget v4, Lcom/xiaopeng/xpui/R$dimen;->x_sidebar_choose_textsize:I

    invoke-static {v1, v3, v4}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->create(Landroid/content/res/TypedArray;II)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    move-result-object v3

    .line 74
    .local v3, "xFontScaleHelperChoose":Lcom/xiaopeng/xui/view/font/XFontScaleHelper;
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v4, :cond_0

    .line 75
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    new-instance v5, Lcom/xiaopeng/xui/widget/quicksidebar/-$$Lambda$XQuickSideBarView$1ZB34fs1FOEgdHSSURf-ptiofIs;

    invoke-direct {v5, p0, v2, v3}, Lcom/xiaopeng/xui/widget/quicksidebar/-$$Lambda$XQuickSideBarView$1ZB34fs1FOEgdHSSURf-ptiofIs;-><init>(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/view/XViewDelegate;->setFontScaleChangeCallback(Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;)V

    .line 86
    :cond_0
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarItemHeight:I

    iget v5, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mItemHeight:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mItemHeight:F

    .line 88
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "xFontScaleHelper":Lcom/xiaopeng/xui/view/font/XFontScaleHelper;
    .end local v3    # "xFontScaleHelperChoose":Lcom/xiaopeng/xui/view/font/XFontScaleHelper;
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xui/widget/quicksidebar/-$$Lambda$XQuickSideBarView$wKv8A9QBMc1F3uP8mqZVN01Nvxo;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/widget/quicksidebar/-$$Lambda$XQuickSideBarView$wKv8A9QBMc1F3uP8mqZVN01Nvxo;-><init>(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 96
    :cond_2
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->setSoundEffectsEnabled(Z)V

    .line 97
    return-void
.end method

.method private initDefaultColor()V
    .locals 1

    .line 223
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_theme_text_03:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextColor:I

    .line 224
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_side_bar_text_choose_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextColorChoose:I

    .line 225
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V
    .locals 1
    .param p1, "xFontScaleHelper"    # Lcom/xiaopeng/xui/view/font/XFontScaleHelper;
    .param p2, "xFontScaleHelperChoose"    # Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->getCurrentFontSize(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextSize:F

    .line 79
    :cond_0
    if-eqz p2, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->getCurrentFontSize(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextSizeChoose:F

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->invalidate()V

    .line 83
    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->initDefaultColor()V

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->invalidate()V

    .line 94
    return-void
.end method

.method private setSideBarHighLight(I)V
    .locals 2
    .param p1, "position"    # I

    .line 264
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mAlwaysHighlight:Z

    if-nez v0, :cond_0

    .line 265
    return-void

    .line 267
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mIsTouchMove:Z

    if-eqz v0, :cond_1

    .line 268
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mLetters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 271
    .local v0, "sideSize":I
    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    .line 272
    iget v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mChoose:I

    if-eq v1, p1, :cond_2

    .line 273
    iput p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mChoose:I

    .line 274
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->invalidate()V

    .line 277
    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 155
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 156
    .local v1, "y":F
    iget v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mChoose:I

    .line 157
    .local v2, "oldChoose":I
    const/high16 v3, 0x41600000    # 14.0f

    sub-float v3, v1, v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mItemHeight:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 158
    .local v3, "newChoose":I
    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    iput-boolean v7, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mIsTouchMove:Z

    .line 187
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->release(I)V

    .line 188
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->listener:Lcom/xiaopeng/xui/widget/quicksidebar/listener/OnQuickSideBarTouchListener;

    if-eqz v5, :cond_0

    .line 189
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->listener:Lcom/xiaopeng/xui/widget/quicksidebar/listener/OnQuickSideBarTouchListener;

    invoke-interface {v5, v7}, Lcom/xiaopeng/xui/widget/quicksidebar/listener/OnQuickSideBarTouchListener;->onLetterTouched(Z)V

    .line 191
    :cond_0
    iput v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mChoose:I

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->invalidate()V

    .line 193
    goto :goto_0

    .line 160
    :pswitch_1
    iput-boolean v7, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mIsTouchMove:Z

    .line 161
    iput v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mChoose:I

    .line 162
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->listener:Lcom/xiaopeng/xui/widget/quicksidebar/listener/OnQuickSideBarTouchListener;

    if-eqz v4, :cond_1

    .line 163
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->listener:Lcom/xiaopeng/xui/widget/quicksidebar/listener/OnQuickSideBarTouchListener;

    invoke-interface {v4, v7}, Lcom/xiaopeng/xui/widget/quicksidebar/listener/OnQuickSideBarTouchListener;->onLetterTouched(Z)V

    .line 165
    :cond_1
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mAlwaysHighlight:Z

    if-nez v4, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->invalidate()V

    goto :goto_0

    .line 171
    :pswitch_2
    iput-boolean v6, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mIsTouchMove:Z

    .line 172
    if-eq v2, v3, :cond_2

    .line 173
    if-ltz v3, :cond_2

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mLetters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 174
    iput v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mChoose:I

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->invalidate()V

    .line 177
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->play(I)V

    .line 178
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->listener:Lcom/xiaopeng/xui/widget/quicksidebar/listener/OnQuickSideBarTouchListener;

    if-eqz v4, :cond_2

    .line 179
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->listener:Lcom/xiaopeng/xui/widget/quicksidebar/listener/OnQuickSideBarTouchListener;

    invoke-interface {v4, v6}, Lcom/xiaopeng/xui/widget/quicksidebar/listener/OnQuickSideBarTouchListener;->onLetterTouched(Z)V

    .line 180
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->listener:Lcom/xiaopeng/xui/widget/quicksidebar/listener/OnQuickSideBarTouchListener;

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mLetters:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v7, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mChoose:I

    invoke-interface {v4, v5, v7}, Lcom/xiaopeng/xui/widget/quicksidebar/listener/OnQuickSideBarTouchListener;->onLetterScrolling(Ljava/lang/String;I)V

    .line 197
    :cond_2
    :goto_0
    return v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getLetters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mLetters:Ljava/util/List;

    return-object v0
.end method

.method public getListener()Lcom/xiaopeng/xui/widget/quicksidebar/listener/OnQuickSideBarTouchListener;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->listener:Lcom/xiaopeng/xui/widget/quicksidebar/listener/OnQuickSideBarTouchListener;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 115
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mLetters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 118
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 119
    .local v2, "bgRect":Landroid/graphics/Paint;
    iget v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mChoose:I

    if-ne v1, v3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextSizeChoose:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 121
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextColorChoose:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    sget v3, Lcom/xiaopeng/xpui/R$color;->x_side_bar_item_choose_bg_color:I

    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 124
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 125
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    sget v3, Lcom/xiaopeng/xpui/R$color;->x_side_bar_item_bg_color:I

    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    :goto_1
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    iget v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mItemWidth:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 132
    .local v4, "left":F
    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mItemHeight:F

    int-to-float v8, v1

    mul-float/2addr v7, v8

    const/high16 v8, 0x41600000    # 14.0f

    add-float/2addr v7, v8

    iget v9, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mItemWidth:F

    add-float/2addr v9, v4

    add-int/lit8 v10, v1, 0x1

    int-to-float v10, v10

    iget v11, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mItemHeight:F

    mul-float/2addr v10, v11

    add-float/2addr v8, v10

    invoke-direct {v6, v4, v7, v9, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 133
    .local v6, "rectF":Landroid/graphics/RectF;
    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {p1, v6, v7, v7, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 136
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 139
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 140
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/xiaopeng/xpui/R$string;->x_font_typeface_medium:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 142
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 143
    .local v3, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v7, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v8, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v5

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v7, v5

    .line 144
    .local v7, "distance":F
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    add-float/2addr v5, v7

    .line 145
    .local v5, "baseline":F
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mLetters:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    iget-object v10, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v5, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 147
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->reset()V

    .line 116
    .end local v2    # "bgRect":Landroid/graphics/Paint;
    .end local v3    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v4    # "left":F
    .end local v5    # "baseline":F
    .end local v6    # "rectF":Landroid/graphics/RectF;
    .end local v7    # "distance":F
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 150
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public onFontScaleChanged()V
    .locals 0

    .line 102
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 106
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/view/XView;->onMeasure(II)V

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mHeight:I

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mWidth:I

    .line 109
    iget v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mHeight:I

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mLetters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 110
    .local v0, "defaultItemHeight":F
    iget v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mItemHeight:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mItemHeight:F

    :goto_0
    iput v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mItemHeight:F

    .line 111
    iget v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mItemHeight:F

    iput v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mItemWidth:F

    .line 112
    return-void
.end method

.method public setLetters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 218
    .local p1, "letters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mLetters:Ljava/util/List;

    .line 219
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->invalidate()V

    .line 220
    return-void
.end method

.method public setOnQuickSideBarTouchListener(Lcom/xiaopeng/xui/widget/quicksidebar/listener/OnQuickSideBarTouchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xui/widget/quicksidebar/listener/OnQuickSideBarTouchListener;

    .line 205
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->listener:Lcom/xiaopeng/xui/widget/quicksidebar/listener/OnQuickSideBarTouchListener;

    .line 206
    return-void
.end method

.method public setSideBarHighLight(Ljava/lang/String;)V
    .locals 1
    .param p1, "letter"    # Ljava/lang/String;

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->setSideBarHighLight(Ljava/lang/String;Z)V

    .line 233
    return-void
.end method

.method public setSideBarHighLight(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "letter"    # Ljava/lang/String;
    .param p2, "isCaseSensitive"    # Z

    .line 242
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mAlwaysHighlight:Z

    if-nez v0, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mIsTouchMove:Z

    if-eqz v0, :cond_1

    .line 246
    return-void

    .line 248
    :cond_1
    const-string v0, "setSideBarHighLight"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->logD(Ljava/lang/String;)V

    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 251
    if-nez p2, :cond_2

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mLetters:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, "index":I
    goto :goto_0

    .line 254
    .end local v0    # "index":I
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mLetters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 256
    .restart local v0    # "index":I
    :goto_0
    if-ltz v0, :cond_3

    iget v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mChoose:I

    if-eq v1, v0, :cond_3

    .line 257
    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mChoose:I

    .line 258
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->invalidate()V

    .line 261
    .end local v0    # "index":I
    :cond_3
    return-void
.end method
