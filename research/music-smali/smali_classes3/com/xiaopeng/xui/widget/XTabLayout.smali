.class public Lcom/xiaopeng/xui/widget/XTabLayout;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XTabLayout.java"

# interfaces
.implements Lbxt;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListenerAdapter;,
        Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;,
        Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DURATION:J = 0x12cL

.field private static final INDICATOR_DAY_HEIGHT_PERCENT:F = 1.0f

.field private static final K:D = 1.048

.field private static final K2:D = 4.648

.field public static final STYLE_DAY:I = 0x1

.field public static final STYLE_NIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "xpui-XTabLayout"


# instance fields
.field private final MARGIN_DAY:I

.field private mBlurPaint:Landroid/graphics/Paint;

.field private mBlurPaint2:Landroid/graphics/Paint;

.field private mChildClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentEnd:I

.field private mCurrentEnd2:I

.field private mCurrentStart:I

.field private mCurrentStart2:I

.field private mDivideValue:F

.field private mIconVuiLabels:[Ljava/lang/CharSequence;

.field private mIndicatorAnimatorEnable:Z

.field private mIndicatorColor:I

.field private mIndicatorColor2:I

.field private mIndicatorColorFrom:I

.field private mIndicatorColorTo:I

.field private mIndicatorDayNightDiff:Z

.field private mIndicatorHeight:F

.field private mIndicatorMarginBottom:F

.field private mIndicatorMaxHeight:F

.field private mIndicatorMinHeight:F

.field private mIndicatorShadowColor:I

.field private mIndicatorShadowColor2:I

.field private mIndicatorShadowRadius:F

.field private mIndicatorShadowRadius2:F

.field private mIndicatorWidth:F

.field private mIndicatorWidthPercent:F

.field private mIsDetachedFromWindow:Z

.field private mIsDetachedNightTheme:Z

.field private mOnTabChangeListener:Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

.field private mPaddingNight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaint2:Landroid/graphics/Paint;

.field private mSelectTabIndex:I

.field private mStyle:I

.field private mTabCustomBackground:Z

.field private mTabsBarStyle:Z

.field private mTempEnd:I

.field private mTempEnd2:I

.field private mTempStart:I

.field private mTempStart2:I

.field private mTitleIcons:[I

.field private mTitleString:[Ljava/lang/CharSequence;

.field private mTitleTextColorRes:I

.field private mTitleTextColorStateList:Landroid/content/res/ColorStateList;

.field private mTitleTextSize:F

.field private mToEnd:I

.field private mToEnd2:I

.field private mToStart:I

.field private mToStart2:I

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    if-nez p4, :cond_0

    .line 127
    sget p4, Lbyg$m;->XTabLayoutAppearance:I

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->MARGIN_DAY:I

    .line 72
    new-instance p4, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p4, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    .line 73
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mBlurPaint:Landroid/graphics/Paint;

    .line 74
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint2:Landroid/graphics/Paint;

    .line 75
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mBlurPaint2:Landroid/graphics/Paint;

    .line 79
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentStart:I

    .line 80
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentEnd:I

    .line 81
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentStart2:I

    .line 82
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentEnd2:I

    .line 83
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart:I

    .line 84
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart2:I

    .line 85
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd:I

    .line 86
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd2:I

    .line 87
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart:I

    .line 88
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart2:I

    .line 89
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd:I

    .line 90
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd2:I

    const p4, 0x3f19999a    # 0.6f

    .line 91
    iput p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mDivideValue:F

    const/4 p4, -0x1

    .line 92
    iput p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    const/4 v1, 0x2

    .line 93
    iput v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    .line 104
    new-instance v2, Lcom/xiaopeng/xui/widget/XTabLayout$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/widget/XTabLayout$1;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mChildClickListener:Landroid/view/View$OnClickListener;

    .line 907
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIsDetachedFromWindow:Z

    .line 128
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-gt v2, v3, :cond_1

    const/4 v2, 0x0

    .line 129
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    if-nez p3, :cond_2

    .line 133
    sget p3, Lbyg$m;->XTabLayoutAppearance:I

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lbyg$n;->XTabLayout:[I

    sget v4, Lbyg$m;->XTabLayoutAppearance:I

    invoke-virtual {v2, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 136
    sget p3, Lbyg$n;->XTabLayout_titles:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleString:[Ljava/lang/CharSequence;

    .line 137
    sget p3, Lbyg$n;->XTabLayout_titleTextSize:I

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleTextSize:F

    .line 139
    sget p3, Lbyg$n;->XTabLayout_titleTextSize:I

    invoke-static {p2, p3}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->create(Landroid/content/res/TypedArray;I)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 140
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v2, :cond_3

    .line 141
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    new-instance v3, Lcom/xiaopeng/xui/widget/-$$Lambda$XTabLayout$Z8VnPCfc0CTRF4FLt1FkISn004c;

    invoke-direct {v3, p0, p3}, Lcom/xiaopeng/xui/widget/-$$Lambda$XTabLayout$Z8VnPCfc0CTRF4FLt1FkISn004c;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/view/XViewDelegate;->setFontScaleChangeCallback(Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;)V

    .line 152
    :cond_3
    sget p3, Lbyg$n;->XTabLayout_titleTextColorStateList:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleTextColorStateList:Landroid/content/res/ColorStateList;

    .line 153
    sget p3, Lbyg$n;->XTabLayout_selectTab:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    .line 154
    sget v2, Lbyg$n;->XTabLayout_indicatorWidth:I

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorWidth:F

    .line 155
    sget v2, Lbyg$n;->XTabLayout_indicatorWidthPercent:I

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {p2, v2, v0, v0, v3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorWidthPercent:F

    .line 156
    sget v2, Lbyg$n;->XTabLayout_indicatorMaxHeight:I

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorMaxHeight:F

    .line 157
    sget v2, Lbyg$n;->XTabLayout_indicatorMinHeight:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorMinHeight:F

    .line 158
    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorMaxHeight:F

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorHeight:F

    .line 159
    sget v2, Lbyg$n;->XTabLayout_indicatorMarginBottom:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/xiaopeng/xui/widget/XTabLayout;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorMarginBottom:F

    .line 160
    sget v2, Lbyg$n;->XTabLayout_indicatorColor:I

    sget v4, Lbyg$e;->x_theme_primary_normal:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorColor:I

    .line 162
    sget v2, Lbyg$n;->XTabLayout_indicatorColorFrom:I

    invoke-virtual {p2, v2, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorColorFrom:I

    .line 163
    sget v2, Lbyg$n;->XTabLayout_indicatorColorTo:I

    invoke-virtual {p2, v2, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorColorTo:I

    .line 164
    sget v2, Lbyg$n;->XTabLayout_indicatorShadowColor:I

    const v4, -0xf25107

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorShadowColor:I

    .line 165
    sget v2, Lbyg$n;->XTabLayout_indicatorShadowRadius:I

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorShadowRadius:F

    .line 166
    sget v2, Lbyg$n;->XTabLayout_indicatorColor2:I

    sget v5, Lbyg$e;->x_table_indicator_color:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorColor2:I

    .line 167
    sget v2, Lbyg$n;->XTabLayout_indicatorShadowColor2:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorShadowColor2:I

    .line 168
    sget v2, Lbyg$n;->XTabLayout_indicatorShadowRadius2:I

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorShadowRadius2:F

    .line 169
    sget v2, Lbyg$n;->XTabLayout_indicatorAnimatorEnable:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorAnimatorEnable:Z

    .line 170
    sget v2, Lbyg$n;->XTabLayout_titleTextColorStateList:I

    invoke-virtual {p2, v2, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    iput p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleTextColorRes:I

    .line 171
    sget p4, Lbyg$n;->XTabLayout_tabsBarStyle:I

    invoke-virtual {p2, p4, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTabsBarStyle:Z

    .line 172
    sget p4, Lbyg$n;->XTabLayout_tabCustomBackground:I

    invoke-virtual {p2, p4, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTabCustomBackground:Z

    .line 173
    sget p4, Lbyg$n;->XTabLayout_tabPaddingNight:I

    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->dp(I)I

    move-result v2

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaddingNight:I

    .line 174
    sget p4, Lbyg$n;->XTabLayout_indicatorDayNightDiff:I

    invoke-virtual {p2, p4, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorDayNightDiff:Z

    .line 175
    sget p4, Lbyg$n;->XTabLayout_tabLayoutIcons:I

    invoke-virtual {p2, p4, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-eqz p4, :cond_5

    .line 177
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 178
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleIcons:[I

    move v2, p1

    .line 179
    :goto_0
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 180
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleIcons:[I

    invoke-virtual {p4, v2, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_4
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    :cond_5
    sget p4, Lbyg$n;->XTabLayout_tabLayoutVuiLabels:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p4

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIconVuiLabels:[Ljava/lang/CharSequence;

    const/16 p4, 0x11

    .line 185
    invoke-virtual {p0, p4}, Lcom/xiaopeng/xui/widget/XTabLayout;->setGravity(I)V

    .line 186
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->setWillNotDraw(Z)V

    .line 188
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->init()V

    .line 189
    invoke-direct {p0, p3, p1, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->selectTab(IZZ)V

    .line 191
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->setStyle(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XTabLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XTabLayout;->selectTab(IZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart:I

    return p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentStart:I

    return p0
.end method

.method static synthetic access$1202(Lcom/xiaopeng/xui/widget/XTabLayout;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart:I

    return p1
.end method

.method static synthetic access$1302(Lcom/xiaopeng/xui/widget/XTabLayout;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd:I

    return p1
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentEnd:I

    return p0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd:I

    return p0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart2:I

    return p0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentStart2:I

    return p0
.end method

.method static synthetic access$1802(Lcom/xiaopeng/xui/widget/XTabLayout;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart2:I

    return p1
.end method

.method static synthetic access$1902(Lcom/xiaopeng/xui/widget/XTabLayout;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd2:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/widget/XTabLayout;)Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mOnTabChangeListener:Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentEnd2:I

    return p0
.end method

.method static synthetic access$2100(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd2:I

    return p0
.end method

.method static synthetic access$2200(Lcom/xiaopeng/xui/widget/XTabLayout;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->assignPosition()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    return p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/xui/widget/XTabLayout;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xui/widget/XTabLayout;ZLcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->moveIndicatorTo(ZLcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xui/widget/XTabLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mChildClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xui/widget/XTabLayout;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mDivideValue:F

    return p0
.end method

.method static synthetic access$702(Lcom/xiaopeng/xui/widget/XTabLayout;F)F
    .locals 0

    .line 44
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorHeight:F

    return p1
.end method

.method static synthetic access$800(Lcom/xiaopeng/xui/widget/XTabLayout;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorMaxHeight:F

    return p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/xui/widget/XTabLayout;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorMinHeight:F

    return p0
.end method

.method private assignPosition()V
    .locals 2

    .line 704
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentStart:I

    .line 705
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentEnd:I

    .line 706
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart2:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentStart2:I

    .line 707
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd2:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentEnd2:I

    .line 709
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentStart:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart:I

    .line 710
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentEnd:I

    iput v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd:I

    .line 711
    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart2:I

    .line 712
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentEnd2:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd2:I

    return-void
.end method

.method private drawDayIndicator(Landroid/graphics/Canvas;)V
    .locals 10

    .line 812
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 817
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xff

    goto :goto_1

    :cond_1
    const/16 v1, 0x5c

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 819
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v8, v0, v1

    .line 821
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    .line 823
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd:I

    if-ge v1, v2, :cond_2

    int-to-float v3, v1

    sub-float v4, v0, v8

    int-to-float v5, v2

    add-float v6, v0, v8

    .line 826
    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    int-to-float v3, v2

    sub-float v4, v0, v8

    int-to-float v5, v1

    add-float v6, v0, v8

    .line 830
    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_2
    return-void
.end method

.method private drawNightIndicator(Landroid/graphics/Canvas;)V
    .locals 10

    .line 835
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorShadowRadius:F

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 837
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint2:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorShadowRadius2:F

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 840
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 842
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->isEnabled(I)Z

    move-result v1

    const/16 v2, 0xff

    const/16 v3, 0x5c

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 843
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint2:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 844
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v8, v0, v1

    .line 845
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorMarginBottom:F

    sub-float v6, v0, v1

    .line 847
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart2:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd2:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-ge v0, v1, :cond_3

    .line 848
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorHeight:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 850
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart2:I

    int-to-float v3, v1

    sub-float v4, v6, v0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd2:I

    int-to-float v5, v0

    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint2:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 852
    :cond_3
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorHeight:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 854
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd2:I

    int-to-float v3, v1

    sub-float v4, v6, v0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart2:I

    int-to-float v5, v0

    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint2:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method private getIndicatorOffset(I)I
    .locals 3

    .line 584
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorWidth:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    int-to-float p1, p1

    sub-float/2addr p1, v0

    div-float/2addr p1, v2

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 587
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorWidthPercent:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    int-to-float p1, p1

    mul-float/2addr p1, v0

    :goto_0
    float-to-int p1, p1

    return p1
.end method

.method private getIndicatorPosition()V
    .locals 2

    .line 594
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getSelectedTabIndex()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 596
    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart:I

    .line 597
    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd:I

    .line 598
    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart2:I

    .line 599
    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd2:I

    goto :goto_0

    .line 606
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabViewStart(I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart:I

    .line 607
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabViewEnd(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd:I

    .line 608
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart2:I

    .line 609
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd2:I

    :goto_0
    return-void
.end method

.method private getSelectView()Landroid/view/View;
    .locals 1

    .line 196
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getTabViewEnd(I)I
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 570
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 571
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaddingNight:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v1

    div-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    mul-int/2addr p1, v0

    .line 573
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getIndicatorOffset(I)I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaddingNight:I

    add-int/2addr v0, p1

    goto :goto_0

    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v2

    div-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    mul-int/2addr p1, v1

    add-int/lit8 v0, p1, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private getTabViewStart(I)I
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 555
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 556
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaddingNight:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v1

    div-int/2addr v0, v1

    mul-int/2addr p1, v0

    .line 558
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getIndicatorOffset(I)I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaddingNight:I

    add-int/2addr v0, p1

    goto :goto_0

    .line 560
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v2

    div-int/2addr v1, v2

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    :cond_1
    :goto_0
    return v0
.end method

.method private init()V
    .locals 6

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorColor:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mBlurPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorShadowColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-gt v0, v2, :cond_0

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v3, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorColor2:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mBlurPaint2:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorShadowColor2:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v2, :cond_1

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {p0, v3, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleString:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 265
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 266
    invoke-virtual {p0, v4}, Lcom/xiaopeng/xui/widget/XTabLayout;->addTab(Ljava/lang/CharSequence;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleIcons:[I

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 269
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleIcons:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 271
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIconVuiLabels:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    array-length v3, v2

    if-le v3, v0, :cond_3

    .line 272
    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    const-string v2, ""

    .line 274
    :goto_2
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleIcons:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->addTab(ILjava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 278
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 279
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mChildClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 281
    :cond_5
    new-instance v0, Lcom/xiaopeng/xui/widget/XTabLayout$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XTabLayout$2;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private isNight()Z
    .locals 1

    .line 920
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 923
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/theme/XThemeManager;->isNight(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private moveIndicatorTo(ZLcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V
    .locals 2

    .line 621
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 624
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorAnimatorEnable:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 625
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getIndicatorPosition()V

    if-eqz p1, :cond_3

    .line 628
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 629
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 630
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 631
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/xiaopeng/xui/widget/XTabLayout$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XTabLayout$5;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 659
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/xiaopeng/xui/widget/XTabLayout$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XTabLayout$6;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 672
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 674
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/xiaopeng/xui/widget/XTabLayout$7;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout$7;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 692
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 694
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->assignPosition()V

    if-eqz p2, :cond_4

    .line 696
    invoke-interface {p2}, Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;->onStart()V

    .line 697
    invoke-interface {p2}, Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;->onEnd()V

    .line 699
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->invalidate()V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private selectTab(IZZ)V
    .locals 8

    .line 489
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_6

    if-gez p1, :cond_0

    goto :goto_1

    .line 492
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    if-ne p1, v0, :cond_1

    return-void

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mOnTabChangeListener:Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 496
    invoke-interface {v0, p0, p1, v1, p3}, Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;->onInterceptTabChange(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 500
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 504
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getSelectView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    if-eq v5, v0, :cond_5

    if-eqz v5, :cond_3

    .line 509
    invoke-virtual {v5, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    if-eqz v0, :cond_4

    .line 512
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 514
    :cond_4
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    move v4, v1

    goto :goto_0

    :cond_5
    move v4, v2

    .line 518
    :goto_0
    new-instance v0, Lcom/xiaopeng/xui/widget/XTabLayout$4;

    move-object v2, v0

    move-object v3, p0

    move v6, p3

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xui/widget/XTabLayout$4;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;ZLandroid/view/View;ZI)V

    invoke-direct {p0, p2, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->moveIndicatorTo(ZLcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public addTab(IILjava/lang/String;)I
    .locals 5

    .line 369
    new-instance v0, Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;-><init>(Landroid/content/Context;)V

    .line 370
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 371
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 373
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 374
    sget-object p1, Lbxy;->TEXTVIEW:Lbxy;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiElementType(Lbxy;)V

    .line 375
    invoke-virtual {v0, p3}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiLabel(Ljava/lang/String;)V

    .line 376
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    const/4 p3, 0x1

    if-ne p2, p1, :cond_0

    move v2, p3

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setTag(Ljava/lang/Object;)V

    .line 377
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    if-gt p2, p1, :cond_1

    add-int/2addr p1, p3

    .line 378
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isSoundEffectsEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setSoundEffectsEnabled(Z)V

    .line 382
    invoke-virtual {p0, v0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->addView(Landroid/view/View;I)V

    return p2
.end method

.method public addTab(ILjava/lang/String;)I
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    .line 420
    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->addTab(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public addTab(Ljava/lang/CharSequence;)I
    .locals 1

    .line 414
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    .line 415
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->addTab(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public addTab(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 349
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbyg$j;->x_tab_layout_title_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 350
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleTextColorRes:I

    if-lez p1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleTextColorRes:I

    .line 354
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 355
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 358
    :cond_0
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleTextSize:F

    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 359
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    const/4 v1, 0x1

    if-ne p2, p1, :cond_1

    move v2, v1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 360
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    if-gt p2, p1, :cond_2

    add-int/2addr p1, v1

    .line 361
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    .line 363
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isSoundEffectsEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 364
    invoke-virtual {p0, v0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->addView(Landroid/view/View;I)V

    return p2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 337
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->drawNightIndicator(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 339
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->drawDayIndicator(Landroid/graphics/Canvas;)V

    .line 345
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected dp(I)I
    .locals 2

    int-to-float p1, p1

    .line 869
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method protected dpF(F)F
    .locals 2

    .line 873
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public getSelectedTabIndex()I
    .locals 1

    .line 800
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .line 808
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getTabTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 723
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 724
    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 726
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public isAllTabClickable()Z
    .locals 4

    .line 391
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 393
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 394
    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 776
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    .line 777
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ge p1, v0, :cond_0

    if-eqz v1, :cond_0

    .line 779
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isIndicatorAnimatorEnable()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorAnimatorEnable:Z

    return v0
.end method

.method public isTabClickable(I)Z
    .locals 0

    .line 387
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$new$0$XTabLayout(Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V
    .locals 3

    const/4 v0, 0x0

    .line 142
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 143
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 144
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 145
    check-cast v1, Landroid/widget/TextView;

    .line 146
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->refreshTextSize(Landroid/widget/TextView;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$onVuiElementEvent$1$XTabLayout(Ljava/lang/Double;Landroid/view/View;)V
    .locals 2

    .line 975
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 976
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 977
    invoke-static {p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    goto :goto_0

    .line 980
    :cond_0
    invoke-static {p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :goto_0
    const/4 p2, 0x1

    .line 985
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->setPerformVuiAction(Z)V

    .line 986
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p2, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->selectTab(IZZ)V

    const/4 p1, 0x0

    .line 990
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->setPerformVuiAction(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 912
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onAttachedToWindow()V

    .line 913
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIsDetachedFromWindow:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIsDetachedNightTheme:Z

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 914
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIsDetachedFromWindow:Z

    .line 915
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->setStyle(I)V

    :cond_1
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 3

    .line 954
    iget p2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->setVuiValue(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 955
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 956
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 957
    instance-of v1, v0, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v1, :cond_0

    .line 958
    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView;

    .line 959
    invoke-interface {v0, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiPosition(I)V

    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementId(Ljava/lang/String;)V

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBuildVuiElement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->logD(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 546
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 547
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 548
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->setStyle(I)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 928
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 929
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIsDetachedFromWindow:Z

    .line 930
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIsDetachedNightTheme:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 616
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 786
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onSizeChanged(IIII)V

    .line 787
    new-instance p1, Lcom/xiaopeng/xui/widget/XTabLayout$8;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/XTabLayout$8;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1006
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1007
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 1

    const-string v0, "tablayout onVuiElementEvent"

    .line 969
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->logD(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 971
    :cond_0
    invoke-virtual {p2, p2}, Lbyf;->getEventValue(Lbyf;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    if-eqz p2, :cond_1

    .line 973
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XTabLayout$o0b378XW3dLRaQ5gH_g-yosLqkI;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaopeng/xui/widget/-$$Lambda$XTabLayout$o0b378XW3dLRaQ5gH_g-yosLqkI;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;Ljava/lang/Double;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public removeTab(I)V
    .locals 5

    .line 441
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 445
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 446
    :goto_0
    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_1

    .line 447
    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 448
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 449
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->removeViewAt(I)V

    .line 450
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 452
    :cond_1
    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 453
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    .line 454
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 455
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->removeViewAt(I)V

    .line 456
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 458
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    :goto_1
    return-void

    .line 443
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "targetView is not exits. index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tabCount = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeTab(II)V
    .locals 4

    .line 424
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v0

    if-ge p2, v0, :cond_3

    if-ne p1, p2, :cond_0

    .line 426
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->removeTab(I)V

    goto :goto_1

    .line 428
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 430
    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 431
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 433
    :cond_2
    iput p2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    .line 434
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 435
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->removeViewAt(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public selectTab(I)V
    .locals 1

    const/4 v0, 0x1

    .line 804
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->selectTab(IZ)V

    return-void
.end method

.method public selectTab(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 796
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->selectTab(IZZ)V

    return-void
.end method

.method public selectedNoneTab(ZZ)V
    .locals 2

    .line 464
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getSelectView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 466
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    const/4 v0, -0x1

    .line 468
    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    .line 469
    new-instance v0, Lcom/xiaopeng/xui/widget/XTabLayout$3;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout$3;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;Z)V

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->moveIndicatorTo(ZLcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V

    .line 485
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->invalidate()V

    return-void
.end method

.method public setAllTabClickable(Z)V
    .locals 3

    .line 402
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 404
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 405
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 740
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setEnabled(Z)V

    .line 741
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 743
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 746
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0xff

    goto :goto_1

    :cond_1
    const/16 p1, 0x5c

    .line 748
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 749
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 750
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 751
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 752
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public setEnabled(ZI)V
    .locals 2

    .line 763
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    .line 764
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ge p2, v0, :cond_0

    if-eqz v1, :cond_0

    .line 766
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 767
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIndicatorAnimatorEnable(Z)V
    .locals 0

    .line 332
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorAnimatorEnable:Z

    return-void
.end method

.method public setOnTabChangeListener(Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mOnTabChangeListener:Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    return-void
.end method

.method public setSoundEffectsEnabled(Z)V
    .locals 3

    .line 935
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setSoundEffectsEnabled(Z)V

    .line 936
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 938
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 940
    invoke-virtual {v2, p1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setStyle(I)V
    .locals 5

    .line 201
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIsDetachedNightTheme:Z

    .line 202
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorDayNightDiff:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 205
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    .line 206
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTabsBarStyle:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 207
    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    .line 214
    :cond_1
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 215
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaddingNight:I

    invoke-virtual {p0, p1, v1, p1, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->setPadding(IIII)V

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->setPadding(IIII)V

    .line 220
    :goto_0
    iget p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleTextColorRes:I

    if-lez p1, :cond_5

    move p1, v1

    .line 221
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 222
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 223
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 224
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleTextColorRes:I

    .line 225
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 226
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 227
    :cond_3
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 228
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleIcons:[I

    if-eqz v2, :cond_4

    array-length v3, v2

    if-le v3, p1, :cond_4

    .line 229
    check-cast v0, Landroid/widget/ImageView;

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 234
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorColor:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorColor2:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    .line 236
    invoke-direct {p0, v1, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->moveIndicatorTo(ZLcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V

    return-void
.end method

.method public setTabClickable(IZ)V
    .locals 0

    .line 410
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lapr;->b(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public updateTabTitle(II)V
    .locals 1

    .line 732
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 733
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 734
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public updateTabTitle(ILjava/lang/String;)V
    .locals 1

    .line 716
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 717
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 718
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
