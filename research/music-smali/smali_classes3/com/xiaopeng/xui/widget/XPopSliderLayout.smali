.class public Lcom/xiaopeng/xui/widget/XPopSliderLayout;
.super Lcom/xiaopeng/xui/widget/XConstraintLayout;
.source "XPopSliderLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XPopSliderLayout$OnPopSliderChangeListener;
    }
.end annotation


# static fields
.field public static final POP_SHOW_ANCHOR_BOTTOM:I = 0x4

.field public static final POP_SHOW_ANCHOR_CENTER:I = 0x0

.field public static final POP_SHOW_ANCHOR_END:I = 0x2

.field public static final POP_SHOW_ANCHOR_START:I = 0x1

.field public static final POP_SHOW_ANCHOR_TOP:I = 0x3

.field private static final POP_SHOW_TIME:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "XPopSliderLayout"


# instance fields
.field private POP_WINDOW_HEIGHT:I

.field private POP_WINDOW_WIDTH:I

.field private isTouchMove:Z

.field private mExcludedRect:Landroid/graphics/Rect;

.field private mInterVal:F

.field private mIsRtl:Z

.field private mListener:Lcom/xiaopeng/xui/widget/XPopSliderLayout$OnPopSliderChangeListener;

.field private mLottieView:Lcom/xiaopeng/xui/widget/XLottieAnimationView;

.field private mMaxValue:F

.field private mMinValue:F

.field private mPopLocBottomMargin:I

.field private mPopLocEndMargin:I

.field private mPopLocStartMargin:I

.field private mPopLocTopMargin:I

.field private mPopLocTypeX:I

.field private mPopLocTypeY:I

.field private mPopX:I

.field private mPopY:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mStartProgress:F

.field private mTouchSlop:F

.field private mTvPopNum:Lcom/xiaopeng/xui/widget/XTextView;

.field private mValue:F

.field private final runDismissPopView:Ljava/lang/Runnable;

.field private startX:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 p3, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lbyg$f;->x_pop_slider_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->POP_WINDOW_WIDTH:I

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lbyg$f;->x_pop_slider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->POP_WINDOW_HEIGHT:I

    .line 50
    iput p3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopX:I

    .line 51
    iput p3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopY:I

    .line 52
    iput p3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocStartMargin:I

    .line 53
    iput p3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocTopMargin:I

    .line 54
    iput p3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocEndMargin:I

    .line 55
    iput p3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocBottomMargin:I

    .line 56
    iput p3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocTypeX:I

    const/4 p1, 0x3

    .line 57
    iput p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocTypeY:I

    const/high16 p1, 0x41900000    # 18.0f

    .line 59
    iput p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mMinValue:F

    const/high16 p1, 0x42000000    # 32.0f

    .line 60
    iput p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mMaxValue:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 61
    iput p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mInterVal:F

    .line 62
    iget p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mMinValue:F

    iput p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mValue:F

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mStartProgress:F

    .line 66
    iput p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->startX:F

    .line 67
    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->isTouchMove:Z

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mListener:Lcom/xiaopeng/xui/widget/XPopSliderLayout$OnPopSliderChangeListener;

    .line 69
    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mIsRtl:Z

    .line 220
    new-instance p1, Lcom/xiaopeng/xui/widget/-$$Lambda$XPopSliderLayout$lX-2k1aF3En_l03WgDhVGaPitjQ;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XPopSliderLayout$lX-2k1aF3En_l03WgDhVGaPitjQ;-><init>(Lcom/xiaopeng/xui/widget/XPopSliderLayout;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->runDismissPopView:Ljava/lang/Runnable;

    .line 81
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->init(Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method private calculateProgressChange(F)F
    .locals 6

    .line 274
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v0

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    .line 275
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v4

    add-double/2addr v2, v0

    double-to-float p1, v2

    .line 276
    iget v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mStartProgress:F

    add-float/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private createPopupWindow()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->POP_WINDOW_WIDTH:I

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->POP_WINDOW_HEIGHT:I

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lbyg$j;->x_pop_slider_view:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v3, Lbyg$h;->lottie_pop_slider_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLottieAnimationView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mLottieView:Lcom/xiaopeng/xui/widget/XLottieAnimationView;

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v3, Lbyg$h;->tv_pop_slider_num:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mTvPopNum:Lcom/xiaopeng/xui/widget/XTextView;

    :cond_0
    const/4 v0, 0x2

    .line 150
    new-array v0, v0, [I

    .line 151
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getLocationOnScreen([I)V

    .line 152
    aget v2, v0, v2

    .line 153
    aget v0, v0, v1

    .line 154
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mExcludedRect:Landroid/graphics/Rect;

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/xiaopeng/xui/widget/-$$Lambda$XPopSliderLayout$wrgCJS4KejgPRzWS8kVjyeu6CmQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XPopSliderLayout$wrgCJS4KejgPRzWS8kVjyeu6CmQ;-><init>(Lcom/xiaopeng/xui/widget/XPopSliderLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 166
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XPopSliderLayout$M_5MzhheC8BLePHiNdP0hP2ud3g;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XPopSliderLayout$M_5MzhheC8BLePHiNdP0hP2ud3g;-><init>(Lcom/xiaopeng/xui/widget/XPopSliderLayout;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dismissPopView()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method private getValueTextSpan(F)Landroid/text/SpannableStringBuilder;
    .locals 7

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\u00b0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 330
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 331
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 332
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mTvPopNum:Lcom/xiaopeng/xui/widget/XTextView;

    .line 333
    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XTextView;->getTextSize()F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v1, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x11

    .line 332
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 338
    new-instance v1, Landroid/text/style/TypefaceSpan;

    .line 339
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lbyg$l;->x_font_typeface_number:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 341
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 338
    invoke-virtual {v0, v1, v2, p1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lbyg$n;->XPopSliderLayout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 125
    sget v0, Lbyg$n;->XPopSliderLayout_psl_minValue:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mMinValue:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 126
    sget v1, Lbyg$n;->XPopSliderLayout_psl_maxValue:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mMaxValue:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 127
    sget v2, Lbyg$n;->XPopSliderLayout_psl_interval:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mInterVal:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 129
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mTouchSlop:F

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mIsRtl:Z

    .line 131
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->setMinValue(F)V

    .line 132
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->setMaxValue(F)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->setInterval(F)V

    return-void
.end method

.method private initPopView(F)V
    .locals 2

    .line 193
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->createPopupWindow()V

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mLottieView:Lcom/xiaopeng/xui/widget/XLottieAnimationView;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mStartProgress:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLottieAnimationView;->setProgress(F)V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mTvPopNum:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getValueTextSpan(F)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$M_5MzhheC8BLePHiNdP0hP2ud3g(Lcom/xiaopeng/xui/widget/XPopSliderLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->setPopLocation()V

    return-void
.end method

.method public static synthetic lambda$lX-2k1aF3En_l03WgDhVGaPitjQ(Lcom/xiaopeng/xui/widget/XPopSliderLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->dismissPopView()V

    return-void
.end method

.method private onProgressChanged(F)V
    .locals 3

    .line 280
    sget-object v0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged: p = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->showPopView(F)V

    .line 284
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->transformProgressToValue(F)F

    move-result p1

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mTvPopNum:Lcom/xiaopeng/xui/widget/XTextView;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mValue:F

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getValueTextSpan(F)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mValue:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mValue:F

    .line 290
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mListener:Lcom/xiaopeng/xui/widget/XPopSliderLayout$OnPopSliderChangeListener;

    if-eqz p1, :cond_1

    .line 291
    iget v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mValue:F

    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout$OnPopSliderChangeListener;->onValueChanged(F)V

    .line 293
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->play(I)V

    return-void
.end method

.method private onStopTouch()V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 300
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->runDismissPopView:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xui/utils/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mListener:Lcom/xiaopeng/xui/widget/XPopSliderLayout$OnPopSliderChangeListener;

    if-eqz v0, :cond_1

    .line 302
    iget v1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mValue:F

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/XPopSliderLayout$OnPopSliderChangeListener;->onStopTouch(F)V

    :cond_1
    return-void
.end method

.method private roundNumber(FF)I
    .locals 4

    float-to-double v0, p1

    .line 349
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double v2, v0, v2

    float-to-double p1, p2

    cmpl-double p1, v2, p1

    if-ltz p1, :cond_0

    .line 350
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    :goto_0
    double-to-int p1, p1

    return p1

    .line 352
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    goto :goto_0
.end method

.method private setPopLocation()V
    .locals 4

    .line 170
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mIsRtl:Z

    .line 171
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isRightRudder()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mLottieView:Lcom/xiaopeng/xui/widget/XLottieAnimationView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XLottieAnimationView;->getScaleX()F

    move-result v0

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mLottieView:Lcom/xiaopeng/xui/widget/XLottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XLottieAnimationView;->setScaleX(F)V

    .line 177
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocTypeY:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocTopMargin:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->POP_WINDOW_HEIGHT:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocBottomMargin:I

    sub-int/2addr v0, v2

    :goto_1
    iput v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopY:I

    .line 178
    iget v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocTypeX:I

    const/4 v2, -0x1

    if-eq v0, v1, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    .line 187
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->POP_WINDOW_WIDTH:I

    sub-int/2addr v0, v3

    shr-int/2addr v0, v1

    iget v3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocStartMargin:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocEndMargin:I

    sub-int/2addr v0, v3

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mIsRtl:Z

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    mul-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopX:I

    goto :goto_2

    .line 183
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->POP_WINDOW_WIDTH:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocEndMargin:I

    sub-int/2addr v0, v3

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mIsRtl:Z

    if-eqz v3, :cond_5

    move v1, v2

    :cond_5
    mul-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopX:I

    goto :goto_2

    .line 180
    :cond_6
    iget v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocStartMargin:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mIsRtl:Z

    if-eqz v3, :cond_7

    move v1, v2

    :cond_7
    mul-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopX:I

    :goto_2
    return-void
.end method

.method private showPopView(F)V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->runDismissPopView:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopX:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopY:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mLottieView:Lcom/xiaopeng/xui/widget/XLottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XLottieAnimationView;->setProgress(F)V

    return-void
.end method

.method private transformProgressToValue(F)F
    .locals 4

    .line 310
    iget v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mMaxValue:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mMinValue:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mInterVal:F

    div-float/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->roundNumber(FF)I

    move-result v0

    .line 311
    sget-object v1, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transformProgressToValue: mCurProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", step = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p1, v0

    .line 312
    iget v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mInterVal:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mMinValue:F

    add-float/2addr p1, v0

    return p1
.end method

.method private transformValueToProgress(F)F
    .locals 3

    .line 319
    iget v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mMinValue:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mMaxValue:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 324
    :goto_0
    sget-object p1, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transformValueToProgress: value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iget p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mMinValue:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mMaxValue:F

    sub-float/2addr v1, p1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$createPopupWindow$0$XPopSliderLayout(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 156
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 157
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 158
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mExcludedRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->dismissPopView()V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 109
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->onAttachedToWindow()V

    .line 110
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->createPopupWindow()V

    .line 111
    sget-object v0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 116
    sget-object v0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->onDetachedFromWindow()V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 87
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 88
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 224
    sget-object v0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptTouchEvent  action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 231
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 233
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isRightRudder()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->startX:F

    sub-float/2addr v2, v0

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->startX:F

    sub-float v2, v0, v2

    .line 234
    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mTouchSlop:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 235
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->isTouchMove:Z

    .line 237
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->isTouchMove:Z

    if-eqz v0, :cond_5

    return v1

    :cond_3
    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->isTouchMove:Z

    .line 244
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 227
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->startX:F

    .line 228
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 247
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 255
    :cond_0
    sget-object v0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent  action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mStartProgress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mStartProgress:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    return v1

    .line 258
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 260
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isRightRudder()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->startX:F

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->startX:F

    sub-float v0, p1, v0

    .line 261
    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->calculateProgressChange(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->onProgressChanged(F)V

    return v1

    :cond_3
    const/4 p1, 0x0

    .line 265
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->isTouchMove:Z

    .line 266
    iget p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mValue:F

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->transformValueToProgress(F)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mStartProgress:F

    .line 267
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->onStopTouch()V

    return v1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 98
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 100
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 101
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->updateSliderValue(F)V

    .line 104
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setInterval(F)V
    .locals 0

    .line 374
    iput p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mInterVal:F

    return-void
.end method

.method public setMaxValue(F)V
    .locals 0

    .line 367
    iput p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mMaxValue:F

    return-void
.end method

.method public setMinValue(F)V
    .locals 0

    .line 360
    iput p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mMinValue:F

    return-void
.end method

.method public setPopLottiePath(Ljava/lang/String;)V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mLottieView:Lcom/xiaopeng/xui/widget/XLottieAnimationView;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XLottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPopShowAnchor(II)V
    .locals 0

    .line 395
    iput p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocTypeX:I

    .line 396
    iput p2, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocTypeY:I

    return-void
.end method

.method public setPopShowMargin(IIII)V
    .locals 0

    .line 403
    iput p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocStartMargin:I

    .line 404
    iput p2, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocTopMargin:I

    .line 405
    iput p3, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocEndMargin:I

    .line 406
    iput p4, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mPopLocBottomMargin:I

    return-void
.end method

.method public setPopSliderChangeListener(Lcom/xiaopeng/xui/widget/XPopSliderLayout$OnPopSliderChangeListener;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mListener:Lcom/xiaopeng/xui/widget/XPopSliderLayout$OnPopSliderChangeListener;

    return-void
.end method

.method public updateSliderValue(F)V
    .locals 1

    .line 413
    iput p1, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mValue:F

    .line 414
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->transformValueToProgress(F)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->mStartProgress:F

    .line 415
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XPopSliderLayout;->initPopView(F)V

    return-void
.end method
