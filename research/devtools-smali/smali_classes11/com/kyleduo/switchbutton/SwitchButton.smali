.class public Lcom/kyleduo/switchbutton/SwitchButton;
.super Landroid/widget/CompoundButton;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kyleduo/switchbutton/SwitchButton$SavedState;
    }
.end annotation


# static fields
.field private static ks:[I

.field private static kt:[I


# instance fields
.field private kA:F

.field private kB:J

.field private kC:Z

.field private kD:I

.field private kE:Landroid/graphics/PointF;

.field private kF:I

.field private kG:I

.field private kH:I

.field private kI:I

.field private kJ:I

.field private kK:Landroid/graphics/drawable/Drawable;

.field private kL:Landroid/graphics/drawable/Drawable;

.field private kM:Landroid/graphics/RectF;

.field private kN:Landroid/graphics/RectF;

.field private kO:Landroid/graphics/RectF;

.field private kP:Landroid/graphics/RectF;

.field private kQ:Landroid/graphics/RectF;

.field private kR:Z

.field private kS:Z

.field private kT:Z

.field private kU:Landroid/animation/ObjectAnimator;

.field private kV:F

.field private kW:Landroid/graphics/RectF;

.field private kX:F

.field private kY:F

.field private kZ:F

.field private ku:Landroid/graphics/drawable/Drawable;

.field private kv:Landroid/content/res/ColorStateList;

.field private kw:Landroid/content/res/ColorStateList;

.field private kx:F

.field private ky:F

.field private kz:Landroid/graphics/RectF;

.field private la:I

.field private lb:Landroid/graphics/Paint;

.field private lc:F

.field private ld:F

.field private le:F

.field private lf:Z

.field private lg:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mPaint:Landroid/graphics/Paint;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/kyleduo/switchbutton/SwitchButton;->ks:[I

    .line 51
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->kt:[I

    return-void

    :array_0
    .array-data 4
        0x10100a0
        0x101009e
        0x10100a7
    .end array-data

    :array_1
    .array-data 4
        -0x10100a0
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 70
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kT:Z

    .line 88
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lf:Z

    .line 104
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->init(Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kT:Z

    .line 88
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lf:Z

    .line 99
    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->init(Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kT:Z

    .line 88
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lf:Z

    .line 94
    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->init(Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method private bC(I)I
    .locals 6

    .line 270
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 271
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 274
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kA:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-direct {p0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->d(D)I

    move-result v1

    .line 275
    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kS:Z

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ku:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 278
    :cond_0
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    .line 279
    :cond_1
    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    goto :goto_1

    .line 280
    :cond_2
    move v4, v3

    :goto_1
    cmpl-float v5, v2, v3

    if-nez v5, :cond_4

    cmpl-float v5, v4, v3

    if-eqz v5, :cond_3

    goto :goto_2

    .line 287
    :cond_3
    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lc:F

    goto :goto_3

    .line 281
    :cond_4
    :goto_2
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->le:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lc:F

    .line 282
    int-to-float v2, v1

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v2, v3

    .line 283
    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lc:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_5

    .line 284
    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lc:F

    sub-float/2addr v1, v3

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 286
    :cond_5
    nop

    .line 289
    :goto_3
    int-to-float v2, v1

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-direct {p0, v2, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->d(D)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 290
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 291
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 293
    const/high16 v2, 0x40000000    # 2.0f

    if-ne p1, v2, :cond_6

    .line 294
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_4

    .line 296
    :cond_6
    nop

    .line 297
    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_7

    .line 298
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 302
    :cond_7
    :goto_4
    return v1
.end method

.method private bD(I)I
    .locals 6

    .line 306
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 307
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 310
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-direct {p0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->d(D)I

    move-result v1

    .line 311
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    .line 312
    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    goto :goto_1

    .line 313
    :cond_1
    move v4, v3

    :goto_1
    cmpl-float v5, v2, v3

    if-nez v5, :cond_3

    cmpl-float v5, v4, v3

    if-eqz v5, :cond_2

    goto :goto_2

    .line 317
    :cond_2
    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ld:F

    goto :goto_3

    .line 314
    :cond_3
    :goto_2
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ld:F

    .line 315
    int-to-float v1, v1

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ld:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-direct {p0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->d(D)I

    move-result v1

    .line 319
    :goto_3
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 320
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 322
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_4

    .line 323
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_4

    .line 325
    :cond_4
    nop

    .line 326
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_5

    .line 327
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 331
    :cond_5
    :goto_4
    return v1
.end method

.method private cD()V
    .locals 2

    .line 622
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 623
    if-eqz v0, :cond_0

    .line 624
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 626
    :cond_0
    return-void
.end method

.method private d(D)I
    .locals 0

    .line 343
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method private getStatusBasedOnPos()Z
    .locals 2

    .line 577
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 35

    move-object/from16 v0, p0

    .line 108
    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    .line 109
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->la:I

    .line 111
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    .line 112
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->lb:Landroid/graphics/Paint;

    .line 113
    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->lb:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->lb:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextPaint:Landroid/text/TextPaint;

    .line 118
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kM:Landroid/graphics/RectF;

    .line 119
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    .line 120
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kO:Landroid/graphics/RectF;

    .line 121
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    .line 122
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    .line 123
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kP:Landroid/graphics/RectF;

    .line 124
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kQ:Landroid/graphics/RectF;

    .line 126
    const-string v2, "process"

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {v0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0xfa

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kU:Landroid/animation/ObjectAnimator;

    .line 127
    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kU:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kW:Landroid/graphics/RectF;

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 134
    nop

    .line 135
    nop

    .line 136
    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v2, v5

    .line 137
    nop

    .line 138
    nop

    .line 139
    nop

    .line 140
    nop

    .line 141
    const/high16 v7, 0x41a00000    # 20.0f

    mul-float/2addr v2, v7

    .line 142
    nop

    .line 143
    div-float v7, v2, v5

    .line 144
    nop

    .line 145
    nop

    .line 146
    nop

    .line 147
    nop

    .line 148
    nop

    .line 149
    nop

    .line 150
    nop

    .line 151
    nop

    .line 152
    nop

    .line 153
    nop

    .line 154
    nop

    .line 156
    if-nez v1, :cond_0

    .line 157
    const/4 v9, 0x0

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton:[I

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 157
    :goto_0
    if-eqz v9, :cond_1

    .line 158
    sget v7, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbDrawable:I

    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 159
    sget v14, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbColor:I

    invoke-virtual {v9, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 160
    sget v15, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMargin:I

    invoke-virtual {v9, v15, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    .line 161
    sget v8, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginLeft:I

    invoke-virtual {v9, v8, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 162
    sget v11, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginRight:I

    invoke-virtual {v9, v11, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    .line 163
    sget v4, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginTop:I

    invoke-virtual {v9, v4, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 164
    sget v10, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginBottom:I

    invoke-virtual {v9, v10, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 165
    sget v15, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbWidth:I

    invoke-virtual {v9, v15, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    .line 166
    sget v3, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbHeight:I

    invoke-virtual {v9, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 167
    sget v3, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbRadius:I

    invoke-static {v15, v2}, Ljava/lang/Math;->min(FF)F

    move-result v16

    div-float v13, v16, v5

    invoke-virtual {v9, v3, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 168
    sget v13, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackRadius:I

    add-float v5, v3, v6

    invoke-virtual {v9, v13, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 169
    sget v13, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackDrawable:I

    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 170
    sget v12, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackColor:I

    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 171
    move/from16 v17, v2

    sget v2, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackMeasureRatio:I

    move/from16 v18, v3

    const v3, 0x3fe66666    # 1.8f

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 172
    sget v3, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswAnimationDuration:I

    move/from16 v19, v2

    const/16 v2, 0xfa

    invoke-virtual {v9, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 173
    sget v3, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswFadeBack:I

    move/from16 v20, v2

    const/4 v2, 0x1

    invoke-virtual {v9, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 174
    sget v2, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTintColor:I

    move/from16 v21, v3

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 175
    sget v3, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextOn:I

    invoke-virtual {v9, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    move/from16 v22, v2

    sget v2, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextOff:I

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    move-object/from16 v23, v2

    const/high16 v16, 0x40000000    # 2.0f

    div-float v2, v5, v16

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 178
    sget v6, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextMarginH:I

    invoke-virtual {v9, v6, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 179
    sget v2, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswAutoAdjustTextPosition:I

    move-object/from16 v24, v3

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 180
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    move/from16 v28, v5

    move/from16 v25, v8

    move v9, v10

    move/from16 v8, v17

    move/from16 v27, v18

    move/from16 v26, v19

    move/from16 v29, v20

    move/from16 v30, v21

    move/from16 v5, v22

    move-object/from16 v3, v23

    move v10, v4

    move v4, v2

    move-object/from16 v2, v24

    goto :goto_1

    :cond_1
    move v4, v2

    const/16 v2, 0xfa

    const v3, 0x3fe66666    # 1.8f

    move/from16 v29, v2

    move/from16 v26, v3

    move v8, v4

    move v15, v8

    move/from16 v27, v7

    move/from16 v28, v27

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v25, 0x0

    const/16 v30, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 185
    move/from16 v31, v9

    move/from16 v32, v10

    const/4 v1, 0x0

    goto :goto_2

    .line 184
    :cond_2
    move/from16 v31, v9

    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v9

    move/from16 v32, v10

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_1

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 185
    :goto_2
    if-eqz v1, :cond_3

    .line 186
    move/from16 v33, v11

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 188
    invoke-virtual {v1, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 189
    invoke-virtual {v0, v11}, Lcom/kyleduo/switchbutton/SwitchButton;->setFocusable(Z)V

    .line 190
    invoke-virtual {v0, v10}, Lcom/kyleduo/switchbutton/SwitchButton;->setClickable(Z)V

    .line 191
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    .line 195
    :cond_3
    move/from16 v33, v11

    :goto_3
    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    .line 196
    iput-object v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    .line 197
    iput v6, v0, Lcom/kyleduo/switchbutton/SwitchButton;->le:F

    .line 198
    iput-boolean v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->lf:Z

    .line 201
    iput-object v7, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 202
    iput-object v14, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kw:Landroid/content/res/ColorStateList;

    .line 203
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kR:Z

    .line 204
    iput v5, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kD:I

    .line 205
    iget v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kD:I

    if-nez v1, :cond_6

    .line 206
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/kyleduo/switchbutton/R$attr;->colorAccent:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    .line 208
    if-eqz v2, :cond_5

    .line 209
    iget v1, v1, Landroid/util/TypedValue;->data:I

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kD:I

    goto :goto_5

    .line 211
    :cond_5
    const v1, 0x327fc2

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kD:I

    goto :goto_5

    .line 214
    :cond_6
    const/4 v4, 0x1

    :goto_5
    iget-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kR:Z

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kw:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_7

    .line 215
    iget v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kD:I

    invoke-static {v1}, Lcom/kyleduo/switchbutton/a;->bA(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kw:Landroid/content/res/ColorStateList;

    .line 216
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kw:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kF:I

    .line 218
    :cond_7
    iget-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kR:Z

    if-eqz v1, :cond_8

    .line 219
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 220
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 222
    :cond_8
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    invoke-virtual {v1, v15, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 225
    iput-object v13, v0, Lcom/kyleduo/switchbutton/SwitchButton;->ku:Landroid/graphics/drawable/Drawable;

    .line 226
    iput-object v12, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kv:Landroid/content/res/ColorStateList;

    .line 227
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->ku:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    iput-boolean v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kS:Z

    .line 228
    iget-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kS:Z

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kv:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_a

    .line 229
    iget v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kD:I

    invoke-static {v1}, Lcom/kyleduo/switchbutton/a;->bB(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kv:Landroid/content/res/ColorStateList;

    .line 230
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kv:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kG:I

    .line 231
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kv:Landroid/content/res/ColorStateList;

    sget-object v2, Lcom/kyleduo/switchbutton/SwitchButton;->ks:[I

    iget v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kG:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kH:I

    .line 235
    :cond_a
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    move/from16 v8, v25

    move/from16 v10, v31

    move/from16 v4, v32

    move/from16 v11, v33

    invoke-virtual {v1, v8, v4, v11, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 238
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_b

    move/from16 v3, v26

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v26

    :cond_b
    move/from16 v3, v26

    iput v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kA:F

    .line 240
    move/from16 v7, v27

    iput v7, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kx:F

    .line 241
    move/from16 v5, v28

    iput v5, v0, Lcom/kyleduo/switchbutton/SwitchButton;->ky:F

    .line 242
    move/from16 v1, v29

    int-to-long v3, v1

    iput-wide v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kB:J

    .line 243
    move/from16 v1, v30

    iput-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kC:Z

    .line 245
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kU:Landroid/animation/ObjectAnimator;

    iget-wide v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->kB:J

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 249
    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setProcess(F)V

    .line 251
    :cond_c
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x10100da
        0x10100e5
    .end array-data
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 9

    .line 255
    new-instance v8, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v8
.end method

.method private setDrawableState(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 697
    if-eqz p1, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v0

    .line 699
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 700
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 702
    :cond_0
    return-void
.end method

.method private setup()V
    .locals 11

    .line 350
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v0, v1

    .line 351
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v1, v3

    .line 353
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v3, :cond_0

    .line 354
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v5

    cmpl-float v3, v3, v2

    if-lez v3, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    .line 357
    add-float/2addr v0, v3

    .line 361
    :cond_0
    iget-boolean v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kR:Z

    if-eqz v3, :cond_1

    .line 362
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 363
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v3, Landroid/graphics/PointF;->y:F

    .line 366
    :cond_1
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kM:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v1

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v0

    invoke-virtual {v3, v1, v0, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 368
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kM:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 369
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kA:F

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lc:F

    add-float/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kM:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lc:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 370
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kM:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v5

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ld:F

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 371
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    add-float v6, v0, v1

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kM:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    add-float/2addr v7, v3

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v8

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kA:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iget v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lc:F

    add-float/2addr v9, v10

    .line 373
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-float/2addr v0, v8

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v8

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kM:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v8

    sub-float/2addr v1, v3

    .line 371
    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 376
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kO:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kM:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kM:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 378
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v4

    .line 379
    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ky:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ky:F

    .line 381
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ku:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ku:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-double v5, v5

    invoke-direct {p0, v5, v6}, Lcom/kyleduo/switchbutton/SwitchButton;->d(D)I

    move-result v5

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v6

    invoke-direct {p0, v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->d(D)I

    move-result v6

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    const/high16 v1, 0x40800000    # 4.0f

    if-eqz v0, :cond_5

    .line 386
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kM:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    const/high16 v5, -0x41000000    # -0.5f

    mul-float/2addr v3, v5

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    add-float/2addr v0, v3

    .line 387
    iget-boolean v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kS:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lf:Z

    if-eqz v3, :cond_4

    .line 388
    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ky:F

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    .line 390
    :cond_4
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    .line 391
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kP:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v7}, Landroid/text/Layout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v3

    invoke-virtual {v5, v0, v3, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 394
    :cond_5
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v0, :cond_8

    .line 395
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kM:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_6

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    nop

    :cond_6
    add-float/2addr v0, v2

    .line 396
    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kS:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lf:Z

    if-eqz v2, :cond_7

    .line 397
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ky:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 399
    :cond_7
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 400
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kQ:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 402
    :cond_8
    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 814
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setup()V

    .line 815
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 816
    return-void
.end method

.method public a(FFFF)V
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 809
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 810
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 889
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    .line 890
    iput-object p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    .line 892
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    .line 893
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    .line 895
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 896
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 897
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 485
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 487
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kR:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kw:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kw:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v1

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kF:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kF:I

    goto :goto_0

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    .line 493
    :goto_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->kt:[I

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->ks:[I

    .line 494
    :goto_1
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 495
    if-eqz v1, :cond_2

    .line 496
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 497
    sget-object v3, Lcom/kyleduo/switchbutton/SwitchButton;->ks:[I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kI:I

    .line 498
    sget-object v3, Lcom/kyleduo/switchbutton/SwitchButton;->kt:[I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kJ:I

    .line 500
    :cond_2
    iget-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kS:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kv:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    .line 501
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kv:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v2

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kG:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kG:I

    .line 502
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kv:Landroid/content/res/ColorStateList;

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kG:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kH:I

    goto :goto_3

    .line 504
    :cond_3
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ku:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kC:Z

    if-eqz v1, :cond_4

    .line 505
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ku:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 506
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ku:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kL:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 508
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kL:Landroid/graphics/drawable/Drawable;

    .line 510
    :goto_2
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ku:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    .line 511
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ku:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 512
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ku:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kK:Landroid/graphics/drawable/Drawable;

    .line 515
    :cond_5
    :goto_3
    return-void
.end method

.method public getAnimationDuration()J
    .locals 2

    .line 714
    iget-wide v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kB:J

    return-wide v0
.end method

.method public getBackColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kv:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ku:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackMeasureRatio()F
    .locals 1

    .line 787
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kA:F

    return v0
.end method

.method public getBackRadius()F
    .locals 1

    .line 855
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ky:F

    return v0
.end method

.method public getBackSizeF()Landroid/graphics/PointF;
    .locals 3

    .line 851
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getProcess()F
    .locals 1

    .line 581
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kV:F

    return v0
.end method

.method public getThumbColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kw:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbHeight()F
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method public getThumbMargin()Landroid/graphics/RectF;
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kz:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getThumbRadius()F
    .locals 1

    .line 840
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kx:F

    return v0
.end method

.method public getThumbSizeF()Landroid/graphics/PointF;
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getThumbWidth()F
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kE:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public getTintColor()I
    .locals 1

    .line 874
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kD:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 406
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 409
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kS:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x437f0000    # 255.0f

    const/16 v3, 0xff

    if-eqz v0, :cond_2

    .line 410
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kC:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kK:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kL:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v0

    sub-float v0, v1, v0

    :goto_0
    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 412
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 413
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 414
    rsub-int v0, v0, 0xff

    .line 415
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 416
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 417
    goto/16 :goto_2

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ku:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 419
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ku:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 422
    :cond_2
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kC:Z

    if-eqz v0, :cond_4

    .line 427
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v0

    sub-float v0, v1, v0

    :goto_1
    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 428
    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kG:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 429
    mul-int/2addr v4, v0

    div-int/2addr v4, v3

    .line 430
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kG:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kG:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kG:I

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 431
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ky:F

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ky:F

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 434
    rsub-int v0, v0, 0xff

    .line 435
    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kH:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 436
    mul-int/2addr v4, v0

    div-int/2addr v4, v3

    .line 437
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kH:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kH:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kH:I

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 438
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ky:F

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ky:F

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 440
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 441
    goto :goto_2

    .line 442
    :cond_4
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kG:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 443
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ky:F

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ky:F

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 448
    :goto_2
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v0

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v4, v6

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    .line 449
    :goto_3
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v4

    float-to-double v4, v4

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kP:Landroid/graphics/RectF;

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kQ:Landroid/graphics/RectF;

    .line 450
    :goto_4
    const/4 v5, 0x0

    if-eqz v0, :cond_a

    if-eqz v4, :cond_a

    .line 451
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    cmpl-double v8, v8, v10

    const/high16 v9, 0x40800000    # 4.0f

    if-ltz v8, :cond_7

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v1

    mul-float/2addr v1, v9

    const/high16 v8, 0x40400000    # 3.0f

    :goto_5
    sub-float/2addr v1, v8

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v8

    float-to-double v10, v8

    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    cmpg-double v8, v10, v12

    if-gez v8, :cond_8

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v8

    mul-float/2addr v8, v9

    goto :goto_5

    :cond_8
    move v1, v5

    :goto_6
    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 452
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v2

    float-to-double v8, v2

    cmpl-double v2, v8, v6

    if-lez v2, :cond_9

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kI:I

    goto :goto_7

    :cond_9
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kJ:I

    .line 453
    :goto_7
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 454
    mul-int/2addr v8, v1

    div-int/2addr v8, v3

    .line 455
    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-virtual {v1, v8, v3, v9, v2}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 456
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 457
    iget v1, v4, Landroid/graphics/RectF;->left:F

    iget v2, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 458
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 459
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 463
    :cond_a
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kW:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kM:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 464
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kW:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kV:F

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kO:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 465
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kR:Z

    if-eqz v0, :cond_b

    .line 466
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kW:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kW:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kW:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-direct {p0, v3, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->d(D)I

    move-result v3

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kW:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    invoke-direct {p0, v4, v5}, Lcom/kyleduo/switchbutton/SwitchButton;->d(D)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 467
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_8

    .line 469
    :cond_b
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kF:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kW:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kx:F

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kx:F

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 473
    :goto_8
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kT:Z

    if-eqz v0, :cond_d

    .line 474
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lb:Landroid/graphics/Paint;

    const-string v1, "#AA0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kN:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 476
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lb:Landroid/graphics/Paint;

    const-string v1, "#0000FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 477
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kW:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 478
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lb:Landroid/graphics/Paint;

    const-string v1, "#00CC00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kP:Landroid/graphics/RectF;

    goto :goto_9

    :cond_c
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kQ:Landroid/graphics/RectF;

    :goto_9
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 481
    :cond_d
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    .line 266
    :cond_1
    invoke-direct {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->bC(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->bD(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->setMeasuredDimension(II)V

    .line 267
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 911
    check-cast p1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;

    .line 912
    iget-object v0, p1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->lh:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->li:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 913
    invoke-virtual {p1}, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 914
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 902
    invoke-super {p0}, Landroid/widget/CompoundButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 903
    new-instance v1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;

    invoke-direct {v1, v0}, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 904
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->lh:Ljava/lang/CharSequence;

    .line 905
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->li:Ljava/lang/CharSequence;

    .line 906
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 336
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;->onSizeChanged(IIII)V

    .line 337
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setup()V

    .line 340
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 520
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 524
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 526
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kX:F

    sub-float/2addr v2, v3

    .line 527
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kY:F

    sub-float/2addr v3, v4

    .line 532
    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 542
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 543
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v0

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kZ:F

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kO:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setProcess(F)V

    .line 544
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kZ:F

    .line 545
    goto :goto_0

    .line 549
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setPressed(Z)V

    .line 550
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getStatusBasedOnPos()Z

    move-result v0

    .line 551
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-float p1, v5

    .line 552
    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->la:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    .line 553
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->performClick()Z

    goto :goto_0

    .line 555
    :cond_1
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result p1

    if-eq v0, p1, :cond_2

    .line 556
    invoke-virtual {p0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->playSoundEffect(I)V

    .line 557
    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    goto :goto_0

    .line 559
    :cond_2
    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->v(Z)V

    .line 562
    goto :goto_0

    .line 534
    :pswitch_2
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->cD()V

    .line 535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kX:F

    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kY:F

    .line 537
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kX:F

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kZ:F

    .line 538
    invoke-virtual {p0, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setPressed(Z)V

    .line 539
    nop

    .line 567
    :goto_0
    return v4

    .line 521
    :cond_3
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .line 597
    invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAnimationDuration(J)V
    .locals 0

    .line 718
    iput-wide p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kB:J

    .line 719
    return-void
.end method

.method public setBackColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kv:Landroid/content/res/ColorStateList;

    .line 761
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kv:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 762
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 764
    :cond_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 765
    return-void
.end method

.method public setBackColorRes(I)V
    .locals 1

    .line 768
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackColor(Landroid/content/res/ColorStateList;)V

    .line 769
    return-void
.end method

.method public setBackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ku:Landroid/graphics/drawable/Drawable;

    .line 744
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ku:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kS:Z

    .line 745
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setup()V

    .line 746
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 747
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 748
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 749
    return-void
.end method

.method public setBackDrawableRes(I)V
    .locals 1

    .line 752
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 753
    return-void
.end method

.method public setBackMeasureRatio(F)V
    .locals 0

    .line 791
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kA:F

    .line 792
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 793
    return-void
.end method

.method public setBackRadius(F)V
    .locals 0

    .line 859
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ky:F

    .line 860
    iget-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kS:Z

    if-nez p1, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 863
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 631
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 632
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->v(Z)V

    .line 634
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 635
    return-void
.end method

.method public setCheckedImmediately(Z)V
    .locals 1

    .line 684
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 685
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kU:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kU:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kU:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 688
    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setProcess(F)V

    .line 689
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 690
    return-void
.end method

.method public setCheckedImmediatelyNoEvent(Z)V
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lg:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 649
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    goto :goto_0

    .line 651
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 652
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 653
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lg:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 655
    :goto_0
    return-void
.end method

.method public setCheckedNoEvent(Z)V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lg:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 639
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    goto :goto_0

    .line 641
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 642
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    .line 643
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lg:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 645
    :goto_0
    return-void
.end method

.method public setDrawDebugRect(Z)V
    .locals 0

    .line 709
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kT:Z

    .line 710
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 711
    return-void
.end method

.method public setFadeBack(Z)V
    .locals 0

    .line 870
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kC:Z

    .line 871
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 679
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 680
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->lg:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 681
    return-void
.end method

.method public final setProcess(F)V
    .locals 3

    .line 585
    nop

    .line 586
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 587
    nop

    .line 591
    move p1, v0

    goto :goto_0

    .line 588
    :cond_0
    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    .line 589
    nop

    .line 591
    move p1, v2

    :cond_1
    :goto_0
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kV:F

    .line 592
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 593
    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kw:Landroid/content/res/ColorStateList;

    .line 777
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kw:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 778
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 780
    :cond_0
    return-void
.end method

.method public setThumbColorRes(I)V
    .locals 1

    .line 783
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbColor(Landroid/content/res/ColorStateList;)V

    .line 784
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 727
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kR:Z

    .line 728
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setup()V

    .line 729
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 730
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 731
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 732
    return-void
.end method

.method public setThumbDrawableRes(I)V
    .locals 1

    .line 735
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 736
    return-void
.end method

.method public setThumbMargin(Landroid/graphics/RectF;)V
    .locals 3

    .line 800
    if-nez p1, :cond_0

    .line 801
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->a(FFFF)V

    goto :goto_0

    .line 803
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->a(FFFF)V

    .line 805
    :goto_0
    return-void
.end method

.method public setThumbRadius(F)V
    .locals 0

    .line 844
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kx:F

    .line 845
    iget-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kR:Z

    if-nez p1, :cond_0

    .line 846
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 848
    :cond_0
    return-void
.end method

.method public setThumbSize(Landroid/graphics/PointF;)V
    .locals 1

    .line 827
    if-nez p1, :cond_0

    .line 828
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p1, v0

    .line 829
    invoke-virtual {p0, p1, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->a(FF)V

    .line 830
    goto :goto_0

    .line 831
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->a(FF)V

    .line 833
    :goto_0
    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    .line 878
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kD:I

    .line 879
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kD:I

    invoke-static {p1}, Lcom/kyleduo/switchbutton/a;->bA(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kw:Landroid/content/res/ColorStateList;

    .line 880
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kD:I

    invoke-static {p1}, Lcom/kyleduo/switchbutton/a;->bB(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kv:Landroid/content/res/ColorStateList;

    .line 881
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kS:Z

    .line 882
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kR:Z

    .line 884
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 885
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 886
    return-void
.end method

.method protected v(Z)V
    .locals 4

    .line 606
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kU:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 607
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kU:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kU:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kU:Landroid/animation/ObjectAnimator;

    iget-wide v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kB:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 613
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    .line 614
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kU:Landroid/animation/ObjectAnimator;

    new-array v2, v2, [F

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kV:F

    aput v3, v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 616
    :cond_2
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kU:Landroid/animation/ObjectAnimator;

    new-array v2, v2, [F

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kV:F

    aput v3, v2, v1

    const/4 v1, 0x0

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 618
    :goto_0
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->kU:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 619
    return-void
.end method
