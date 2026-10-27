.class public Lcom/xiaopeng/xui/widget/XTabLayout;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XTabLayout.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

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
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 127
    if-nez p4, :cond_0

    sget v3, Lcom/xiaopeng/xpui/R$style;->XTabLayoutAppearance:I

    goto :goto_0

    :cond_0
    move/from16 v3, p4

    :goto_0
    move-object/from16 v4, p1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    const/4 v3, 0x0

    iput v3, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->MARGIN_DAY:I

    .line 72
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    .line 73
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mBlurPaint:Landroid/graphics/Paint;

    .line 74
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint2:Landroid/graphics/Paint;

    .line 75
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mBlurPaint2:Landroid/graphics/Paint;

    .line 79
    iput v3, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentStart:I

    .line 80
    iput v3, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentEnd:I

    .line 81
    iput v3, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentStart2:I

    .line 82
    iput v3, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentEnd2:I

    .line 83
    iput v3, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart:I

    .line 84
    iput v3, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart2:I

    .line 85
    iput v3, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd:I

    .line 86
    iput v3, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd2:I

    .line 87
    iput v3, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart:I

    .line 88
    iput v3, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart2:I

    .line 89
    iput v3, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd:I

    .line 90
    iput v3, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd2:I

    .line 91
    const v5, 0x3f19999a    # 0.6f

    iput v5, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mDivideValue:F

    .line 92
    const/4 v5, -0x1

    iput v5, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    .line 93
    const/4 v7, 0x2

    iput v7, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    .line 104
    new-instance v8, Lcom/xiaopeng/xui/widget/XTabLayout$1;

    invoke-direct {v8, v0}, Lcom/xiaopeng/xui/widget/XTabLayout$1;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V

    iput-object v8, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mChildClickListener:Landroid/view/View$OnClickListener;

    .line 900
    iput-boolean v6, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIsDetachedFromWindow:Z

    .line 128
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-gt v8, v9, :cond_1

    .line 129
    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8}, Lcom/xiaopeng/xui/widget/XTabLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 131
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 132
    .local v8, "theme":Landroid/content/res/Resources$Theme;
    if-nez v2, :cond_2

    .line 133
    sget v2, Lcom/xiaopeng/xpui/R$style;->XTabLayoutAppearance:I

    .line 135
    .end local p3    # "defStyleAttr":I
    .local v2, "defStyleAttr":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout:[I

    sget v11, Lcom/xiaopeng/xpui/R$style;->XTabLayoutAppearance:I

    invoke-virtual {v9, v1, v10, v2, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 136
    .local v9, "typedArray":Landroid/content/res/TypedArray;
    sget v10, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_titles:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleString:[Ljava/lang/CharSequence;

    .line 137
    sget v10, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_titleTextSize:I

    const/high16 v11, 0x420c0000    # 35.0f

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleTextSize:F

    .line 139
    sget v10, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_titleTextSize:I

    invoke-static {v9, v10}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->create(Landroid/content/res/TypedArray;I)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    move-result-object v10

    .line 140
    .local v10, "xFontScaleHelper":Lcom/xiaopeng/xui/view/font/XFontScaleHelper;
    if-eqz v10, :cond_3

    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v11, :cond_3

    .line 141
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    new-instance v12, Lcom/xiaopeng/xui/widget/-$$Lambda$XTabLayout$Z8VnPCfc0CTRF4FLt1FkISn004c;

    invoke-direct {v12, v0, v10}, Lcom/xiaopeng/xui/widget/-$$Lambda$XTabLayout$Z8VnPCfc0CTRF4FLt1FkISn004c;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V

    invoke-virtual {v11, v12}, Lcom/xiaopeng/xui/view/XViewDelegate;->setFontScaleChangeCallback(Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;)V

    .line 152
    :cond_3
    sget v11, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_titleTextColorStateList:I

    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    iput-object v11, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleTextColorStateList:Landroid/content/res/ColorStateList;

    .line 153
    sget v11, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_selectTab:I

    invoke-virtual {v9, v11, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    .line 154
    .local v11, "selectTab":I
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorWidth:I

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorWidth:F

    .line 155
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorWidthPercent:I

    const v13, 0x3f333333    # 0.7f

    invoke-virtual {v9, v12, v6, v6, v13}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorWidthPercent:F

    .line 156
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorMaxHeight:I

    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Lcom/xiaopeng/xui/widget/XTabLayout;->dp(I)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v9, v12, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorMaxHeight:F

    .line 157
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorMinHeight:I

    invoke-virtual {v0, v7}, Lcom/xiaopeng/xui/widget/XTabLayout;->dp(I)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v9, v12, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorMinHeight:F

    .line 158
    iget v12, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorMaxHeight:F

    iput v12, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorHeight:F

    .line 159
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorMarginBottom:I

    const/4 v14, 0x6

    invoke-virtual {v0, v14}, Lcom/xiaopeng/xui/widget/XTabLayout;->dp(I)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v9, v12, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorMarginBottom:F

    .line 160
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorColor:I

    sget v14, Lcom/xiaopeng/xpui/R$color;->x_theme_primary_normal:I

    invoke-virtual {v9, v12, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorColor:I

    .line 162
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorColorFrom:I

    invoke-virtual {v9, v12, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorColorFrom:I

    .line 163
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorColorTo:I

    invoke-virtual {v9, v12, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorColorTo:I

    .line 164
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorShadowColor:I

    const v14, -0xf25107

    invoke-virtual {v9, v12, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorShadowColor:I

    .line 165
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorShadowRadius:I

    invoke-virtual {v0, v13}, Lcom/xiaopeng/xui/widget/XTabLayout;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v9, v12, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorShadowRadius:F

    .line 166
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorColor2:I

    sget v12, Lcom/xiaopeng/xpui/R$color;->x_table_indicator_color:I

    invoke-virtual {v9, v7, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorColor2:I

    .line 167
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorShadowColor2:I

    invoke-virtual {v9, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorShadowColor2:I

    .line 168
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorShadowRadius2:I

    invoke-virtual {v0, v13}, Lcom/xiaopeng/xui/widget/XTabLayout;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v9, v7, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorShadowRadius2:F

    .line 169
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorAnimatorEnable:I

    invoke-virtual {v9, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorAnimatorEnable:Z

    .line 170
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_titleTextColorStateList:I

    invoke-virtual {v9, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleTextColorRes:I

    .line 171
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_tabsBarStyle:I

    invoke-virtual {v9, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTabsBarStyle:Z

    .line 172
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_tabCustomBackground:I

    invoke-virtual {v9, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTabCustomBackground:Z

    .line 173
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_tabPaddingNight:I

    const/16 v7, 0x28

    invoke-virtual {v0, v7}, Lcom/xiaopeng/xui/widget/XTabLayout;->dp(I)I

    move-result v7

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaddingNight:I

    .line 174
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_indicatorDayNightDiff:I

    invoke-virtual {v9, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorDayNightDiff:Z

    .line 175
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_tabLayoutIcons:I

    invoke-virtual {v9, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 176
    .local v5, "iconsId":I
    if-eqz v5, :cond_5

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 178
    .local v7, "iconTypeArray":Landroid/content/res/TypedArray;
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    new-array v12, v12, [I

    iput-object v12, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleIcons:[I

    .line 179
    move v12, v3

    .local v12, "i":I
    :goto_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_4

    .line 180
    iget-object v13, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleIcons:[I

    invoke-virtual {v7, v12, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    aput v14, v13, v12

    .line 179
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 182
    .end local v12    # "i":I
    :cond_4
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    .end local v7    # "iconTypeArray":Landroid/content/res/TypedArray;
    :cond_5
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_tabLayoutVuiLabels:I

    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIconVuiLabels:[Ljava/lang/CharSequence;

    .line 185
    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Lcom/xiaopeng/xui/widget/XTabLayout;->setGravity(I)V

    .line 186
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->setWillNotDraw(Z)V

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->init()V

    .line 189
    invoke-direct {v0, v11, v3, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->selectTab(IZZ)V

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v6, 0x2

    nop

    :cond_6
    invoke-virtual {v0, v6}, Lcom/xiaopeng/xui/widget/XTabLayout;->setStyle(I)V

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XTabLayout;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XTabLayout;->selectTab(IZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 44
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart:I

    return v0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 44
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentStart:I

    return v0
.end method

.method static synthetic access$1202(Lcom/xiaopeng/xui/widget/XTabLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;
    .param p1, "x1"    # I

    .line 44
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart:I

    return p1
.end method

.method static synthetic access$1302(Lcom/xiaopeng/xui/widget/XTabLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;
    .param p1, "x1"    # I

    .line 44
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd:I

    return p1
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 44
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentEnd:I

    return v0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 44
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd:I

    return v0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 44
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart2:I

    return v0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 44
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentStart2:I

    return v0
.end method

.method static synthetic access$1802(Lcom/xiaopeng/xui/widget/XTabLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;
    .param p1, "x1"    # I

    .line 44
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart2:I

    return p1
.end method

.method static synthetic access$1902(Lcom/xiaopeng/xui/widget/XTabLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;
    .param p1, "x1"    # I

    .line 44
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd2:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/widget/XTabLayout;)Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mOnTabChangeListener:Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 44
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentEnd2:I

    return v0
.end method

.method static synthetic access$2100(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 44
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd2:I

    return v0
.end method

.method static synthetic access$2200(Lcom/xiaopeng/xui/widget/XTabLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->assignPosition()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/widget/XTabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 44
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/xiaopeng/xui/widget/XTabLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;
    .param p1, "x1"    # I

    .line 44
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xui/widget/XTabLayout;ZLcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->moveIndicatorTo(ZLcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xui/widget/XTabLayout;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mChildClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xui/widget/XTabLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 44
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mDivideValue:F

    return v0
.end method

.method static synthetic access$702(Lcom/xiaopeng/xui/widget/XTabLayout;F)F
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;
    .param p1, "x1"    # F

    .line 44
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorHeight:F

    return p1
.end method

.method static synthetic access$800(Lcom/xiaopeng/xui/widget/XTabLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 44
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorMaxHeight:F

    return v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/xui/widget/XTabLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 44
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorMinHeight:F

    return v0
.end method

.method private assignPosition()V
    .locals 1

    .line 698
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentStart:I

    .line 699
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentEnd:I

    .line 700
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart2:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentStart2:I

    .line 701
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd2:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentEnd2:I

    .line 703
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentStart:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart:I

    .line 704
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentEnd:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd:I

    .line 705
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentStart:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart2:I

    .line 706
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mCurrentEnd2:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd2:I

    .line 707
    return-void
.end method

.method private drawDayIndicator(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 805
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 810
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

    .line 812
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 813
    .local v0, "indicatorHeight":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v10, v0, v1

    .line 814
    .local v10, "r":F
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v11, v2

    .line 816
    .local v11, "top":F
    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd:I

    if-ge v2, v3, :cond_2

    .line 817
    div-float v1, v0, v1

    .line 819
    .local v1, "diff":F
    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart:I

    int-to-float v3, v2

    sub-float v4, v11, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd:I

    int-to-float v5, v2

    add-float v6, v11, v1

    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v10

    move v8, v10

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 820
    .end local v1    # "diff":F
    goto :goto_2

    .line 821
    :cond_2
    div-float v1, v0, v1

    .line 823
    .restart local v1    # "diff":F
    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd:I

    int-to-float v3, v2

    sub-float v4, v11, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart:I

    int-to-float v5, v2

    add-float v6, v11, v1

    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v10

    move v8, v10

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 825
    .end local v1    # "diff":F
    :goto_2
    return-void
.end method

.method private drawNightIndicator(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 828
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorShadowRadius:F

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 830
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint2:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorShadowRadius2:F

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 833
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 835
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->isEnabled(I)Z

    move-result v1

    const/16 v2, 0x5c

    const/16 v3, 0xff

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 836
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint2:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 837
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 838
    .local v0, "r":F
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorMarginBottom:F

    sub-float/2addr v1, v2

    .line 840
    .local v1, "bottom":F
    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart2:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd2:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_3

    .line 841
    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorHeight:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 843
    .local v10, "diff":F
    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart2:I

    int-to-float v3, v2

    sub-float v4, v1, v10

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd2:I

    int-to-float v5, v2

    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint2:Landroid/graphics/Paint;

    move-object v2, p1

    move v6, v1

    move v7, v0

    move v8, v0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 845
    .end local v10    # "diff":F
    :cond_3
    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorHeight:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 847
    .restart local v10    # "diff":F
    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempEnd2:I

    int-to-float v3, v2

    sub-float v4, v1, v10

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTempStart2:I

    int-to-float v5, v2

    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint2:Landroid/graphics/Paint;

    move-object v2, p1

    move v6, v1

    move v7, v0

    move v8, v0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 859
    :goto_2
    return-void
.end method

.method private getIndicatorOffset(I)I
    .locals 3
    .param p1, "tabWidth"    # I

    .line 578
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 579
    int-to-float v0, p1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorWidth:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    .local v0, "offset":F
    goto :goto_0

    .line 581
    .end local v0    # "offset":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorWidthPercent:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 582
    .local v0, "f":F
    int-to-float v1, p1

    mul-float/2addr v0, v1

    .line 584
    .local v0, "offset":F
    :goto_0
    float-to-int v1, v0

    return v1
.end method

.method private getIndicatorPosition()V
    .locals 2

    .line 588
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getSelectedTabIndex()I

    move-result v0

    .line 589
    .local v0, "selectedTabIndex":I
    if-gez v0, :cond_0

    .line 590
    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart:I

    .line 591
    iput v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd:I

    .line 592
    iput v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart2:I

    .line 593
    iput v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd2:I

    goto :goto_0

    .line 600
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabViewStart(I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart:I

    .line 601
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabViewEnd(I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd:I

    .line 602
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart:I

    iput v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToStart2:I

    .line 603
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd:I

    iput v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mToEnd2:I

    .line 606
    :goto_0
    return-void
.end method

.method private getSelectView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 196
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getTabViewEnd(I)I
    .locals 4
    .param p1, "selectedTabIndex"    # I

    .line 562
    const/4 v0, 0x0

    .line 564
    .local v0, "end":I
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 565
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaddingNight:I

    mul-int/2addr v3, v2

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v2

    div-int/2addr v1, v2

    .line 567
    .local v1, "tabWidth":I
    add-int/lit8 v2, p1, 0x1

    mul-int/2addr v2, v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getIndicatorOffset(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaddingNight:I

    add-int v0, v2, v3

    goto :goto_0

    .line 569
    .end local v1    # "tabWidth":I
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v2

    div-int/2addr v1, v2

    .line 570
    .restart local v1    # "tabWidth":I
    add-int/lit8 v2, p1, 0x1

    mul-int/2addr v2, v1

    add-int/lit8 v0, v2, 0x0

    .line 573
    .end local v1    # "tabWidth":I
    :cond_1
    :goto_0
    return v0
.end method

.method private getTabViewStart(I)I
    .locals 4
    .param p1, "selectedTabIndex"    # I

    .line 547
    const/4 v0, 0x0

    .line 549
    .local v0, "start":I
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 550
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaddingNight:I

    mul-int/2addr v3, v2

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v2

    div-int/2addr v1, v2

    .line 552
    .local v1, "tabWidth":I
    mul-int v2, p1, v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getIndicatorOffset(I)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaddingNight:I

    add-int v0, v2, v3

    goto :goto_0

    .line 554
    .end local v1    # "tabWidth":I
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v2

    div-int/2addr v1, v2

    .line 555
    .restart local v1    # "tabWidth":I
    mul-int v2, p1, v1

    add-int/lit8 v0, v2, 0x0

    .line 558
    .end local v1    # "tabWidth":I
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

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleString:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleString:[Ljava/lang/CharSequence;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 266
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0, v4}, Lcom/xiaopeng/xui/widget/XTabLayout;->addTab(Ljava/lang/CharSequence;)I

    .line 265
    .end local v4    # "title":Ljava/lang/CharSequence;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleIcons:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleIcons:[I

    array-length v0, v0

    if-lez v0, :cond_4

    .line 269
    move v0, v1

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleIcons:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 270
    const-string v2, ""

    .line 271
    .local v2, "vuiLabel":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIconVuiLabels:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIconVuiLabels:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-le v3, v0, :cond_3

    .line 272
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIconVuiLabels:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleIcons:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->addTab(ILjava/lang/String;)I

    .line 269
    .end local v2    # "vuiLabel":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 278
    .end local v0    # "i":I
    :cond_4
    nop

    .local v1, "i":I
    :goto_2
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 279
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mChildClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 281
    .end local v1    # "i":I
    :cond_5
    new-instance v0, Lcom/xiaopeng/xui/widget/XTabLayout$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XTabLayout$2;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 325
    return-void
.end method

.method private isNight()Z
    .locals 1

    .line 913
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    const/4 v0, 0x0

    return v0

    .line 916
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/theme/XThemeManager;->isNight(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xui/widget/XTabLayout;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V
    .locals 3
    .param p1, "xFontScaleHelper"    # Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 143
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 144
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 145
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    .line 146
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->refreshTextSize(Landroid/widget/TextView;)V

    .line 142
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static synthetic lambda$onVuiElementEvent$1(Lcom/xiaopeng/xui/widget/XTabLayout;Ljava/lang/Double;Landroid/view/View;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Double;
    .param p2, "view"    # Landroid/view/View;

    .line 967
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 968
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 969
    .local v0, "elementView":Landroid/view/View;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    goto :goto_0

    .line 971
    .end local v0    # "elementView":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .line 972
    .restart local v0    # "elementView":Landroid/view/View;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 977
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->setPerformVuiAction(Z)V

    .line 978
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v1, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->selectTab(IZZ)V

    .line 982
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->setPerformVuiAction(Z)V

    .line 983
    return-void
.end method

.method private moveIndicatorTo(ZLcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V
    .locals 3
    .param p1, "animator"    # Z
    .param p2, "listener"    # Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 615
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 616
    return-void

    .line 618
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorAnimatorEnable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move p1, v0

    .line 619
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getIndicatorPosition()V

    .line 621
    if-eqz p1, :cond_3

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    .line 623
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 624
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 625
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/widget/XTabLayout$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/XTabLayout$5;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 653
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/widget/XTabLayout$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/XTabLayout$6;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 666
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/widget/XTabLayout$7;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout$7;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 686
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 688
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->assignPosition()V

    .line 689
    if-eqz p2, :cond_4

    .line 690
    invoke-interface {p2}, Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;->onStart()V

    .line 691
    invoke-interface {p2}, Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;->onEnd()V

    .line 693
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->invalidate()V

    .line 695
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private selectTab(IZZ)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "animator"    # Z
    .param p3, "fromUser"    # Z

    .line 483
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_6

    if-gez p1, :cond_0

    goto :goto_1

    .line 486
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    if-ne p1, v0, :cond_1

    .line 487
    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mOnTabChangeListener:Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mOnTabChangeListener:Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    invoke-interface {v0, p0, p1, v1, p3}, Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;->onInterceptTabChange(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 491
    return-void

    .line 494
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 498
    .local v0, "targetView":Landroid/view/View;
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getSelectView()Landroid/view/View;

    move-result-object v8

    .line 500
    .local v8, "currentView":Landroid/view/View;
    const/4 v2, 0x0

    if-eq v0, v8, :cond_5

    .line 501
    const/4 v3, 0x1

    .line 502
    .local v3, "shouldNotifyTabChange":Z
    if-eqz v0, :cond_3

    .line 503
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 505
    :cond_3
    if-eqz v8, :cond_4

    .line 506
    invoke-virtual {v8, v2}, Landroid/view/View;->setSelected(Z)V

    .line 508
    :cond_4
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    .line 510
    move v4, v3

    goto :goto_0

    .end local v3    # "shouldNotifyTabChange":Z
    :cond_5
    move v4, v2

    .line 512
    .local v4, "shouldNotifyTabChange":Z
    :goto_0
    new-instance v1, Lcom/xiaopeng/xui/widget/XTabLayout$4;

    move-object v2, v1

    move-object v3, p0

    move-object v5, v0

    move v6, p3

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xui/widget/XTabLayout$4;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;ZLandroid/view/View;ZI)V

    invoke-direct {p0, p2, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->moveIndicatorTo(ZLcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V

    .line 536
    return-void

    .line 484
    .end local v0    # "targetView":Landroid/view/View;
    .end local v4    # "shouldNotifyTabChange":Z
    .end local v8    # "currentView":Landroid/view/View;
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public addTab(IILjava/lang/String;)I
    .locals 5
    .param p1, "iconId"    # I
    .param p2, "index"    # I
    .param p3, "vuiLabel"    # Ljava/lang/String;

    .line 363
    new-instance v0, Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;-><init>(Landroid/content/Context;)V

    .line 364
    .local v0, "imageView":Lcom/xiaopeng/xui/widget/XImageView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 365
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 367
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 368
    sget-object v3, Lcom/xiaopeng/vui/commons/VuiElementType;->TEXTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 369
    invoke-virtual {v0, p3}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiLabel(Ljava/lang/String;)V

    .line 370
    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    const/4 v4, 0x1

    if-ne p2, v3, :cond_0

    move v2, v4

    nop

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setTag(Ljava/lang/Object;)V

    .line 371
    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    if-gt p2, v2, :cond_1

    .line 372
    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isSoundEffectsEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setSoundEffectsEnabled(Z)V

    .line 376
    invoke-virtual {p0, v0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->addView(Landroid/view/View;I)V

    .line 377
    return p2
.end method

.method public addTab(ILjava/lang/String;)I
    .locals 2
    .param p1, "iconId"    # I
    .param p2, "vuiLabel"    # Ljava/lang/String;

    .line 413
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    .line 414
    .local v0, "index":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->addTab(IILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public addTab(Ljava/lang/CharSequence;)I
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 408
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    .line 409
    .local v0, "index":I
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->addTab(Ljava/lang/CharSequence;I)I

    move-result v1

    return v1
.end method

.method public addTab(Ljava/lang/CharSequence;I)I
    .locals 4
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I

    .line 349
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_tab_layout_title_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 350
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleTextColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 352
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleTextSize:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 353
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    const/4 v3, 0x1

    if-ne p2, v1, :cond_0

    move v2, v3

    nop

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 354
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    if-gt p2, v1, :cond_1

    .line 355
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isSoundEffectsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 358
    invoke-virtual {p0, v0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->addView(Landroid/view/View;I)V

    .line 359
    return p2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 337
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 342
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->drawNightIndicator(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 339
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->drawDayIndicator(Landroid/graphics/Canvas;)V

    .line 340
    nop

    .line 345
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 346
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected dp(I)I
    .locals 3
    .param p1, "dp"    # I

    .line 862
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected dpF(F)F
    .locals 2
    .param p1, "dp"    # F

    .line 866
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public getSelectedTabIndex()I
    .locals 1

    .line 793
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .line 801
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getTabTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "index"    # I

    .line 717
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 718
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 719
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 720
    .local v1, "tab":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 722
    .end local v1    # "tab":Landroid/widget/TextView;
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public isAllTabClickable()Z
    .locals 5

    .line 385
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    .line 386
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 387
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 388
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 389
    return v1

    .line 386
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .line 769
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    .line 770
    .local v0, "childCount":I
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 771
    .local v1, "view":Landroid/view/View;
    if-ge p1, v0, :cond_0

    if-eqz v1, :cond_0

    .line 772
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    return v2

    .line 774
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isIndicatorAnimatorEnable()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorAnimatorEnable:Z

    return v0
.end method

.method public isTabClickable(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 381
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 905
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onAttachedToWindow()V

    .line 906
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIsDetachedFromWindow:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIsDetachedNightTheme:Z

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 907
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIsDetachedFromWindow:Z

    .line 908
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->setStyle(I)V

    .line 910
    :cond_1
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 5
    .param p1, "elementId"    # Ljava/lang/String;
    .param p2, "vuiElementBuilder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 946
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->setVuiValue(Ljava/lang/Object;)V

    .line 947
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 948
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 949
    .local v1, "childView":Landroid/view/View;
    instance-of v2, v1, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v2, :cond_0

    .line 950
    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/xui/vui/VuiView;

    .line 951
    .local v2, "xView":Lcom/xiaopeng/xui/vui/VuiView;
    invoke-interface {v2, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiPosition(I)V

    .line 952
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementId(Ljava/lang/String;)V

    .line 953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBuildVuiElement:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->logD(Ljava/lang/String;)V

    .line 947
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "xView":Lcom/xiaopeng/xui/vui/VuiView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 956
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 540
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 541
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->setStyle(I)V

    .line 544
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 921
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onDetachedFromWindow()V

    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIsDetachedFromWindow:Z

    .line 923
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIsDetachedNightTheme:Z

    .line 924
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 610
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onLayout(ZIIII)V

    .line 611
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 779
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onSizeChanged(IIII)V

    .line 780
    new-instance v0, Lcom/xiaopeng/xui/widget/XTabLayout$8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XTabLayout$8;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->post(Ljava/lang/Runnable;)Z

    .line 786
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 961
    const-string v0, "tablayout onVuiElementEvent"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->logD(Ljava/lang/String;)V

    .line 962
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 963
    :cond_0
    invoke-virtual {p2, p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getEventValue(Lcom/xiaopeng/vui/commons/model/VuiEvent;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 964
    .local v1, "value":Ljava/lang/Double;
    if-eqz v1, :cond_1

    .line 965
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XTabLayout$o0b378XW3dLRaQ5gH_g-yosLqkI;

    invoke-direct {v0, p0, v1, p1}, Lcom/xiaopeng/xui/widget/-$$Lambda$XTabLayout$o0b378XW3dLRaQ5gH_g-yosLqkI;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;Ljava/lang/Double;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->post(Ljava/lang/Runnable;)Z

    .line 984
    const/4 v0, 0x1

    return v0

    .line 986
    :cond_1
    return v0
.end method

.method public removeTab(I)V
    .locals 6
    .param p1, "index"    # I

    .line 435
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 436
    .local v0, "targetView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 439
    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, p1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 440
    .local v1, "change":Z
    :goto_0
    iget v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_1

    .line 441
    iget v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0, v4}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    .line 442
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 443
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->removeViewAt(I)V

    .line 444
    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 446
    :cond_1
    iget v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0, v4}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    .line 447
    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    .line 448
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 449
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->removeViewAt(I)V

    .line 450
    iget v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 451
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 452
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 455
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    :goto_1
    return-void

    .line 437
    .end local v1    # "change":Z
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "targetView is not exits. index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", tabCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeTab(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "selectIndex"    # I

    .line 418
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 419
    if-ne p1, p2, :cond_0

    .line 420
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->removeTab(I)V

    goto :goto_1

    .line 422
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 423
    .local v0, "change":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 424
    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 425
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 427
    :cond_2
    iput p2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    .line 428
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 429
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->removeViewAt(I)V

    .line 432
    .end local v0    # "change":Z
    :cond_3
    :goto_1
    return-void
.end method

.method public selectTab(I)V
    .locals 1
    .param p1, "index"    # I

    .line 797
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->selectTab(IZ)V

    .line 798
    return-void
.end method

.method public selectTab(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "animator"    # Z

    .line 789
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->selectTab(IZZ)V

    .line 790
    return-void
.end method

.method public selectedNoneTab(ZZ)V
    .locals 2
    .param p1, "animator"    # Z
    .param p2, "needCallback"    # Z

    .line 458
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getSelectView()Landroid/view/View;

    move-result-object v0

    .line 459
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 460
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 462
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mSelectTabIndex:I

    .line 463
    new-instance v1, Lcom/xiaopeng/xui/widget/XTabLayout$3;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout$3;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout;Z)V

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->moveIndicatorTo(ZLcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V

    .line 479
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->invalidate()V

    .line 480
    return-void
.end method

.method public setAllTabClickable(Z)V
    .locals 3
    .param p1, "clickable"    # Z

    .line 396
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    .line 397
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 398
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 399
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 397
    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 734
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setEnabled(Z)V

    .line 735
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    .line 736
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 737
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 736
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 740
    .end local v1    # "i":I
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-le v1, v2, :cond_2

    .line 741
    if-eqz p1, :cond_1

    const/16 v1, 0xff

    goto :goto_1

    :cond_1
    const/16 v1, 0x5c

    .line 742
    .local v1, "alpha":I
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 743
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 744
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 745
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 746
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->invalidate()V

    .line 748
    .end local v1    # "alpha":I
    :cond_2
    return-void
.end method

.method public setEnabled(ZI)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "position"    # I

    .line 756
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    .line 757
    .local v0, "childCount":I
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 758
    .local v1, "view":Landroid/view/View;
    if-ge p2, v0, :cond_0

    if-eqz v1, :cond_0

    .line 759
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 760
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->invalidate()V

    .line 762
    :cond_0
    return-void
.end method

.method public setIndicatorAnimatorEnable(Z)V
    .locals 0
    .param p1, "indicatorAnimatorEnable"    # Z

    .line 332
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorAnimatorEnable:Z

    .line 333
    return-void
.end method

.method public setOnTabChangeListener(Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;)V
    .locals 0
    .param p1, "onTabChangeListener"    # Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 870
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mOnTabChangeListener:Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    .line 871
    return-void
.end method

.method public setSoundEffectsEnabled(Z)V
    .locals 3
    .param p1, "soundEffectsEnabled"    # Z

    .line 928
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setSoundEffectsEnabled(Z)V

    .line 929
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v0

    .line 930
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 931
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 932
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 933
    invoke-virtual {v2, p1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 930
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 936
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setStyle(I)V
    .locals 6
    .param p1, "style"    # I

    .line 201
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIsDetachedNightTheme:Z

    .line 202
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorDayNightDiff:Z

    if-nez v0, :cond_0

    .line 203
    const/4 p1, 0x1

    .line 205
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    .line 206
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTabsBarStyle:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 207
    iput v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    .line 214
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mStyle:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 215
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaddingNight:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaddingNight:I

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->setPadding(IIII)V

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->setPadding(IIII)V

    .line 220
    :goto_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleTextColorRes:I

    if-lez v0, :cond_5

    .line 221
    move v0, v2

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 222
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 223
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 224
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleTextColorRes:I

    .line 225
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 226
    .local v3, "textColor":Landroid/content/res/ColorStateList;
    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 227
    .end local v3    # "textColor":Landroid/content/res/ColorStateList;
    goto :goto_2

    :cond_3
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 228
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleIcons:[I

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleIcons:[I

    array-length v3, v3

    if-le v3, v0, :cond_4

    .line 229
    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mTitleIcons:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    .end local v1    # "view":Landroid/view/View;
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 234
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorColor:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout;->mIndicatorColor2:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->moveIndicatorTo(ZLcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V

    .line 237
    return-void
.end method

.method public setTabClickable(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "clickable"    # Z

    .line 404
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 405
    return-void
.end method

.method public updateTabTitle(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "title"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 726
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 727
    .local v0, "childView":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 728
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 730
    :cond_0
    return-void
.end method

.method public updateTabTitle(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "title"    # Ljava/lang/String;

    .line 710
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 711
    .local v0, "childView":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 712
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    :cond_0
    return-void
.end method
