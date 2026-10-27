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
.field private static CHECKED_PRESSED_STATE:[I = null

.field public static final DEFAULT_ANIMATION_DURATION:I = 0xfa

.field public static final DEFAULT_BACK_MEASURE_RATIO:F = 1.8f

.field public static final DEFAULT_TEXT_MARGIN_DP:I = 0x2

.field public static final DEFAULT_THUMB_MARGIN_DP:I = 0x2

.field public static final DEFAULT_THUMB_SIZE_DP:I = 0x14

.field public static final DEFAULT_TINT_COLOR:I = 0x327fc2

.field private static UNCHECKED_PRESSED_STATE:[I


# instance fields
.field private mAnimationDuration:J

.field private mAutoAdjustTextPosition:Z

.field private mBackColor:Landroid/content/res/ColorStateList;

.field private mBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackMeasureRatio:F

.field private mBackRadius:F

.field private mBackRectF:Landroid/graphics/RectF;

.field private mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mClickTimeout:I

.field private mCurrBackColor:I

.field private mCurrThumbColor:I

.field private mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawDebugRect:Z

.field private mFadeBack:Z

.field private mIsBackUseDrawable:Z

.field private mIsThumbUseDrawable:Z

.field private mLastX:F

.field private mNextBackColor:I

.field private mNextBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mOffLayout:Landroid/text/Layout;

.field private mOffTextColor:I

.field private mOnLayout:Landroid/text/Layout;

.field private mOnTextColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPresentThumbRectF:Landroid/graphics/RectF;

.field private mProcess:F

.field private mProcessAnimator:Landroid/animation/ObjectAnimator;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mSafeRectF:Landroid/graphics/RectF;

.field private mStartX:F

.field private mStartY:F

.field private mTextHeight:F

.field private mTextMarginH:F

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOffRectF:Landroid/graphics/RectF;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextOnRectF:Landroid/graphics/RectF;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextWidth:F

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbMargin:Landroid/graphics/RectF;

.field private mThumbRadius:F

.field private mThumbRectF:Landroid/graphics/RectF;

.field private mThumbSizeF:Landroid/graphics/PointF;

.field private mTintColor:I

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    .line 51
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->UNCHECKED_PRESSED_STATE:[I

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
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAutoAdjustTextPosition:Z

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->init(Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAutoAdjustTextPosition:Z

    .line 99
    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->init(Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAutoAdjustTextPosition:Z

    .line 94
    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->init(Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method private catchView()V
    .locals 2

    .line 622
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 623
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 624
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 626
    :cond_0
    return-void
.end method

.method private ceil(D)I
    .locals 2
    .param p1, "dimen"    # D

    .line 343
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
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
    .locals 55
    .param p1, "attrs"    # Landroid/util/AttributeSet;

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

    iput v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mClickTimeout:I

    .line 111
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    .line 112
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    .line 113
    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

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

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    .line 119
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    .line 120
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    .line 121
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    .line 122
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    .line 123
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    .line 124
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

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

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    .line 127
    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 132
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 134
    .local v5, "density":F
    const/4 v6, 0x0

    .line 135
    .local v6, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 136
    .local v7, "thumbColor":Landroid/content/res/ColorStateList;
    const/high16 v8, 0x40000000    # 2.0f

    mul-float v9, v5, v8

    .line 137
    .local v9, "margin":F
    const/4 v10, 0x0

    .line 138
    .local v10, "marginLeft":F
    const/4 v11, 0x0

    .line 139
    .local v11, "marginRight":F
    const/4 v12, 0x0

    .line 140
    .local v12, "marginTop":F
    const/4 v13, 0x0

    .line 141
    .local v13, "marginBottom":F
    const/high16 v14, 0x41a00000    # 20.0f

    mul-float v15, v5, v14

    .line 142
    .local v15, "thumbWidth":F
    mul-float v4, v5, v14

    .line 143
    .local v4, "thumbHeight":F
    mul-float/2addr v14, v5

    div-float/2addr v14, v8

    .line 144
    .local v14, "thumbRadius":F
    move/from16 v17, v14

    .line 145
    .local v17, "backRadius":F
    const/16 v18, 0x0

    .line 146
    .local v18, "backDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    .line 147
    .local v19, "backColor":Landroid/content/res/ColorStateList;
    const v3, 0x3fe66666    # 1.8f

    .line 148
    .local v3, "backMeasureRatio":F
    const/16 v8, 0xfa

    .line 149
    .local v8, "animationDuration":I
    const/16 v21, 0x1

    .line 150
    .local v21, "fadeBack":Z
    move-object/from16 v22, v2

    const/4 v2, 0x0

    .line 151
    .local v2, "tintColor":I
    .local v22, "res":Landroid/content/res/Resources;
    const/16 v23, 0x0

    .line 152
    .local v23, "textOn":Ljava/lang/String;
    const/16 v24, 0x0

    .line 153
    .local v24, "textOff":Ljava/lang/String;
    move-object/from16 v25, v6

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v6, v5, v20

    .line 154
    .local v6, "textMarginH":F
    .local v25, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v26, v7

    const/4 v7, 0x1

    .line 156
    .local v7, "autoAdjustTextPosition":Z
    .local v26, "thumbColor":Landroid/content/res/ColorStateList;
    const/16 v27, 0x0

    if-nez v1, :cond_0

    move/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v10, v27

    goto :goto_0

    :cond_0
    move/from16 v28, v10

    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v10

    .end local v10    # "marginLeft":F
    .local v28, "marginLeft":F
    move/from16 v29, v11

    sget-object v11, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton:[I

    .end local v11    # "marginRight":F
    .local v29, "marginRight":F
    invoke-virtual {v10, v1, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 157
    .local v10, "ta":Landroid/content/res/TypedArray;
    :goto_0
    if-eqz v10, :cond_1

    .line 158
    sget v11, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbDrawable:I

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 159
    .end local v25    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    .local v11, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v30, v11

    sget v11, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbColor:I

    .end local v11    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    .local v30, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 160
    .end local v26    # "thumbColor":Landroid/content/res/ColorStateList;
    .local v11, "thumbColor":Landroid/content/res/ColorStateList;
    move-object/from16 v31, v11

    sget v11, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMargin:I

    .end local v11    # "thumbColor":Landroid/content/res/ColorStateList;
    .local v31, "thumbColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v10, v11, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    .line 161
    sget v11, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginLeft:I

    invoke-virtual {v10, v11, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    .line 162
    .end local v28    # "marginLeft":F
    .local v11, "marginLeft":F
    move/from16 v32, v11

    sget v11, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginRight:I

    .end local v11    # "marginLeft":F
    .local v32, "marginLeft":F
    invoke-virtual {v10, v11, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    .line 163
    .end local v29    # "marginRight":F
    .local v11, "marginRight":F
    move/from16 v33, v11

    sget v11, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginTop:I

    .end local v11    # "marginRight":F
    .local v33, "marginRight":F
    invoke-virtual {v10, v11, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    .line 164
    sget v11, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginBottom:I

    invoke-virtual {v10, v11, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    .line 165
    sget v11, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbWidth:I

    invoke-virtual {v10, v11, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    .line 166
    sget v11, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbHeight:I

    invoke-virtual {v10, v11, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 167
    sget v11, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbRadius:I

    invoke-static {v15, v4}, Ljava/lang/Math;->min(FF)F

    move-result v25

    move/from16 v34, v4

    const/high16 v20, 0x40000000    # 2.0f

    div-float v4, v25, v20

    .end local v4    # "thumbHeight":F
    .local v34, "thumbHeight":F
    invoke-virtual {v10, v11, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    .line 168
    sget v4, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackRadius:I

    mul-float v11, v5, v20

    add-float/2addr v11, v14

    invoke-virtual {v10, v4, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 169
    sget v4, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackDrawable:I

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 170
    sget v4, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackColor:I

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    .line 171
    sget v4, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackMeasureRatio:I

    invoke-virtual {v10, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 172
    sget v4, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswAnimationDuration:I

    invoke-virtual {v10, v4, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    .line 173
    sget v4, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswFadeBack:I

    const/4 v11, 0x1

    invoke-virtual {v10, v4, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    .line 174
    sget v4, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTintColor:I

    invoke-virtual {v10, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 175
    sget v4, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextOn:I

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 176
    sget v4, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextOff:I

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 177
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v17, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 178
    .end local v6    # "textMarginH":F
    .local v4, "textMarginH":F
    sget v6, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextMarginH:I

    invoke-virtual {v10, v6, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 179
    .end local v4    # "textMarginH":F
    .restart local v6    # "textMarginH":F
    sget v4, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswAutoAdjustTextPosition:I

    invoke-virtual {v10, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 180
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    move/from16 v38, v3

    move/from16 v35, v5

    move/from16 v41, v8

    move-object/from16 v36, v10

    move v10, v12

    move v5, v13

    move/from16 v39, v14

    move/from16 v40, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    move/from16 v42, v21

    move-object/from16 v3, v24

    move-object/from16 v4, v30

    move-object/from16 v8, v31

    move/from16 v14, v32

    move/from16 v37, v33

    move/from16 v11, v34

    goto :goto_1

    .end local v30    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    .end local v31    # "thumbColor":Landroid/content/res/ColorStateList;
    .end local v32    # "marginLeft":F
    .end local v33    # "marginRight":F
    .end local v34    # "thumbHeight":F
    .local v4, "thumbHeight":F
    .restart local v25    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v26    # "thumbColor":Landroid/content/res/ColorStateList;
    .restart local v28    # "marginLeft":F
    .restart local v29    # "marginRight":F
    :cond_1
    move/from16 v38, v3

    move v11, v4

    move/from16 v35, v5

    move/from16 v41, v8

    move-object/from16 v36, v10

    move v10, v12

    move v5, v13

    move/from16 v39, v14

    move/from16 v40, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    move/from16 v42, v21

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v8, v26

    move/from16 v14, v28

    move/from16 v37, v29

    .end local v18    # "backDrawable":Landroid/graphics/drawable/Drawable;
    .end local v19    # "backColor":Landroid/content/res/ColorStateList;
    .end local v21    # "fadeBack":Z
    .end local v23    # "textOn":Ljava/lang/String;
    .end local v24    # "textOff":Ljava/lang/String;
    .end local v25    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    .end local v26    # "thumbColor":Landroid/content/res/ColorStateList;
    .end local v28    # "marginLeft":F
    .end local v29    # "marginRight":F
    .local v2, "textOn":Ljava/lang/String;
    .local v3, "textOff":Ljava/lang/String;
    .local v4, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    .local v5, "marginBottom":F
    .local v8, "thumbColor":Landroid/content/res/ColorStateList;
    .local v9, "tintColor":I
    .local v10, "marginTop":F
    .local v11, "thumbHeight":F
    .local v12, "backDrawable":Landroid/graphics/drawable/Drawable;
    .local v13, "backColor":Landroid/content/res/ColorStateList;
    .local v14, "marginLeft":F
    .local v17, "margin":F
    .local v35, "density":F
    .local v36, "ta":Landroid/content/res/TypedArray;
    .local v37, "marginRight":F
    .local v38, "backMeasureRatio":F
    .local v39, "thumbRadius":F
    .local v40, "backRadius":F
    .local v41, "animationDuration":I
    .local v42, "fadeBack":Z
    :goto_1
    move/from16 v17, v9

    move v9, v2

    move-object/from16 v2, v23

    if-nez v1, :cond_2

    move/from16 v43, v5

    move/from16 v44, v10

    goto :goto_2

    :cond_2
    move/from16 v43, v5

    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v5

    .end local v5    # "marginBottom":F
    .local v43, "marginBottom":F
    move/from16 v44, v10

    const/4 v10, 0x2

    new-array v10, v10, [I

    .end local v10    # "marginTop":F
    .local v44, "marginTop":F
    fill-array-data v10, :array_1

    invoke-virtual {v5, v1, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    :goto_2
    move-object/from16 v5, v27

    .line 185
    .end local v36    # "ta":Landroid/content/res/TypedArray;
    .local v5, "ta":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    if-eqz v5, :cond_3

    .line 186
    move/from16 v45, v14

    const/4 v1, 0x1

    invoke-virtual {v5, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 188
    .local v14, "focusable":Z
    .local v45, "marginLeft":F
    invoke-virtual {v5, v1, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 189
    .local v10, "clickable":Z
    invoke-virtual {v0, v14}, Lcom/kyleduo/switchbutton/SwitchButton;->setFocusable(Z)V

    .line 190
    invoke-virtual {v0, v10}, Lcom/kyleduo/switchbutton/SwitchButton;->setClickable(Z)V

    .line 191
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .end local v10    # "clickable":Z
    .end local v14    # "focusable":Z
    goto :goto_3

    .line 195
    .end local v45    # "marginLeft":F
    .local v14, "marginLeft":F
    :cond_3
    move/from16 v45, v14

    .end local v14    # "marginLeft":F
    .restart local v45    # "marginLeft":F
    :goto_3
    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    .line 196
    iput-object v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    .line 197
    iput v6, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextMarginH:F

    .line 198
    iput-boolean v7, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mAutoAdjustTextPosition:Z

    .line 201
    iput-object v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 202
    iput-object v8, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 203
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    .line 204
    iput v9, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    .line 205
    iget v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    if-nez v1, :cond_6

    .line 206
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 207
    .local v1, "typedValue":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    sget v14, Lcom/kyleduo/switchbutton/R$attr;->colorAccent:I

    move-object/from16 v46, v2

    const/4 v2, 0x1

    invoke-virtual {v10, v14, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v10

    .line 208
    .end local v2    # "textOn":Ljava/lang/String;
    .local v10, "found":Z
    .local v46, "textOn":Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 209
    iget v14, v1, Landroid/util/TypedValue;->data:I

    iput v14, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    goto :goto_5

    .line 211
    :cond_5
    const v14, 0x327fc2

    iput v14, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    .end local v1    # "typedValue":Landroid/util/TypedValue;
    .end local v10    # "found":Z
    goto :goto_5

    .line 214
    .end local v46    # "textOn":Ljava/lang/String;
    .restart local v2    # "textOn":Ljava/lang/String;
    :cond_6
    move-object/from16 v46, v2

    const/4 v2, 0x1

    .end local v2    # "textOn":Ljava/lang/String;
    .restart local v46    # "textOn":Ljava/lang/String;
    :goto_5
    iget-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_7

    .line 215
    iget v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    invoke-static {v1}, Lcom/kyleduo/switchbutton/ColorUtils;->generateThumbColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 216
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    .line 218
    :cond_7
    iget-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

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

    invoke-static {v11, v1}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 222
    :cond_8
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    invoke-virtual {v1, v15, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 225
    iput-object v12, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 226
    iput-object v13, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 227
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    .line 228
    iget-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_a

    .line 229
    iget v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    invoke-static {v1}, Lcom/kyleduo/switchbutton/ColorUtils;->generateBackColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 230
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    .line 231
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    sget-object v2, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    iget v10, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    .line 235
    :cond_a
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v47, v3

    move/from16 v10, v37

    move/from16 v3, v43

    move/from16 v14, v44

    move/from16 v2, v45

    invoke-virtual {v1, v2, v14, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 238
    .end local v37    # "marginRight":F
    .end local v43    # "marginBottom":F
    .end local v44    # "marginTop":F
    .end local v45    # "marginLeft":F
    .local v2, "marginLeft":F
    .local v3, "marginBottom":F
    .local v10, "marginRight":F
    .local v14, "marginTop":F
    .local v47, "textOff":Ljava/lang/String;
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/16 v16, 0x0

    cmpl-float v1, v1, v16

    move/from16 v48, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .end local v2    # "marginLeft":F
    .local v48, "marginLeft":F
    if-ltz v1, :cond_b

    move/from16 v1, v38

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v38

    .end local v38    # "backMeasureRatio":F
    .local v1, "backMeasureRatio":F
    move/from16 v2, v38

    goto :goto_7

    .end local v1    # "backMeasureRatio":F
    .restart local v38    # "backMeasureRatio":F
    :cond_b
    move/from16 v1, v38

    move v2, v1

    .end local v38    # "backMeasureRatio":F
    .restart local v1    # "backMeasureRatio":F
    :goto_7
    iput v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackMeasureRatio:F

    .line 240
    move/from16 v2, v39

    iput v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    .line 241
    .end local v39    # "thumbRadius":F
    .local v2, "thumbRadius":F
    move/from16 v49, v1

    move/from16 v1, v40

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    .line 242
    .end local v40    # "backRadius":F
    .local v1, "backRadius":F
    .local v49, "backMeasureRatio":F
    move/from16 v50, v1

    move/from16 v52, v2

    move/from16 v51, v3

    move/from16 v1, v41

    int-to-long v2, v1

    .end local v2    # "thumbRadius":F
    .end local v3    # "marginBottom":F
    .end local v41    # "animationDuration":I
    .local v1, "animationDuration":I
    .local v50, "backRadius":F
    .local v51, "marginBottom":F
    .local v52, "thumbRadius":F
    iput-wide v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    .line 243
    move/from16 v2, v42

    iput-boolean v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    .line 245
    .end local v42    # "fadeBack":Z
    .local v2, "fadeBack":Z
    iget-object v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    move/from16 v53, v1

    move/from16 v54, v2

    iget-wide v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    .end local v1    # "animationDuration":I
    .end local v2    # "fadeBack":Z
    .local v53, "animationDuration":I
    .local v54, "fadeBack":Z
    invoke-virtual {v3, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 249
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setProcess(F)V

    .line 251
    :cond_c
    return-void

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
    .param p1, "text"    # Ljava/lang/CharSequence;

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

.method private measureHeight(I)I
    .locals 8
    .param p1, "heightMeasureSpec"    # I

    .line 306
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 307
    .local v0, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 310
    .local v1, "heightSize":I
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-double v2, v2

    invoke-direct {p0, v2, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v2

    .line 311
    .local v2, "minHeight":I
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    goto :goto_0

    :cond_0
    move v3, v4

    .line 312
    .local v3, "onHeight":F
    :goto_0
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    goto :goto_1

    :cond_1
    move v5, v4

    .line 313
    .local v5, "offHeight":F
    :goto_1
    cmpl-float v6, v3, v4

    if-nez v6, :cond_3

    cmpl-float v6, v5, v4

    if-eqz v6, :cond_2

    goto :goto_2

    .line 317
    :cond_2
    iput v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    goto :goto_3

    .line 314
    :cond_3
    :goto_2
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    .line 315
    int-to-float v4, v2

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v6, v4

    invoke-direct {p0, v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v2

    .line 319
    :goto_3
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 320
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingBottom()I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 322
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_4

    .line 323
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .local v4, "measuredHeight":I
    goto :goto_4

    .line 325
    .end local v4    # "measuredHeight":I
    :cond_4
    move v4, v2

    .line 326
    .restart local v4    # "measuredHeight":I
    const/high16 v6, -0x80000000

    if-ne v0, v6, :cond_5

    .line 327
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 331
    :cond_5
    :goto_4
    return v4
.end method

.method private measureWidth(I)I
    .locals 8
    .param p1, "widthMeasureSpec"    # I

    .line 270
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 271
    .local v0, "widthSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 274
    .local v1, "widthMode":I
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackMeasureRatio:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-direct {p0, v2, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v2

    .line 275
    .local v2, "minWidth":I
    iget-boolean v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-eqz v3, :cond_0

    .line 276
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 278
    :cond_0
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    goto :goto_0

    :cond_1
    move v3, v4

    .line 279
    .local v3, "onWidth":F
    :goto_0
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    goto :goto_1

    :cond_2
    move v5, v4

    .line 280
    .local v5, "offWidth":F
    :goto_1
    cmpl-float v6, v3, v4

    if-nez v6, :cond_4

    cmpl-float v6, v5, v4

    if-eqz v6, :cond_3

    goto :goto_2

    .line 287
    :cond_3
    iput v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    goto :goto_3

    .line 281
    :cond_4
    :goto_2
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextMarginH:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    iput v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    .line 282
    int-to-float v4, v2

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v6

    .line 283
    .local v4, "left":F
    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    cmpg-float v6, v4, v6

    if-gez v6, :cond_5

    .line 284
    int-to-float v6, v2

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    sub-float/2addr v7, v4

    add-float/2addr v6, v7

    float-to-int v2, v6

    .line 286
    .end local v4    # "left":F
    :cond_5
    nop

    .line 289
    :goto_3
    int-to-float v4, v2

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v6

    float-to-double v6, v4

    invoke-direct {p0, v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 290
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingRight()I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 291
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 293
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_6

    .line 294
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .local v4, "measuredWidth":I
    goto :goto_4

    .line 296
    .end local v4    # "measuredWidth":I
    :cond_6
    move v4, v2

    .line 297
    .restart local v4    # "measuredWidth":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_7

    .line 298
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 302
    :cond_7
    :goto_4
    return v4
.end method

.method private setDrawableState(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 697
    if-eqz p1, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v0

    .line 699
    .local v0, "myDrawableState":[I
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 700
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 702
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method private setup()V
    .locals 14

    .line 350
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v0, v1

    .line 351
    .local v0, "thumbTop":F
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v1, v3

    .line 353
    .local v1, "thumbLeft":F
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v3, :cond_0

    .line 354
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

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

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    .line 357
    .local v3, "addition":F
    add-float/2addr v0, v3

    .line 361
    .end local v3    # "addition":F
    :cond_0
    iget-boolean v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-eqz v3, :cond_1

    .line 362
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 363
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

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
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v1

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v0

    invoke-virtual {v3, v1, v0, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 368
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v5

    .line 369
    .local v3, "backLeft":F
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackMeasureRatio:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    add-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 370
    .local v5, "textDiffWidth":F
    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v4

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 371
    .local v6, "textDiffHeight":F
    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    add-float v8, v3, v5

    iget-object v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    add-float/2addr v9, v6

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v3

    iget-object v11, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    iget v12, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackMeasureRatio:F

    mul-float/2addr v11, v12

    iget-object v12, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    iget v13, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    add-float/2addr v12, v13

    .line 373
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    add-float/2addr v10, v11

    sub-float/2addr v10, v5

    iget-object v11, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    iget-object v12, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v11, v12

    sub-float/2addr v11, v6

    .line 371
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 376
    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v2, v9, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 378
    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    div-float/2addr v7, v4

    .line 379
    .local v7, "minBackRadius":F
    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    .line 381
    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 382
    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    iget-object v11, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    float-to-double v11, v11

    invoke-direct {p0, v11, v12}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v11

    iget-object v12, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    float-to-double v12, v12

    invoke-direct {p0, v12, v13}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 385
    :cond_2
    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    const/high16 v9, 0x40800000    # 4.0f

    if-eqz v8, :cond_5

    .line 386
    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    iget-object v11, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    sub-float/2addr v10, v11

    iget-object v11, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v11

    iget-object v11, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    div-float/2addr v10, v4

    add-float/2addr v8, v10

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    cmpg-float v10, v10, v2

    if-gez v10, :cond_3

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    const/high16 v11, -0x41000000    # -0.5f

    mul-float/2addr v10, v11

    goto :goto_0

    :cond_3
    move v10, v2

    :goto_0
    add-float/2addr v8, v10

    .line 387
    .local v8, "marginOnX":F
    iget-boolean v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAutoAdjustTextPosition:Z

    if-eqz v10, :cond_4

    .line 388
    iget v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    div-float/2addr v10, v9

    add-float/2addr v8, v10

    .line 390
    :cond_4
    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iget-object v11, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    iget-object v12, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v12}, Landroid/text/Layout;->getHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v11, v12

    div-float/2addr v11, v4

    add-float/2addr v10, v11

    .line 391
    .local v10, "marginOnY":F
    iget-object v11, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    iget-object v12, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v12}, Landroid/text/Layout;->getWidth()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v8

    iget-object v13, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v13}, Landroid/text/Layout;->getHeight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v13, v10

    invoke-virtual {v11, v8, v10, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 394
    .end local v8    # "marginOnX":F
    .end local v10    # "marginOnY":F
    :cond_5
    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v8, :cond_8

    .line 395
    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    iget-object v11, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    sub-float/2addr v10, v11

    iget-object v11, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    iget-object v11, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    div-float/2addr v10, v4

    sub-float/2addr v8, v10

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    cmpg-float v10, v10, v2

    if-gez v10, :cond_6

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v2, v10

    nop

    :cond_6
    add-float/2addr v8, v2

    .line 396
    .local v8, "marginOffX":F
    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAutoAdjustTextPosition:Z

    if-eqz v2, :cond_7

    .line 397
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    div-float/2addr v2, v9

    sub-float/2addr v8, v2

    .line 399
    :cond_7
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    div-float/2addr v9, v4

    add-float/2addr v2, v9

    .line 400
    .local v2, "marginOffY":F
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v9}, Landroid/text/Layout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v8

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v2

    invoke-virtual {v4, v8, v2, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 402
    .end local v2    # "marginOffY":F
    .end local v8    # "marginOffX":F
    :cond_8
    return-void
.end method


# virtual methods
.method protected animateToState(Z)V
    .locals 5
    .param p1, "checked"    # Z

    .line 606
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 607
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    iget-wide v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 613
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    .line 614
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v2, [F

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcess:F

    aput v4, v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v2, v0

    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 616
    :cond_2
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v2, [F

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcess:F

    aput v4, v2, v1

    const/4 v1, 0x0

    aput v1, v2, v0

    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 618
    :goto_0
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 619
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    .line 485
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 487
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v1

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

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

    sget-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->UNCHECKED_PRESSED_STATE:[I

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    .line 494
    .local v0, "nextState":[I
    :goto_1
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 495
    .local v1, "textColors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_2

    .line 496
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 497
    .local v2, "defaultTextColor":I
    sget-object v3, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnTextColor:I

    .line 498
    sget-object v3, Lcom/kyleduo/switchbutton/SwitchButton;->UNCHECKED_PRESSED_STATE:[I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffTextColor:I

    .line 500
    .end local v2    # "defaultTextColor":I
    :cond_2
    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    .line 501
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v3

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    .line 502
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-virtual {v2, v0, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    goto :goto_3

    .line 504
    :cond_3
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    if-eqz v2, :cond_4

    .line 505
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 506
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 508
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 510
    :goto_2
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    .line 511
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 512
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 515
    :cond_5
    :goto_3
    return-void
.end method

.method public getAnimationDuration()J
    .locals 2

    .line 714
    iget-wide v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    return-wide v0
.end method

.method public getBackColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackMeasureRatio()F
    .locals 1

    .line 787
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackMeasureRatio:F

    return v0
.end method

.method public getBackRadius()F
    .locals 1

    .line 855
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    return v0
.end method

.method public getBackSizeF()Landroid/graphics/PointF;
    .locals 3

    .line 851
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getProcess()F
    .locals 1

    .line 581
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcess:F

    return v0
.end method

.method public getThumbColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

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
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method public getThumbMargin()Landroid/graphics/RectF;
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getThumbRadius()F
    .locals 1

    .line 840
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    return v0
.end method

.method public getThumbSizeF()Landroid/graphics/PointF;
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getThumbWidth()F
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public getTintColor()I
    .locals 1

    .line 874
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    return v0
.end method

.method public isDrawDebugRect()Z
    .locals 1

    .line 705
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    return v0
.end method

.method public isFadeBack()Z
    .locals 1

    .line 866
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 406
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 409
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x437f0000    # 255.0f

    const/16 v3, 0xff

    if-eqz v0, :cond_2

    .line 410
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

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
    .local v0, "alpha":I
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 413
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 414
    rsub-int v0, v0, 0xff

    .line 415
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 416
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 417
    .end local v0    # "alpha":I
    goto/16 :goto_2

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 419
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 422
    :cond_2
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

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
    .restart local v0    # "alpha":I
    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 429
    .local v4, "colorAlpha":I
    mul-int v5, v4, v0

    div-int/2addr v5, v3

    .line 430
    .end local v4    # "colorAlpha":I
    .local v5, "colorAlpha":I
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 431
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 434
    rsub-int v0, v0, 0xff

    .line 435
    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 436
    .end local v5    # "colorAlpha":I
    .restart local v4    # "colorAlpha":I
    mul-int v5, v4, v0

    div-int/2addr v5, v3

    .line 437
    .end local v4    # "colorAlpha":I
    .restart local v5    # "colorAlpha":I
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 438
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 440
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 441
    .end local v0    # "alpha":I
    .end local v5    # "colorAlpha":I
    goto :goto_2

    .line 442
    :cond_4
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 443
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

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
    .local v0, "switchText":Landroid/text/Layout;
    :goto_3
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v4

    float-to-double v4, v4

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    .line 450
    .local v4, "textRectF":Landroid/graphics/RectF;
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
    .local v1, "alpha":I
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v2

    float-to-double v8, v2

    cmpl-double v2, v8, v6

    if-lez v2, :cond_9

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnTextColor:I

    goto :goto_7

    :cond_9
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffTextColor:I

    .line 453
    .local v2, "textColor":I
    :goto_7
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 454
    .local v8, "colorAlpha":I
    mul-int v9, v8, v1

    div-int/2addr v9, v3

    .line 455
    .end local v8    # "colorAlpha":I
    .local v9, "colorAlpha":I
    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    invoke-virtual {v3, v9, v8, v10, v11}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 456
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 457
    iget v3, v4, Landroid/graphics/RectF;->left:F

    iget v8, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 458
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 459
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 463
    .end local v1    # "alpha":I
    .end local v2    # "textColor":I
    .end local v9    # "colorAlpha":I
    :cond_a
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 464
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcess:F

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 465
    iget-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-eqz v1, :cond_b

    .line 466
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-double v8, v5

    invoke-direct {p0, v8, v9}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v5

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-double v8, v8

    invoke-direct {p0, v8, v9}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v8

    invoke-virtual {v1, v2, v3, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 467
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_8

    .line 469
    :cond_b
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 473
    :goto_8
    iget-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    if-eqz v1, :cond_d

    .line 474
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const-string v2, "#AA0000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 476
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const-string v2, "#0000FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 477
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 478
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const-string v2, "#00CC00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v6

    if-lez v1, :cond_c

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    goto :goto_9

    :cond_c
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    :goto_9
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 481
    :cond_d
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

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
    invoke-direct {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setMeasuredDimension(II)V

    .line 267
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 911
    move-object v0, p1

    check-cast v0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;

    .line 912
    .local v0, "ss":Lcom/kyleduo/switchbutton/SwitchButton$SavedState;
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->onText:Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->offText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 913
    invoke-virtual {v0}, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 914
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 902
    invoke-super {p0}, Landroid/widget/CompoundButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 903
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;

    invoke-direct {v1, v0}, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 904
    .local v1, "ss":Lcom/kyleduo/switchbutton/SwitchButton$SavedState;
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    iput-object v2, v1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->onText:Ljava/lang/CharSequence;

    .line 905
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    iput-object v2, v1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->offText:Ljava/lang/CharSequence;

    .line 906
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

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
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

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
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartX:F

    sub-float/2addr v2, v3

    .line 527
    .local v2, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartY:F

    sub-float/2addr v3, v4

    .line 532
    .local v3, "deltaY":F
    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 542
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 543
    .local v1, "x":F
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v5

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mLastX:F

    sub-float v6, v1, v6

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/kyleduo/switchbutton/SwitchButton;->setProcess(F)V

    .line 544
    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mLastX:F

    .line 545
    goto :goto_0

    .line 549
    .end local v1    # "x":F
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setPressed(Z)V

    .line 550
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getStatusBasedOnPos()Z

    move-result v5

    .line 551
    .local v5, "nextStatus":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-float v6, v6

    .line 552
    .local v6, "time":F
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gez v7, :cond_1

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-gez v7, :cond_1

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mClickTimeout:I

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_1

    .line 553
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->performClick()Z

    goto :goto_0

    .line 555
    :cond_1
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v7

    if-eq v5, v7, :cond_2

    .line 556
    invoke-virtual {p0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->playSoundEffect(I)V

    .line 557
    invoke-virtual {p0, v5}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    goto :goto_0

    .line 559
    :cond_2
    invoke-virtual {p0, v5}, Lcom/kyleduo/switchbutton/SwitchButton;->animateToState(Z)V

    .line 562
    goto :goto_0

    .line 534
    .end local v5    # "nextStatus":Z
    .end local v6    # "time":F
    :pswitch_2
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->catchView()V

    .line 535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartX:F

    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartY:F

    .line 537
    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartX:F

    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mLastX:F

    .line 538
    invoke-virtual {p0, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setPressed(Z)V

    .line 539
    nop

    .line 567
    :goto_0
    return v4

    .line 521
    .end local v0    # "action":I
    .end local v2    # "deltaX":F
    .end local v3    # "deltaY":F
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
    .param p1, "animationDuration"    # J

    .line 718
    iput-wide p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    .line 719
    return-void
.end method

.method public setBackColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "backColor"    # Landroid/content/res/ColorStateList;

    .line 760
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 761
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 762
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 764
    :cond_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 765
    return-void
.end method

.method public setBackColorRes(I)V
    .locals 1
    .param p1, "backColorRes"    # I

    .line 768
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackColor(Landroid/content/res/ColorStateList;)V

    .line 769
    return-void
.end method

.method public setBackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "backDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 743
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 744
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

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
    .param p1, "backDrawableRes"    # I

    .line 752
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 753
    return-void
.end method

.method public setBackMeasureRatio(F)V
    .locals 0
    .param p1, "backMeasureRatio"    # F

    .line 791
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackMeasureRatio:F

    .line 792
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 793
    return-void
.end method

.method public setBackRadius(F)V
    .locals 1
    .param p1, "backRadius"    # F

    .line 859
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    .line 860
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez v0, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 863
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 631
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 632
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->animateToState(Z)V

    .line 634
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 635
    return-void
.end method

.method public setCheckedImmediately(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 684
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 685
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 688
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setProcess(F)V

    .line 689
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 690
    return-void
.end method

.method public setCheckedImmediatelyNoEvent(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 648
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

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
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 655
    :goto_0
    return-void
.end method

.method public setCheckedNoEvent(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 638
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

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
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 645
    :goto_0
    return-void
.end method

.method public setDrawDebugRect(Z)V
    .locals 0
    .param p1, "drawDebugRect"    # Z

    .line 709
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    .line 710
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 711
    return-void
.end method

.method public setFadeBack(Z)V
    .locals 0
    .param p1, "fadeBack"    # Z

    .line 870
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    .line 871
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "onCheckedChangeListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 679
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 680
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 681
    return-void
.end method

.method public final setProcess(F)V
    .locals 2
    .param p1, "process"    # F

    .line 585
    move v0, p1

    .line 586
    .local v0, "tp":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 587
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 588
    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 589
    const/4 v0, 0x0

    .line 591
    :cond_1
    :goto_0
    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcess:F

    .line 592
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 593
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "onText"    # Ljava/lang/CharSequence;
    .param p2, "offText"    # Ljava/lang/CharSequence;

    .line 889
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    .line 890
    iput-object p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    .line 892
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    .line 893
    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    .line 895
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 896
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 897
    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "thumbColor"    # Landroid/content/res/ColorStateList;

    .line 776
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 777
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 778
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 780
    :cond_0
    return-void
.end method

.method public setThumbColorRes(I)V
    .locals 1
    .param p1, "thumbColorRes"    # I

    .line 783
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbColor(Landroid/content/res/ColorStateList;)V

    .line 784
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "thumbDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 726
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 727
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

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
    .param p1, "thumbDrawableRes"    # I

    .line 735
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 736
    return-void
.end method

.method public setThumbMargin(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 808
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 809
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 810
    return-void
.end method

.method public setThumbMargin(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "thumbMargin"    # Landroid/graphics/RectF;

    .line 800
    if-nez p1, :cond_0

    .line 801
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbMargin(FFFF)V

    goto :goto_0

    .line 803
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbMargin(FFFF)V

    .line 805
    :goto_0
    return-void
.end method

.method public setThumbRadius(F)V
    .locals 1
    .param p1, "thumbRadius"    # F

    .line 844
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    .line 845
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-nez v0, :cond_0

    .line 846
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 848
    :cond_0
    return-void
.end method

.method public setThumbSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 813
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 814
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setup()V

    .line 815
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 816
    return-void
.end method

.method public setThumbSize(Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "size"    # Landroid/graphics/PointF;

    .line 827
    if-nez p1, :cond_0

    .line 828
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    .line 829
    .local v0, "defaultSize":F
    invoke-virtual {p0, v0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbSize(FF)V

    .line 830
    .end local v0    # "defaultSize":F
    goto :goto_0

    .line 831
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbSize(FF)V

    .line 833
    :goto_0
    return-void
.end method

.method public setTintColor(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .line 878
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    .line 879
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    invoke-static {v0}, Lcom/kyleduo/switchbutton/ColorUtils;->generateThumbColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 880
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    invoke-static {v0}, Lcom/kyleduo/switchbutton/ColorUtils;->generateBackColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    .line 882
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    .line 884
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 885
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 886
    return-void
.end method

.method public toggleImmediately()V
    .locals 1

    .line 693
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 694
    return-void
.end method

.method public toggleImmediatelyNoEvent()V
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->toggleImmediately()V

    goto :goto_0

    .line 671
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 672
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->toggleImmediately()V

    .line 673
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 675
    :goto_0
    return-void
.end method

.method public toggleNoEvent()V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->toggle()V

    goto :goto_0

    .line 661
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 662
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->toggle()V

    .line 663
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 665
    :goto_0
    return-void
.end method
