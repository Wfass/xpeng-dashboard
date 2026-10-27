.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/textfield/TextInputLayout$TextInputAccessibilityDelegate;,
        Lcom/google/android/material/textfield/TextInputLayout$SavedState;,
        Lcom/google/android/material/textfield/TextInputLayout$BoxBackgroundMode;
    }
.end annotation


# static fields
.field public static final BOX_BACKGROUND_FILLED:I = 0x1

.field public static final BOX_BACKGROUND_NONE:I = 0x0

.field public static final BOX_BACKGROUND_OUTLINE:I = 0x2

.field private static final INVALID_MAX_LENGTH:I = -0x1

.field private static final LABEL_SCALE_ANIMATION_DURATION:I = 0xa7

.field private static final LOG_TAG:Ljava/lang/String; = "TextInputLayout"


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private boxBackground:Landroid/graphics/drawable/GradientDrawable;

.field private boxBackgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private boxBackgroundMode:I

.field private final boxBottomOffsetPx:I

.field private boxCollapsedPaddingBottomPx:I

.field private boxCollapsedPaddingTopPx:I

.field private boxCornerRadiusBottomLeft:F

.field private boxCornerRadiusBottomRight:F

.field private boxCornerRadiusTopLeft:F

.field private boxCornerRadiusTopRight:F

.field private boxExpandedPaddingBottomPx:I

.field private boxExpandedPaddingTopPx:I

.field private final boxLabelCutoutPaddingPx:I

.field private boxPaddingLeftPx:I

.field private boxPaddingRightPx:I

.field private boxStrokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final boxStrokeWidthDefaultPx:I

.field private final boxStrokeWidthFocusedPx:I

.field private boxStrokeWidthPx:I

.field final collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

.field counterEnabled:Z

.field private counterMaxLength:I

.field private final counterOverflowTextAppearance:I

.field private counterOverflowed:Z

.field private final counterTextAppearance:I

.field private counterView:Landroid/widget/TextView;

.field private defaultBoxBackgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private defaultHintTextColor:Landroid/content/res/ColorStateList;

.field private final defaultStrokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final disabledColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field editText:Landroid/widget/EditText;

.field private editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

.field private focusedStrokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private focusedTextColor:Landroid/content/res/ColorStateList;

.field private hasPasswordToggleTintList:Z

.field private hasPasswordToggleTintMode:Z

.field private hasReconstructedEditTextBackground:Z

.field private hint:Ljava/lang/CharSequence;

.field private hintAnimationEnabled:Z

.field private hintEnabled:Z

.field private hintExpanded:Z

.field private final hoveredStrokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private inDrawableStateChanged:Z

.field private final indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

.field private final inputFrame:Landroid/widget/FrameLayout;

.field private originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

.field private originalHint:Ljava/lang/CharSequence;

.field private passwordToggleContentDesc:Ljava/lang/CharSequence;

.field private passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

.field private passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

.field private passwordToggleEnabled:Z

.field private passwordToggleTintList:Landroid/content/res/ColorStateList;

.field private passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

.field private passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

.field private passwordToggledVisible:Z

.field private restoringSavedState:Z

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF:Landroid/graphics/RectF;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 239
    sget v0, Lcom/google/android/material/R$attr;->textInputStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 243
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    new-instance v2, Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-direct {v2, v0}, Lcom/google/android/material/textfield/IndicatorViewController;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 193
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRect:Landroid/graphics/Rect;

    .line 194
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    .line 224
    new-instance v2, Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-direct {v2, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 245
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setOrientation(I)V

    .line 246
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setWillNotDraw(Z)V

    .line 247
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setAddStatesFromChildren(Z)V

    .line 249
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    .line 250
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    .line 251
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;)V

    .line 253
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    sget-object v5, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 254
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    sget-object v5, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setPositionInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 255
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const v5, 0x800033

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 257
    sget-object v4, Lcom/google/android/material/R$styleable;->TextInputLayout:[I

    sget v5, Lcom/google/android/material/R$style;->Widget_Design_TextInputLayout:I

    .line 258
    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-static {v1, v6, v4, v7, v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v4

    .line 265
    .local v4, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_hintEnabled:I

    invoke-virtual {v4, v5, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    .line 266
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_android_hint:I

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 267
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_hintAnimationEnabled:I

    invoke-virtual {v4, v5, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    .line 269
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_boxPaddingLeft:I

    invoke-virtual {v4, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxPaddingLeftPx:I

    .line 270
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCollapsedPaddingTop:I

    .line 271
    invoke-virtual {v4, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingTopPx:I

    .line 272
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCollapsedPaddingBottom:I

    .line 273
    invoke-virtual {v4, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingBottomPx:I

    .line 274
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_boxExpandedPaddingTop:I

    .line 275
    invoke-virtual {v4, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxExpandedPaddingTopPx:I

    .line 276
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_boxPaddingRight:I

    invoke-virtual {v4, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxPaddingRightPx:I

    .line 277
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_boxExpandedPaddingBottom:I

    .line 278
    invoke-virtual {v4, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxExpandedPaddingBottomPx:I

    .line 279
    nop

    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_bottom_offset:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxBottomOffsetPx:I

    .line 281
    nop

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_label_cutout_padding:I

    .line 284
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxLabelCutoutPaddingPx:I

    .line 286
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusTopLeft:I

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopLeft:F

    .line 287
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusTopRight:I

    .line 288
    invoke-virtual {v4, v5, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopRight:F

    .line 289
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusBottomRight:I

    .line 290
    invoke-virtual {v4, v5, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomRight:F

    .line 291
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusBottomLeft:I

    .line 292
    invoke-virtual {v4, v5, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomLeft:F

    .line 294
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_boxBackgroundColor:I

    .line 295
    invoke-virtual {v4, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->defaultBoxBackgroundColor:I

    .line 296
    iget v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->defaultBoxBackgroundColor:I

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    .line 298
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeColor:I

    invoke-virtual {v4, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    .line 299
    nop

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_stroke_width_default:I

    .line 302
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthDefaultPx:I

    .line 303
    nop

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_stroke_width_focused:I

    .line 306
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    .line 307
    iget v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthDefaultPx:I

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    .line 310
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_boxBackgroundMode:I

    .line 311
    invoke-virtual {v4, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v5

    .line 312
    .local v5, "boxBackgroundMode":I
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V

    .line 313
    sget v8, Lcom/google/android/material/R$styleable;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 314
    sget v8, Lcom/google/android/material/R$styleable;->TextInputLayout_android_textColorHint:I

    .line 315
    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    iput-object v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 317
    :cond_0
    sget v8, Lcom/google/android/material/R$color;->mtrl_textinput_default_box_stroke_color:I

    .line 318
    invoke-static {v1, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->defaultStrokeColor:I

    .line 319
    sget v8, Lcom/google/android/material/R$color;->mtrl_textinput_disabled_color:I

    invoke-static {v1, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->disabledColor:I

    .line 320
    sget v8, Lcom/google/android/material/R$color;->mtrl_textinput_hovered_box_stroke_color:I

    .line 321
    invoke-static {v1, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredStrokeColor:I

    .line 323
    sget v8, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextAppearance:I

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    .line 324
    .local v8, "hintAppearance":I
    if-eq v8, v9, :cond_1

    .line 325
    sget v10, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v4, v10, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextAppearance(I)V

    .line 328
    :cond_1
    sget v10, Lcom/google/android/material/R$styleable;->TextInputLayout_errorTextAppearance:I

    .line 329
    invoke-virtual {v4, v10, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v10

    .line 330
    .local v10, "mErrorTextAppearance":I
    sget v11, Lcom/google/android/material/R$styleable;->TextInputLayout_errorEnabled:I

    invoke-virtual {v4, v11, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 332
    .local v11, "errorEnabled":Z
    sget v12, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextTextAppearance:I

    .line 333
    invoke-virtual {v4, v12, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v12

    .line 334
    .local v12, "mHelperTextTextAppearance":I
    sget v13, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextEnabled:I

    .line 335
    invoke-virtual {v4, v13, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 336
    .local v13, "helperTextEnabled":Z
    sget v14, Lcom/google/android/material/R$styleable;->TextInputLayout_helperText:I

    invoke-virtual {v4, v14}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 338
    .local v14, "helperText":Ljava/lang/CharSequence;
    sget v15, Lcom/google/android/material/R$styleable;->TextInputLayout_counterEnabled:I

    invoke-virtual {v4, v15, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 339
    .local v15, "counterEnabled":Z
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_counterMaxLength:I

    invoke-virtual {v4, v2, v9}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    .line 340
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_counterTextAppearance:I

    invoke-virtual {v4, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextAppearance:I

    .line 341
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_counterOverflowTextAppearance:I

    .line 342
    invoke-virtual {v4, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextAppearance:I

    .line 344
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {v4, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleEnabled:Z

    .line 345
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleDrawable:I

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 346
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleContentDescription:I

    .line 347
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    .line 348
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordToggleTintList:Z

    .line 350
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleTintList:Landroid/content/res/ColorStateList;

    .line 352
    :cond_2
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordToggleTintMode:Z

    .line 354
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    .line 356
    invoke-virtual {v4, v2, v9}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    .line 355
    invoke-static {v2, v3}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 359
    :cond_3
    invoke-virtual {v4}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 361
    invoke-virtual {v0, v13}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 362
    invoke-virtual {v0, v14}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextTextAppearance(I)V

    .line 364
    invoke-virtual {v0, v11}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 365
    invoke-virtual {v0, v10}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextAppearance(I)V

    .line 366
    invoke-virtual {v0, v15}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    .line 368
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyPasswordToggleTint()V

    .line 370
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_4

    .line 373
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 376
    :cond_4
    new-instance v2, Lcom/google/android/material/textfield/TextInputLayout$TextInputAccessibilityDelegate;

    invoke-direct {v2, v0}, Lcom/google/android/material/textfield/TextInputLayout$TextInputAccessibilityDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 377
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/textfield/TextInputLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 135
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->restoringSavedState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/IndicatorViewController;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 135
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    return-object v0
.end method

.method private applyBoxAttributes()V
    .locals 3

    .line 1388
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    .line 1389
    return-void

    .line 1392
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxAttributes()V

    .line 1394
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1396
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1397
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

    .line 1399
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1402
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 1406
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1409
    :cond_3
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_4

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    if-eqz v0, :cond_4

    .line 1410
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1413
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getCornerRadiiAsArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1414
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1415
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    .line 1416
    return-void
.end method

.method private applyCutoutPadding(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "cutoutBounds"    # Landroid/graphics/RectF;

    .line 1988
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 1989
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 1990
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 1991
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 1992
    return-void
.end method

.method private applyEditTextBoxPadding()V
    .locals 5

    .line 446
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    if-nez v0, :cond_0

    .line 447
    return-void

    .line 450
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxPaddingLeftPx:I

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxExpandedPaddingTopPx:I

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxPaddingRightPx:I

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxExpandedPaddingBottomPx:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 454
    :cond_1
    return-void
.end method

.method private applyPasswordToggleTint()V
    .locals 2

    .line 1899
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordToggleTintList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordToggleTintMode:Z

    if-eqz v0, :cond_3

    .line 1901
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1903
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordToggleTintList:Z

    if-eqz v0, :cond_1

    .line 1904
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1906
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordToggleTintMode:Z

    if-eqz v0, :cond_2

    .line 1907
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1910
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 1911
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_3

    .line 1912
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1915
    :cond_3
    return-void
.end method

.method private assignBoxBackgroundByMode()V
    .locals 2

    .line 431
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    if-nez v0, :cond_0

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 433
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lcom/google/android/material/textfield/CutoutDrawable;

    if-nez v0, :cond_1

    .line 438
    new-instance v0, Lcom/google/android/material/textfield/CutoutDrawable;

    invoke-direct {v0}, Lcom/google/android/material/textfield/CutoutDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 441
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 443
    :cond_2
    :goto_0
    return-void
.end method

.method private calculateBoxBackgroundTop()I
    .locals 2

    .line 1300
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1301
    return v1

    .line 1304
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    .line 1310
    return v1

    .line 1308
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->calculateLabelMarginTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 1306
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateCollapsedTextTopBounds()I
    .locals 2

    .line 1331
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    .line 1337
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingTop()I

    move-result v0

    return v0

    .line 1333
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->calculateLabelMarginTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 1335
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingTopPx:I

    add-int/2addr v0, v1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateLabelMarginTop()I
    .locals 2

    .line 1315
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1316
    return v1

    .line 1319
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    .line 1326
    return v1

    .line 1321
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 1324
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v0

    float-to-int v0, v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private closeCutout()V
    .locals 1

    .line 1982
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1983
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Lcom/google/android/material/textfield/CutoutDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/CutoutDrawable;->removeCutout()V

    .line 1985
    :cond_0
    return-void
.end method

.method private collapseHint(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 1953
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1956
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    if-eqz v1, :cond_1

    .line 1957
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 1959
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 1961
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    .line 1962
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1963
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->openCutout()V

    .line 1965
    :cond_2
    return-void
.end method

.method private cutoutEnabled()Z
    .locals 1

    .line 1968
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lcom/google/android/material/textfield/CutoutDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ensureBackgroundDrawableStateWorkaround()V
    .locals 5

    .line 1453
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1454
    .local v0, "sdk":I
    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    .line 1456
    return-void

    .line 1458
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1459
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 1460
    return-void

    .line 1463
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->hasReconstructedEditTextBackground:Z

    if-nez v2, :cond_3

    .line 1468
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1470
    .local v2, "newBg":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v3, :cond_2

    .line 1473
    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/DrawableContainer;

    .line 1475
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    .line 1474
    invoke-static {v3, v4}, Lcom/google/android/material/internal/DrawableUtils;->setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->hasReconstructedEditTextBackground:Z

    .line 1478
    :cond_2
    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->hasReconstructedEditTextBackground:Z

    if-nez v3, :cond_3

    .line 1483
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v3, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1484
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->hasReconstructedEditTextBackground:Z

    .line 1486
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->onApplyBoxBackgroundMode()V

    .line 1489
    .end local v2    # "newBg":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private expandHint(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 2065
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2066
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2068
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    if-eqz v1, :cond_1

    .line 2069
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 2071
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 2073
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Lcom/google/android/material/textfield/CutoutDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/CutoutDrawable;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2074
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->closeCutout()V

    .line 2076
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    .line 2077
    return-void
.end method

.method private getBoxBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 402
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 403
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method private getCornerRadiiAsArray()[F
    .locals 3

    .line 686
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopLeft:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopLeft:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopRight:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopRight:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomRight:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomRight:F

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomLeft:F

    const/4 v2, 0x6

    aput v1, v0, v2

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomLeft:F

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 696
    .local v0, "cornerRadii":[F
    return-object v0
.end method

.method private hasPasswordTransformation()Z
    .locals 1

    .line 1890
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1891
    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1890
    :goto_0
    return v0
.end method

.method private onApplyBoxBackgroundMode()V
    .locals 1

    .line 422
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->assignBoxBackgroundByMode()V

    .line 423
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    if-eqz v0, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateInputLayoutMargins()V

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxBounds()V

    .line 427
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyEditTextBoxPadding()V

    .line 428
    return-void
.end method

.method private openCutout()V
    .locals 2

    .line 1972
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1973
    return-void

    .line 1975
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    .line 1976
    .local v0, "cutoutBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextActualBounds(Landroid/graphics/RectF;)V

    .line 1977
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->applyCutoutPadding(Landroid/graphics/RectF;)V

    .line 1978
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v1, Lcom/google/android/material/textfield/CutoutDrawable;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/CutoutDrawable;->setCutout(Landroid/graphics/RectF;)V

    .line 1979
    return-void
.end method

.method private static recursiveSetEnabled(Landroid/view/ViewGroup;Z)V
    .locals 4
    .param p0, "vg"    # Landroid/view/ViewGroup;
    .param p1, "enabled"    # Z

    .line 1209
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1210
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1211
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1212
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 1213
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, p1}, Lcom/google/android/material/textfield/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 1209
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1216
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    return-void
.end method

.method private setBoxAttributes()V
    .locals 3

    .line 1370
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1376
    :pswitch_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    if-nez v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 1379
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 1378
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    goto :goto_0

    .line 1372
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    .line 1373
    nop

    .line 1385
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 5
    .param p1, "editText"    # Landroid/widget/EditText;

    .line 746
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 750
    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v0, :cond_0

    .line 751
    const-string v0, "TextInputLayout"

    const-string v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 758
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->onApplyBoxBackgroundMode()V

    .line 760
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordTransformation()Z

    move-result v0

    .line 763
    .local v0, "hasPasswordTransformation":Z
    if-nez v0, :cond_1

    .line 765
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 767
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextSize(F)V

    .line 769
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getGravity()I

    move-result v1

    .line 770
    .local v1, "editTextGravity":I
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const/16 v3, 0x30

    and-int/lit8 v4, v1, -0x71

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 772
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 775
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    new-instance v3, Lcom/google/android/material/textfield/TextInputLayout$1;

    invoke-direct {v3, p0}, Lcom/google/android/material/textfield/TextInputLayout$1;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 793
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_2

    .line 794
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 798
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 800
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    .line 801
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 802
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 804
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 807
    :cond_3
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 808
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter(I)V

    .line 811
    :cond_4
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/IndicatorViewController;->adjustIndicatorPadding()V

    .line 813
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updatePasswordToggleView()V

    .line 816
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(ZZ)V

    .line 817
    return-void

    .line 747
    .end local v0    # "hasPasswordTransformation":Z
    .end local v1    # "editTextGravity":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "We already have an EditText, can only have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 892
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    .line 894
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 896
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    if-nez v0, :cond_0

    .line 897
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->openCutout()V

    .line 900
    :cond_0
    return-void
.end method

.method private shouldShowPasswordIcon()Z
    .locals 1

    .line 1895
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordTransformation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggledVisible:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateEditTextBackgroundBounds()V
    .locals 8

    .line 1342
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 1343
    return-void

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1346
    .local v0, "editTextBackground":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 1347
    return-void

    .line 1350
    :cond_1
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1351
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1354
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1355
    .local v1, "editTextBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {p0, v2, v1}, Lcom/google/android/material/internal/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1357
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1358
    .local v2, "editTextBackgroundBounds":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-eq v3, v4, :cond_3

    .line 1360
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1361
    .local v3, "editTextBackgroundPadding":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1363
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 1364
    .local v4, "left":I
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 1365
    .local v5, "right":I
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v6, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1367
    .end local v3    # "editTextBackgroundPadding":Landroid/graphics/Rect;
    .end local v4    # "left":I
    .end local v5    # "right":I
    :cond_3
    return-void
.end method

.method private updateInputLayoutMargins()V
    .locals 3

    .line 822
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 823
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->calculateLabelMarginTop()I

    move-result v1

    .line 825
    .local v1, "newTopMargin":I
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_0

    .line 826
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 827
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 829
    :cond_0
    return-void
.end method

.method private updateLabelState(ZZ)V
    .locals 6
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .line 836
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    .line 837
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 838
    .local v1, "hasText":Z
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    nop

    .line 839
    .local v2, "hasFocus":Z
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/IndicatorViewController;->errorShouldBeShown()Z

    move-result v3

    .line 842
    .local v3, "errorShouldBeShown":Z
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_2

    .line 843
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 844
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 848
    :cond_2
    if-nez v0, :cond_3

    .line 849
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->disabledColor:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 850
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->disabledColor:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 851
    :cond_3
    if-eqz v3, :cond_4

    .line 852
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorViewTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 853
    :cond_4
    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 854
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 855
    :cond_5
    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_6

    .line 856
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 859
    :cond_6
    :goto_1
    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v2, :cond_9

    if-eqz v3, :cond_7

    goto :goto_2

    .line 866
    :cond_7
    if-nez p2, :cond_8

    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    if-nez v4, :cond_b

    .line 867
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->expandHint(Z)V

    goto :goto_3

    .line 861
    :cond_9
    :goto_2
    if-nez p2, :cond_a

    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    if-eqz v4, :cond_b

    .line 862
    :cond_a
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->collapseHint(Z)V

    .line 870
    :cond_b
    :goto_3
    return-void
.end method

.method private updatePasswordToggleView()V
    .locals 7

    .line 1637
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 1639
    return-void

    .line 1642
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->shouldShowPasswordIcon()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 1643
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    if-nez v0, :cond_1

    .line 1644
    nop

    .line 1646
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Lcom/google/android/material/R$layout;->design_text_input_password_icon:I

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    .line 1647
    invoke-virtual {v0, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 1648
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1649
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1650
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1652
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v5, Lcom/google/android/material/textfield/TextInputLayout$2;

    invoke-direct {v5, p0}, Lcom/google/android/material/textfield/TextInputLayout$2;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v5}, Lcom/google/android/material/internal/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1661
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 1665
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 1668
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, v4}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 1669
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggledVisible:Z

    invoke-virtual {v0, v5}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 1673
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 1674
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 1676
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v5}, Lcom/google/android/material/internal/CheckableImageButton;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0, v4, v4, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1678
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1680
    .local v0, "compounds":[Landroid/graphics/drawable/Drawable;
    aget-object v5, v0, v2

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v5, v6, :cond_4

    .line 1681
    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    .line 1683
    :cond_4
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    aget-object v4, v0, v4

    aget-object v3, v0, v3

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v1, v0, v1

    invoke-static {v2, v4, v3, v5, v1}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1687
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1688
    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1689
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1690
    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1691
    invoke-virtual {v5}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v5

    .line 1687
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/material/internal/CheckableImageButton;->setPadding(IIII)V

    .line 1692
    .end local v0    # "compounds":[Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1693
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1694
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 1697
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 1700
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1701
    .restart local v0    # "compounds":[Landroid/graphics/drawable/Drawable;
    aget-object v2, v0, v2

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, v5, :cond_7

    .line 1702
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    aget-object v4, v0, v4

    aget-object v3, v0, v3

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v1, v0, v1

    invoke-static {v2, v4, v3, v5, v1}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1704
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 1708
    .end local v0    # "compounds":[Landroid/graphics/drawable/Drawable;
    :cond_7
    :goto_0
    return-void
.end method

.method private updateTextInputBoxBounds()V
    .locals 6

    .line 1273
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 1276
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getRight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLeft()I

    move-result v0

    .line 1281
    .local v0, "left":I
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->calculateBoxBackgroundTop()I

    move-result v1

    .line 1282
    .local v1, "top":I
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getRight()I

    move-result v2

    .line 1283
    .local v2, "right":I
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBottomOffsetPx:I

    add-int/2addr v3, v4

    .line 1287
    .local v3, "bottom":I
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1288
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    div-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 1289
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    div-int/2addr v4, v5

    sub-int/2addr v1, v4

    .line 1290
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    div-int/2addr v4, v5

    sub-int/2addr v2, v4

    .line 1291
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 1294
    :cond_1
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1295
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxAttributes()V

    .line 1296
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackgroundBounds()V

    .line 1297
    return-void

    .line 1277
    .end local v0    # "left":I
    .end local v1    # "top":I
    .end local v2    # "right":I
    .end local v3    # "bottom":I
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 381
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    .local v0, "flp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x10

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, -0x71

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 386
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateInputLayoutMargins()V

    .line 393
    move-object v1, p1

    check-cast v1, Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    .line 394
    .end local v0    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0

    .line 396
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 398
    :goto_0
    return-void
.end method

.method animateToExpansionFraction(F)V
    .locals 4
    .param p1, "target"    # F
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2081
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 2082
    return-void

    .line 2084
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 2085
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    .line 2086
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2087
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2088
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$3;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2096
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2097
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2098
    return-void
.end method

.method cutoutIsOpen()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1996
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Lcom/google/android/material/textfield/CutoutDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/CutoutDrawable;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 3
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 728
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 736
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 738
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 741
    nop

    .line 742
    return-void

    .line 740
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    throw v1

    .line 729
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 730
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1568
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->restoringSavedState:Z

    .line 1569
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 1570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->restoringSavedState:Z

    .line 1571
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1620
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1622
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 1625
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 1626
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1628
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    .line 2001
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inDrawableStateChanged:Z

    if-eqz v0, :cond_0

    .line 2005
    return-void

    .line 2008
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inDrawableStateChanged:Z

    .line 2010
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2012
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getDrawableState()[I

    move-result-object v1

    .line 2013
    .local v1, "state":[I
    const/4 v2, 0x0

    .line 2016
    .local v2, "changed":Z
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 2018
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 2019
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxBounds()V

    .line 2020
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 2022
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    if-eqz v0, :cond_2

    .line 2023
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    .line 2026
    :cond_2
    if-eqz v2, :cond_3

    .line 2027
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    .line 2030
    :cond_3
    iput-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->inDrawableStateChanged:Z

    .line 2031
    return-void
.end method

.method public getBoxBackgroundColor()I
    .locals 1

    .line 592
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultBoxBackgroundColor:I

    return v0
.end method

.method public getBoxCollapsedPaddingBottom()I
    .locals 1

    .line 526
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingBottomPx:I

    return v0
.end method

.method public getBoxCollapsedPaddingTop()I
    .locals 1

    .line 499
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingTopPx:I

    return v0
.end method

.method public getBoxCornerRadiusBottomLeft()F
    .locals 1

    .line 682
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomLeft:F

    return v0
.end method

.method public getBoxCornerRadiusBottomRight()F
    .locals 1

    .line 672
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomRight:F

    return v0
.end method

.method public getBoxCornerRadiusTopLeft()F
    .locals 1

    .line 652
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopLeft:F

    return v0
.end method

.method public getBoxCornerRadiusTopRight()F
    .locals 1

    .line 662
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopRight:F

    return v0
.end method

.method public getBoxExpandedPaddingBottom()I
    .locals 1

    .line 535
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxExpandedPaddingBottomPx:I

    return v0
.end method

.method public getBoxExpandedPaddingTop()I
    .locals 1

    .line 508
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxExpandedPaddingTopPx:I

    return v0
.end method

.method public getBoxPaddingLeft()I
    .locals 1

    .line 490
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxPaddingLeftPx:I

    return v0
.end method

.method public getBoxPaddingRight()I
    .locals 1

    .line 517
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxPaddingRightPx:I

    return v0
.end method

.method public getBoxStrokeColor()I
    .locals 1

    .line 560
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    return v0
.end method

.method public getCounterMaxLength()I
    .locals 1

    .line 1224
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    return v0
.end method

.method public getDefaultHintTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 999
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 875
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1581
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getErrorCurrentTextColors()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1032
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v0

    return v0
.end method

.method final getErrorTextCurrentColor()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2122
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getHelperText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1593
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isHelperTextEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 1594
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getHelperText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1593
    :goto_0
    return-object v0
.end method

.method public getHelperTextCurrentTextColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1111
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getHelperTextViewCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 910
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method final getHintCollapsedTextHeight()F
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2117
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v0

    return v0
.end method

.method final getHintCurrentCollapsedTextColor()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2112
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v0

    return v0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1789
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1778
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 723
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isCounterEnabled()Z
    .locals 1

    .line 1177
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method final isHelperTextDisplayed()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2107
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextIsDisplayed()Z

    move-result v0

    return v0
.end method

.method public isHelperTextEnabled()Z
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isHelperTextEnabled()Z

    move-result v0

    return v0
.end method

.method public isHintAnimationEnabled()Z
    .locals 1

    .line 1605
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    return v0
.end method

.method public isHintEnabled()Z
    .locals 1

    .line 962
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    return v0
.end method

.method final isHintExpanded()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2102
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    return v0
.end method

.method public isPasswordVisibilityToggleEnabled()Z
    .locals 1

    .line 1798
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleEnabled:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1919
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1921
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 1922
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxBounds()V

    .line 1925
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 1926
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRect:Landroid/graphics/Rect;

    .line 1927
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {p0, v1, v0}, Lcom/google/android/material/internal/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1929
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 1930
    .local v1, "l":I
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1931
    .local v2, "r":I
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->calculateCollapsedTextTopBounds()I

    move-result v3

    .line 1933
    .local v3, "t":I
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1935
    invoke-virtual {v6}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1937
    invoke-virtual {v7}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1933
    invoke-virtual {v4, v1, v5, v2, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 1941
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    sub-int v5, p5, p3

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v1, v3, v2, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 1942
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 1946
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    if-nez v4, :cond_1

    .line 1947
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->openCutout()V

    .line 1950
    .end local v0    # "rect":Landroid/graphics/Rect;
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1632
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updatePasswordToggleView()V

    .line 1633
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1634
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1553
    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    if-nez v0, :cond_0

    .line 1554
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1555
    return-void

    .line 1557
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    .line 1558
    .local v0, "ss":Lcom/google/android/material/textfield/TextInputLayout$SavedState;
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1559
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 1560
    iget-boolean v1, v0, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->isPasswordToggledVisible:Z

    if-eqz v1, :cond_1

    .line 1561
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->passwordVisibilityToggleRequested(Z)V

    .line 1563
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->requestLayout()V

    .line 1564
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1542
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1543
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1544
    .local v1, "ss":Lcom/google/android/material/textfield/TextInputLayout$SavedState;
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/IndicatorViewController;->errorShouldBeShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1545
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    .line 1547
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggledVisible:Z

    iput-boolean v2, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->isPasswordToggledVisible:Z

    .line 1548
    return-object v1
.end method

.method public passwordVisibilityToggleRequested(Z)V
    .locals 3
    .param p1, "shouldSkipAnimations"    # Z

    .line 1867
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleEnabled:Z

    if-eqz v0, :cond_2

    .line 1869
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 1871
    .local v0, "selection":I
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordTransformation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1872
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1873
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggledVisible:Z

    goto :goto_0

    .line 1875
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1876
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggledVisible:Z

    .line 1879
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggledVisible:Z

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 1880
    if-eqz p1, :cond_1

    .line 1881
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CheckableImageButton;->jumpDrawablesToCurrentState()V

    .line 1885
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1887
    .end local v0    # "selection":I
    :cond_2
    return-void
.end method

.method public setBoxBackgroundColor(I)V
    .locals 1
    .param p1, "boxBackgroundColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 579
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultBoxBackgroundColor:I

    if-eq v0, p1, :cond_0

    .line 580
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultBoxBackgroundColor:I

    .line 581
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxAttributes()V

    .line 583
    :cond_0
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
    .locals 1
    .param p1, "boxBackgroundColorId"    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 569
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    .line 570
    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1
    .param p1, "boxBackgroundMode"    # I

    .line 414
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    if-ne p1, v0, :cond_0

    .line 415
    return-void

    .line 417
    :cond_0
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    .line 418
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->onApplyBoxBackgroundMode()V

    .line 419
    return-void
.end method

.method public setBoxCornerRadii(FFFF)V
    .locals 1
    .param p1, "boxCornerRadiusTopLeft"    # F
    .param p2, "boxCornerRadiusTopRight"    # F
    .param p3, "boxCornerRadiusBottomLeft"    # F
    .param p4, "boxCornerRadiusBottomRight"    # F

    .line 633
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopLeft:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopRight:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomRight:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomLeft:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 637
    :cond_0
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopLeft:F

    .line 638
    iput p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopRight:F

    .line 639
    iput p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomRight:F

    .line 640
    iput p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomLeft:F

    .line 641
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxAttributes()V

    .line 643
    :cond_1
    return-void
.end method

.method public setBoxCornerRadiiResources(IIII)V
    .locals 4
    .param p1, "boxCornerRadiusTopLeftId"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .param p2, "boxCornerRadiusTopRightId"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .param p3, "boxCornerRadiusBottomRightId"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .param p4, "boxCornerRadiusBottomLeftId"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 609
    nop

    .line 610
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 611
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 612
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 613
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 609
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    .line 614
    return-void
.end method

.method public setBoxPadding(IIIIII)V
    .locals 0
    .param p1, "boxPaddingLeft"    # I
    .param p2, "boxCollapsedPaddingTop"    # I
    .param p3, "boxExpandedPaddingTop"    # I
    .param p4, "boxPaddingRight"    # I
    .param p5, "boxCollapsedPaddingBottom"    # I
    .param p6, "boxExpandedPaddingBottom"    # I

    .line 475
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxPaddingLeftPx:I

    .line 476
    iput p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingTopPx:I

    .line 477
    iput p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxExpandedPaddingTopPx:I

    .line 478
    iput p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxPaddingRightPx:I

    .line 479
    iput p5, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingBottomPx:I

    .line 480
    iput p6, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxExpandedPaddingBottomPx:I

    .line 481
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyEditTextBoxPadding()V

    .line 482
    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1
    .param p1, "boxStrokeColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 547
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    if-eq v0, p1, :cond_0

    .line 548
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    .line 549
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 551
    :cond_0
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 1147
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    if-eq v0, p1, :cond_3

    .line 1148
    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 1149
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1150
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    sget v2, Lcom/google/android/material/R$id;->textinput_counter:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 1151
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 1152
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1154
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1155
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextAppearance:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    .line 1156
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    .line 1157
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 1158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter(I)V

    goto :goto_0

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter(I)V

    goto :goto_0

    .line 1163
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    .line 1164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1166
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    .line 1168
    :cond_3
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1
    .param p1, "maxLength"    # I

    .line 1187
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    if-eq v0, p1, :cond_2

    .line 1188
    if-lez p1, :cond_0

    .line 1189
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    goto :goto_0

    .line 1191
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    .line 1193
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    if-eqz v0, :cond_2

    .line 1194
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter(I)V

    .line 1197
    :cond_2
    return-void
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 985
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 986
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 988
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 989
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 991
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1204
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 1205
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1206
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "errorText"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1125
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    return-void

    .line 1131
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 1134
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1135
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->showError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1137
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->hideError()V

    .line 1139
    :goto_0
    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1010
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorEnabled(Z)V

    .line 1011
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1019
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorTextAppearance(I)V

    .line 1020
    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColors"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1024
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorViewTextColor(Landroid/content/res/ColorStateList;)V

    .line 1025
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "helperText"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1079
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isHelperTextEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1081
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    goto :goto_0

    .line 1084
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isHelperTextEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1085
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->showHelper(Ljava/lang/CharSequence;)V

    .line 1089
    :cond_2
    :goto_0
    return-void
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColors"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1103
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextViewTextColor(Landroid/content/res/ColorStateList;)V

    .line 1104
    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1062
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextEnabled(Z)V

    .line 1063
    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1041
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextAppearance(I)V

    .line 1042
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 885
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_0

    .line 886
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 887
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->sendAccessibilityEvent(I)V

    .line 889
    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1615
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    .line 1616
    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 925
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eq p1, v0, :cond_4

    .line 926
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    .line 928
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 929
    .local v0, "editTextHint":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 930
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 933
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 936
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 938
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 941
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 942
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 944
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 949
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    .line 950
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateInputLayoutMargins()V

    .line 953
    .end local v0    # "editTextHint":Ljava/lang/CharSequence;
    :cond_4
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 971
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 972
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 974
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 975
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 977
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateInputLayoutMargins()V

    .line 979
    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1750
    if-eqz p1, :cond_0

    .line 1751
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1750
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    .line 1752
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1764
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    .line 1765
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v0, :cond_0

    .line 1766
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1768
    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1720
    if-eqz p1, :cond_0

    .line 1721
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1720
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1722
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1734
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1735
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v0, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1738
    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1811
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleEnabled:Z

    if-eq v0, p1, :cond_1

    .line 1812
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleEnabled:Z

    .line 1814
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggledVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1817
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1821
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggledVisible:Z

    .line 1823
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updatePasswordToggleView()V

    .line 1825
    :cond_1
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1839
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleTintList:Landroid/content/res/ColorStateList;

    .line 1840
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordToggleTintList:Z

    .line 1841
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyPasswordToggleTint()V

    .line 1842
    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1853
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordToggleTintMode:Z

    .line 1855
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyPasswordToggleTint()V

    .line 1856
    return-void
.end method

.method setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "textAppearance"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1248
    const/4 v0, 0x0

    .line 1250
    .local v0, "useDefaultColor":Z
    :try_start_0
    invoke-static {p1, p2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 1252
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 1253
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, -0xff01

    if-ne v1, v2, :cond_0

    .line 1257
    const/4 v0, 0x1

    .line 1263
    :cond_0
    goto :goto_0

    .line 1259
    :catch_0
    move-exception v1

    .line 1262
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    .line 1264
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_1

    .line 1267
    sget v1, Lcom/google/android/material/R$style;->TextAppearance_AppCompat_Caption:I

    invoke-static {p1, v1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 1268
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$color;->design_error:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1270
    :cond_1
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 706
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    .line 707
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    .line 709
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 710
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 712
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 716
    :cond_0
    return-void
.end method

.method updateCounter(I)V
    .locals 8
    .param p1, "length"    # I

    .line 1228
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    .line 1229
    .local v0, "wasCounterOverflowed":Z
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1230
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1231
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    goto :goto_2

    .line 1233
    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    const/4 v3, 0x1

    if-le p1, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    .line 1234
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eq v0, v1, :cond_3

    .line 1235
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextAppearance:I

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextAppearance:I

    :goto_1
    invoke-virtual {p0, v1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    .line 1238
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1239
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$string;->character_counter_pattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1238
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    :goto_2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eq v0, v1, :cond_4

    .line 1242
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 1243
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 1245
    :cond_4
    return-void
.end method

.method updateEditTextBackground()V
    .locals 3

    .line 1419
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 1420
    return-void

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1424
    .local v0, "editTextBackground":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 1425
    return-void

    .line 1428
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ensureBackgroundDrawableStateWorkaround()V

    .line 1430
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1431
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1434
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->errorShouldBeShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1436
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 1438
    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1437
    invoke-static {v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 1436
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 1439
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 1441
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1443
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1442
    invoke-static {v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 1441
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 1447
    :cond_4
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    .line 1448
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->refreshDrawableState()V

    .line 1450
    :goto_0
    return-void
.end method

.method updateLabelState(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 832
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(ZZ)V

    .line 833
    return-void
.end method

.method updateTextInputBoxState()V
    .locals 4

    .line 2034
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2038
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2039
    .local v0, "hasFocus":Z
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    nop

    .line 2042
    .local v1, "isHovered":Z
    :cond_2
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 2043
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2044
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->disabledColor:I

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    goto :goto_1

    .line 2045
    :cond_3
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/IndicatorViewController;->errorShouldBeShown()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2046
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v2

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    goto :goto_1

    .line 2047
    :cond_4
    if-eqz v0, :cond_5

    .line 2048
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    goto :goto_1

    .line 2049
    :cond_5
    if-eqz v1, :cond_6

    .line 2050
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredStrokeColor:I

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    goto :goto_1

    .line 2052
    :cond_6
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultStrokeColor:I

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    .line 2055
    :goto_1
    if-nez v1, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2056
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    goto :goto_2

    .line 2058
    :cond_8
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthDefaultPx:I

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    .line 2060
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxAttributes()V

    .line 2062
    :cond_9
    return-void

    .line 2035
    .end local v0    # "hasFocus":Z
    .end local v1    # "isHovered":Z
    :cond_a
    :goto_3
    return-void
.end method
