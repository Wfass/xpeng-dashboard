.class public Lcom/xiaopeng/xui/widget/XNumberPicker;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;,
        Lcom/xiaopeng/xui/widget/XNumberPicker$CustomEditText;,
        Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;,
        Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;,
        Lcom/xiaopeng/xui/widget/XNumberPicker$OnScrollListener;,
        Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;,
        Lcom/xiaopeng/xui/widget/XNumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DEFAULT_TEXT_SIZE:I = 0x14

.field private static final DIGIT_CHARACTERS:[C

.field private static final LAYOUT_ROUNDING_OFFSET:I = 0x5

.field private static final SELECTED_TEXT_LAYOUT_OFFSET:I = 0x0

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x2

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x5

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final SYMBOL_LAYOUT_OFFSET:I = 0x23

.field private static final SYMBOL_WIDTH:I = 0x6

.field private static final TEXT_LAYOUT_DEFAULT:I = 0x1

.field private static final TEXT_LAYOUT_LEFT:I = 0x0

.field private static final TEXT_LAYOUT_MIDDLE:I = 0x1

.field private static final TEXT_LAYOUT_RIGHT:I = 0x2

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Lcom/xiaopeng/xui/widget/XNumberPicker$TwoDigitFormatter;


# instance fields
.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;

.field private mHideWheelUntilFocused:Z

.field private mIgnoreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcom/xiaopeng/xui/widget/XNumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;

.field private mPerformClickOnTap:Z

.field private final mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectedSelectorElementHeight:I

.field private final mSelectedTextSize:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private final mSolidColor:I

.field private final mSymbol:Landroid/graphics/drawable/Drawable;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextLayout:I

.field private mTextLayoutMargin:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidth:I

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelPreferred:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 184
    new-instance v0, Lcom/xiaopeng/xui/widget/XNumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->sTwoDigitFormatter:Lcom/xiaopeng/xui/widget/XNumberPicker$TwoDigitFormatter;

    .line 1785
    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 524
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 525
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 534
    sget v0, Lcom/xiaopeng/xpui/R$style;->XNumberPicker:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 535
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 547
    sget v0, Lcom/xiaopeng/xpui/R$style;->XNumberPicker:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 548
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 564
    invoke-direct/range {p0 .. p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 138
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 283
    const-wide/16 v3, 0x12c

    iput-wide v3, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLongPressUpdateInterval:J

    .line 288
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 293
    const/4 v3, 0x5

    new-array v3, v3, [I

    iput-object v3, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    .line 313
    const/high16 v3, -0x80000000

    iput v3, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    .line 408
    const/4 v3, 0x0

    iput v3, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    .line 444
    const/4 v4, -0x1

    iput v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 567
    sget-object v5, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker:[I

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual {v1, v6, v5, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 570
    .local v5, "attributesArray":Landroid/content/res/TypedArray;
    sget v9, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_hideWheelUntilFocused:I

    invoke-virtual {v5, v9, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mHideWheelUntilFocused:Z

    .line 572
    sget v9, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_textLayout:I

    invoke-virtual {v5, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    .line 573
    sget v9, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_solidColor:I

    invoke-virtual {v5, v9, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSolidColor:I

    .line 575
    sget v9, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_selectionDivider:I

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 577
    .local v9, "selectionDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_0

    .line 578
    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLayoutDirection()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 580
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getDrawableState()[I

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 584
    :cond_0
    iput-object v9, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 585
    sget v10, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_symbol:I

    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    .line 588
    const/high16 v10, 0x40000000    # 2.0f

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 588
    invoke-static {v2, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    .line 591
    .local v10, "defSelectionDividerHeight":I
    sget v11, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_selectionDividerHeight:I

    invoke-virtual {v5, v11, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividerHeight:I

    .line 594
    const/high16 v11, 0x42400000    # 48.0f

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 594
    invoke-static {v2, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    .line 597
    .local v11, "defSelectionDividerDistance":I
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_selectionDividersDistance:I

    invoke-virtual {v5, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividersDistance:I

    .line 600
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_text_layout_margin:I

    invoke-virtual {v5, v12, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayoutMargin:I

    .line 602
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_internalMinHeight:I

    invoke-virtual {v5, v12, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinHeight:I

    .line 605
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_internalMaxHeight:I

    invoke-virtual {v5, v12, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxHeight:I

    .line 607
    iget v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinHeight:I

    if-eq v12, v4, :cond_2

    iget v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxHeight:I

    if-eq v12, v4, :cond_2

    iget v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinHeight:I

    iget v13, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxHeight:I

    if-gt v12, v13, :cond_1

    goto :goto_0

    .line 609
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "minHeight > maxHeight"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 612
    :cond_2
    :goto_0
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_internalMinWidth:I

    invoke-virtual {v5, v12, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    .line 615
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_internalMaxWidth:I

    invoke-virtual {v5, v12, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    .line 617
    iget v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    if-eq v12, v4, :cond_4

    iget v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    if-eq v12, v4, :cond_4

    iget v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    iget v13, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    if-gt v12, v13, :cond_3

    goto :goto_1

    .line 619
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "minWidth > maxWidth"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 622
    :cond_4
    :goto_1
    iget v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    if-ne v12, v4, :cond_5

    move v4, v2

    goto :goto_2

    :cond_5
    move v4, v3

    :goto_2
    iput-boolean v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mComputeMaxWidth:Z

    .line 624
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_android_textSize:I

    const/16 v12, 0x14

    invoke-virtual {v5, v4, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    .line 625
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_selectedTextSize:I

    invoke-virtual {v5, v4, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedTextSize:I

    .line 627
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_android_textColor:I

    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    .line 628
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_6

    .line 629
    const v4, 0x106000c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    .line 631
    :cond_6
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 633
    new-instance v4, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    invoke-direct {v4, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;-><init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V

    iput-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    .line 640
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setWillNotDraw(Z)V

    .line 643
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 644
    .local v4, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTouchSlop:I

    .line 645
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinimumFlingVelocity:I

    .line 646
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v12

    div-int/lit8 v12, v12, 0x8

    iput v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaximumFlingVelocity:I

    .line 650
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 651
    .local v12, "paint":Landroid/graphics/Paint;
    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 652
    iget v13, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    packed-switch v13, :pswitch_data_0

    goto :goto_3

    .line 660
    :pswitch_0
    sget-object v13, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_3

    .line 657
    :pswitch_1
    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 658
    goto :goto_3

    .line 654
    :pswitch_2
    sget-object v13, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 655
    nop

    .line 663
    :goto_3
    iget v13, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    iget v14, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedTextSize:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 664
    iget-object v13, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v13}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v13

    .line 665
    .local v13, "color":I
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 666
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/xiaopeng/xpui/R$string;->x_font_typeface_medium:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 667
    iput-object v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 670
    new-instance v3, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v3, v14, v15, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v3, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 671
    new-instance v3, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v15, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v3, v14, v15}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 675
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setImportantForAccessibility(I)V

    goto :goto_4

    .line 679
    :cond_7
    const/4 v2, 0x1

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getFocusable()I

    move-result v3

    const/16 v14, 0x10

    if-ne v3, v14, :cond_8

    .line 680
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setFocusable(I)V

    .line 681
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setFocusableInTouchMode(Z)V

    .line 684
    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/XNumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 66
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/widget/XNumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 66
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/widget/XNumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XNumberPicker;
    .param p1, "x1"    # Z

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xui/widget/XNumberPicker;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 66
    iget-wide v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method private changeValueByOne(Z)V
    .locals 13
    .param p1, "increment"    # Z

    .line 1541
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1544
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    .line 1545
    if-eqz p1, :cond_1

    .line 1546
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    neg-int v5, v0

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1548
    :cond_1
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1550
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1551
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .line 1642
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    .line 1643
    array-length v0, p1

    sub-int/2addr v0, v1

    invoke-static {p1, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1644
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 1645
    .local v0, "nextScrollSelectorIndex":I
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 1646
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    .line 1648
    :cond_1
    aput v0, p1, v2

    .line 1649
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1650
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .line 1657
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1658
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1659
    .local v1, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1660
    return-void

    .line 1662
    :cond_0
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    if-lt p1, v2, :cond_3

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 1665
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1666
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    sub-int v2, p1, v2

    .line 1667
    .local v2, "displayedValueIndex":I
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v3, v2

    .line 1668
    .end local v2    # "displayedValueIndex":I
    goto :goto_1

    .line 1669
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1663
    :cond_3
    :goto_0
    const-string v1, ""

    .line 1672
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1673
    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 1813
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    .line 1814
    .local v0, "deltaY":I
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1815
    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    .line 1816
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    .line 1817
    if-lez v0, :cond_0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    neg-int v1, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    :goto_0
    add-int/2addr v0, v1

    .line 1819
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1820
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1821
    const/4 v1, 0x1

    return v1

    .line 1823
    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10
    .param p1, "velocityY"    # I

    .line 1599
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    .line 1601
    if-lez p1, :cond_0

    .line 1602
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1604
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1607
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1608
    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .line 1676
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFormatter:Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFormatter:Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .line 1919
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 1753
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1755
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1756
    :catch_0
    move-exception v0

    .line 1758
    goto :goto_1

    .line 1760
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1762
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1763
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1764
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    return v1

    .line 1760
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1773
    .end local v0    # "i":I
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 1774
    :catch_1
    move-exception v0

    .line 1779
    :goto_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    return v0
.end method

.method public static getTwoDigitFormatter()Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;
    .locals 1

    .line 187
    sget-object v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->sTwoDigitFormatter:Lcom/xiaopeng/xui/widget/XNumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .line 1614
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 1615
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1616
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 1617
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1619
    :cond_1
    return p1
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .line 1627
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 1628
    const/4 v0, 0x0

    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {p1, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1629
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/2addr v0, v1

    .line 1630
    .local v0, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    if-le v0, v2, :cond_1

    .line 1631
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    .line 1633
    :cond_1
    array-length v2, p1

    sub-int/2addr v2, v1

    aput v0, p1, v2

    .line 1634
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1635
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .line 1568
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1569
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setFadingEdgeLength(I)V

    .line 1570
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 6

    .line 1554
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->initializeSelectorWheelIndices()V

    .line 1555
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    .line 1556
    .local v0, "selectorIndices":[I
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedTextSize:I

    add-int/2addr v1, v2

    .line 1557
    .local v1, "totalTextHeight":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v2, v2

    .line 1558
    .local v2, "totalTextGapHeight":F
    array-length v3, v0

    .line 1559
    .local v3, "textGapCount":I
    int-to-float v4, v3

    div-float v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    .line 1560
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    .line 1561
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedTextSize:I

    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedSelectorElementHeight:I

    .line 1563
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    .line 1564
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    iput v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 1565
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1491
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1492
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    .line 1493
    .local v0, "selectorIndices":[I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getValue()I

    move-result v1

    .line 1494
    .local v1, "current":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1495
    add-int/lit8 v3, v2, -0x2

    add-int/2addr v3, v1

    .line 1496
    .local v3, "selectorIndex":I
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1497
    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1499
    :cond_0
    aput v3, v0, v2

    .line 1500
    aget v4, v0, v2

    invoke-direct {p0, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1494
    .end local v3    # "selectorIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1502
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .line 1449
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1450
    return p1

    .line 1452
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1453
    .local v0, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1454
    .local v1, "mode":I
    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    .line 1456
    return p1

    .line 1462
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1460
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 1458
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .line 724
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 725
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 726
    .local v1, "amountToScroll":I
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    rem-int/2addr v2, v3

    .line 727
    .local v2, "futureScrollOffset":I
    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, v2

    .line 728
    .local v3, "overshootAdjustment":I
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 729
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_1

    .line 730
    if-lez v3, :cond_0

    .line 731
    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v3, v5

    goto :goto_0

    .line 733
    :cond_0
    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v3, v5

    .line 736
    :cond_1
    :goto_0
    add-int/2addr v1, v3

    .line 737
    invoke-virtual {p0, v4, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->scrollBy(II)V

    .line 738
    return v0

    .line 740
    :cond_2
    return v4
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .line 1684
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mOnValueChangeListener:Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1685
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mOnValueChangeListener:Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;->onValueChange(Lcom/xiaopeng/xui/widget/XNumberPicker;II)V

    .line 1688
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .line 1586
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 1587
    return-void

    .line 1589
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    .line 1590
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mOnScrollListener:Lcom/xiaopeng/xui/widget/XNumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1591
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mOnScrollListener:Lcom/xiaopeng/xui/widget/XNumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker$OnScrollListener;->onScrollStateChange(Lcom/xiaopeng/xui/widget/XNumberPicker;I)V

    .line 1593
    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .line 1576
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 1577
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->ensureScrollWheelAdjusted()Z

    .line 1578
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollStateChange(I)V

    .line 1580
    :cond_0
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .line 1719
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 1720
    new-instance v0, Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    .line 1722
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1724
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1725
    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .line 1696
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1697
    new-instance v0, Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 1699
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1701
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$000(Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1702
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1703
    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 1740
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1743
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_1

    .line 1744
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1746
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->cancel()V

    .line 1747
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .line 1731
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 1732
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1734
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 1709
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1710
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1712
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .line 1478
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1479
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1480
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->resolveSizeAndState(III)I

    move-result v1

    return v1

    .line 1482
    .end local v0    # "desiredWidth":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 3
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .line 1511
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 1512
    return-void

    .line 1515
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 1516
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 1518
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1519
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1521
    :goto_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    .line 1522
    .local v0, "previous":I
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    .line 1524
    if-eqz p2, :cond_2

    .line 1526
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->play(I)V

    .line 1527
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->notifyChange(II)V

    .line 1529
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->initializeSelectorWheelIndices()V

    .line 1530
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1531
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 8

    .line 1096
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    .line 1097
    return-void

    .line 1099
    :cond_0
    const/4 v0, 0x0

    .line 1100
    .local v0, "maxTextWidth":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 1101
    const/4 v1, 0x0

    .line 1102
    .local v1, "maxDigitWidth":F
    nop

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    .line 1103
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1104
    .local v3, "digitWidth":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    .line 1105
    move v1, v3

    .line 1102
    .end local v3    # "digitWidth":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1108
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    .line 1109
    .local v2, "numberOfDigits":I
    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    .line 1110
    .local v3, "current":I
    :goto_1
    if-lez v3, :cond_3

    .line 1111
    add-int/lit8 v2, v2, 0x1

    .line 1112
    div-int/lit8 v3, v3, 0xa

    goto :goto_1

    .line 1114
    :cond_3
    int-to-float v4, v2

    mul-float/2addr v4, v1

    float-to-int v0, v4

    .line 1115
    .end local v1    # "maxDigitWidth":F
    .end local v2    # "numberOfDigits":I
    .end local v3    # "current":I
    goto :goto_3

    .line 1116
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    .line 1117
    .local v1, "valueCount":I
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_6

    aget-object v5, v3, v2

    .line 1118
    .local v5, "mDisplayedValue":Ljava/lang/String;
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1119
    .local v6, "textWidth":F
    int-to-float v7, v0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_5

    .line 1120
    float-to-int v0, v6

    .line 1117
    .end local v5    # "mDisplayedValue":Ljava/lang/String;
    .end local v6    # "textWidth":F
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1125
    .end local v1    # "valueCount":I
    :cond_6
    :goto_3
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_8

    .line 1126
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    if-le v0, v1, :cond_7

    .line 1127
    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    goto :goto_4

    .line 1129
    :cond_7
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    .line 1131
    :goto_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1133
    :cond_8
    return-void
.end method

.method private updateWrapSelectorWheel()V
    .locals 4

    .line 1177
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1178
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheelPreferred:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    .line 1179
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 934
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 935
    .local v0, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 936
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 937
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    return-void

    .line 941
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 942
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 943
    .local v1, "currentScrollerY":I
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 944
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    .line 946
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->scrollBy(II)V

    .line 947
    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    .line 948
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 949
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 951
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 953
    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 1005
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .line 995
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 1000
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 888
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 889
    .local v0, "keyCode":I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_4

    const/16 v1, 0x42

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 896
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 910
    :pswitch_1
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_5

    .line 911
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 912
    return v2

    .line 898
    :pswitch_2
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    const/16 v3, 0x14

    if-nez v1, :cond_1

    if-ne v0, v3, :cond_0

    .line 899
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_5

    .line 900
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->requestFocus()Z

    .line 901
    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 902
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 903
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 904
    if-ne v0, v3, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->changeValueByOne(Z)V

    .line 906
    :cond_3
    return v2

    .line 892
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 893
    nop

    .line 917
    :cond_5
    :goto_2
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 867
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 868
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 871
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 874
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 922
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 923
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 926
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 929
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected drawableStateChanged()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1331
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->drawableStateChanged()V

    .line 1333
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 1334
    .local v0, "selectionDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1335
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1336
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1338
    :cond_0
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .line 1319
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValueForCurrentSelection()Ljava/lang/CharSequence;
    .locals 2

    .line 1309
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1244
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1210
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .line 1010
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .line 1314
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 1201
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 1143
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1343
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->jumpDrawablesToCurrentState()V

    .line 1345
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1348
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 879
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 880
    invoke-static {p1}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$color;->x_number_picker_text_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    .line 882
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postInvalidate()V

    .line 884
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1324
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onDetachedFromWindow()V

    .line 1325
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 1326
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1352
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mHideWheelUntilFocused:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 1353
    .local v0, "showSelectorWheel":Z
    :goto_1
    const/4 v3, 0x0

    .line 1354
    .local v3, "x":F
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    int-to-float v4, v4

    .line 1357
    .local v4, "y":F
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    .line 1358
    .local v5, "selectorIndices":[I
    move v6, v4

    move v4, v3

    move v3, v2

    .local v3, "i":I
    .local v4, "x":F
    .local v6, "y":F
    :goto_2
    array-length v7, v5

    const/4 v8, 0x2

    if-ge v3, v7, :cond_9

    .line 1359
    aget v7, v5, v3

    .line 1360
    .local v7, "selectorIndex":I
    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1362
    .local v9, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 1363
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v3, v8, :cond_4

    .line 1364
    iget-object v11, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    sget-object v12, Lcom/xiaopeng/xui/widget/XNumberPicker;->SELECTED_STATE_SET:[I

    const/high16 v13, -0x1000000

    invoke-virtual {v11, v12, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v11

    .line 1365
    .local v11, "color":I
    iget-object v12, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1366
    iget-object v12, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v13, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedTextSize:I

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1367
    iget v12, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    if-eqz v12, :cond_3

    if-eq v12, v8, :cond_2

    .line 1375
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLeft()I

    move-result v12

    sub-int/2addr v8, v12

    int-to-float v8, v8

    div-float/2addr v8, v10

    .end local v4    # "x":F
    .local v8, "x":F
    goto :goto_3

    .line 1372
    .end local v8    # "x":F
    .restart local v4    # "x":F
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLeft()I

    move-result v10

    sub-int/2addr v8, v10

    iget v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayoutMargin:I

    sub-int/2addr v8, v10

    int-to-float v8, v8

    .line 1373
    .end local v4    # "x":F
    .restart local v8    # "x":F
    goto :goto_3

    .line 1369
    .end local v8    # "x":F
    .restart local v4    # "x":F
    :cond_3
    iget v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayoutMargin:I

    int-to-float v8, v8

    .line 1370
    .end local v4    # "x":F
    .restart local v8    # "x":F
    nop

    .line 1377
    :goto_3
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v8, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1378
    .end local v11    # "color":I
    nop

    .line 1396
    .end local v8    # "x":F
    .restart local v4    # "x":F
    :goto_4
    move v4, v8

    goto :goto_6

    .line 1379
    :cond_4
    iget-object v11, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v11}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v11

    .line 1380
    .restart local v11    # "color":I
    iget-object v12, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1381
    iget-object v12, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v13, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1382
    iget v12, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    if-eqz v12, :cond_6

    if-eq v12, v8, :cond_5

    .line 1391
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLeft()I

    move-result v12

    sub-int/2addr v8, v12

    int-to-float v8, v8

    div-float/2addr v8, v10

    .end local v4    # "x":F
    .restart local v8    # "x":F
    goto :goto_5

    .line 1387
    .end local v8    # "x":F
    .restart local v4    # "x":F
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLeft()I

    move-result v10

    sub-int/2addr v8, v10

    iget v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayoutMargin:I

    sub-int/2addr v8, v10

    int-to-float v8, v8

    .line 1388
    .end local v4    # "x":F
    .restart local v8    # "x":F
    goto :goto_5

    .line 1384
    .end local v8    # "x":F
    .restart local v4    # "x":F
    :cond_6
    iget v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayoutMargin:I

    int-to-float v8, v8

    .line 1385
    .end local v4    # "x":F
    .restart local v8    # "x":F
    nop

    .line 1393
    :goto_5
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v8, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .end local v11    # "color":I
    goto :goto_4

    .line 1396
    .end local v8    # "x":F
    .restart local v4    # "x":F
    :cond_7
    :goto_6
    if-ne v3, v1, :cond_8

    .line 1397
    iget v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedSelectorElementHeight:I

    int-to-float v8, v8

    add-float/2addr v6, v8

    goto :goto_7

    .line 1399
    :cond_8
    iget v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    int-to-float v8, v8

    add-float/2addr v6, v8

    .line 1358
    .end local v7    # "selectorIndex":I
    .end local v9    # "scrollSelectorValue":Ljava/lang/String;
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1404
    .end local v3    # "i":I
    :cond_9
    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    .line 1406
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTopSelectionDividerTop:I

    .line 1407
    .local v1, "topOfTopDivider":I
    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividerHeight:I

    add-int/2addr v3, v1

    .line 1409
    .local v3, "bottomOfTopDivider":I
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget v9, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    invoke-virtual {v7, v2, v1, v9, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1411
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1414
    iget v7, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBottomSelectionDividerBottom:I

    .line 1415
    .local v7, "bottomOfBottomDivider":I
    iget v9, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividerHeight:I

    sub-int v9, v7, v9

    .line 1416
    .local v9, "topOfBottomDivider":I
    iget-object v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    invoke-virtual {v10, v2, v9, v11, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1417
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1419
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c

    .line 1420
    mul-int v2, v8, v3

    add-int/2addr v2, v9

    div-int/lit8 v2, v2, 0x3

    .line 1421
    .local v2, "topOfTopSymbol":I
    mul-int v10, v8, v9

    add-int/2addr v10, v3

    div-int/lit8 v10, v10, 0x3

    .line 1422
    .local v10, "bottomOfBottomSymbol":I
    iget v11, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    if-eqz v11, :cond_b

    if-eq v11, v8, :cond_a

    .end local v1    # "topOfTopDivider":I
    .end local v2    # "topOfTopSymbol":I
    .end local v3    # "bottomOfTopDivider":I
    .end local v7    # "bottomOfBottomDivider":I
    .end local v9    # "topOfBottomDivider":I
    .end local v10    # "bottomOfBottomSymbol":I
    goto :goto_8

    .line 1430
    .restart local v1    # "topOfTopDivider":I
    .restart local v2    # "topOfTopSymbol":I
    .restart local v3    # "bottomOfTopDivider":I
    .restart local v7    # "bottomOfBottomDivider":I
    .restart local v9    # "topOfBottomDivider":I
    .restart local v10    # "bottomOfBottomSymbol":I
    :cond_a
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v11, v2, 0x6

    const/16 v12, 0x29

    const/16 v13, 0x23

    invoke-virtual {v8, v13, v2, v12, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1431
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1432
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v11, v10, -0x6

    invoke-virtual {v8, v13, v11, v12, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1433
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1434
    goto :goto_8

    .line 1424
    :cond_b
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    add-int/lit8 v11, v11, -0x6

    iget v12, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    add-int/lit8 v13, v2, 0x6

    invoke-virtual {v8, v11, v2, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1425
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1426
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    add-int/lit8 v11, v11, -0x6

    add-int/lit8 v12, v10, -0x6

    iget v13, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    invoke-virtual {v8, v11, v12, v13, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1427
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1428
    nop

    .line 1439
    .end local v1    # "topOfTopDivider":I
    .end local v2    # "topOfTopSymbol":I
    .end local v3    # "bottomOfTopDivider":I
    .end local v7    # "bottomOfBottomDivider":I
    .end local v9    # "topOfBottomDivider":I
    .end local v10    # "bottomOfBottomSymbol":I
    :cond_c
    :goto_8
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 745
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 746
    return v1

    .line 748
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 751
    .local v0, "action":I
    if-nez v0, :cond_7

    .line 752
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 753
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownOrMoveEventY:F

    .line 754
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventTime:J

    .line 755
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mIgnoreMoveEvents:Z

    .line 756
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPerformClickOnTap:Z

    .line 757
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTopSelectionDividerTop:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x1

    if-gez v2, :cond_1

    .line 758
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    if-nez v2, :cond_2

    .line 759
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 762
    :cond_1
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 763
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    if-nez v2, :cond_2

    .line 764
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 768
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 769
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 770
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 771
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 772
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    .line 773
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 774
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 775
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 776
    :cond_4
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    .line 777
    nop

    .line 778
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v4, v2

    .line 777
    invoke-direct {p0, v1, v4, v5}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 779
    :cond_5
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 780
    nop

    .line 781
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    .line 780
    invoke-direct {p0, v3, v1, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 783
    :cond_6
    iput-boolean v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPerformClickOnTap:Z

    .line 784
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postBeginSoftInputOnLongPressCommand()V

    .line 786
    :goto_1
    return v3

    .line 788
    :cond_7
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 689
    if-eqz p1, :cond_0

    .line 691
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->initializeSelectorWheel()V

    .line 692
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->initializeFadingEdges()V

    .line 693
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTopSelectionDividerTop:I

    .line 695
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTopSelectionDividerTop:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividersDistance:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBottomSelectionDividerBottom:I

    .line 698
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 703
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 704
    .local v0, "newWidthMeasureSpec":I
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 705
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onMeasure(II)V

    .line 707
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMeasuredWidth()I

    move-result v3

    invoke-direct {p0, v2, v3, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v2

    .line 709
    .local v2, "widthSize":I
    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    .line 710
    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 712
    .local v3, "heightSize":I
    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMeasuredDimension(II)V

    .line 713
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 793
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 794
    return v1

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 797
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 800
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 801
    .local v0, "action":I
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 803
    :pswitch_0
    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mIgnoreMoveEvents:Z

    if-eqz v3, :cond_2

    .line 804
    goto/16 :goto_4

    .line 806
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 807
    .local v3, "currentMoveY":F
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    if-eq v4, v2, :cond_4

    .line 808
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 809
    .local v1, "deltaDownY":I
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTouchSlop:I

    if-le v1, v4, :cond_3

    .line 810
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 811
    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollStateChange(I)V

    .line 813
    .end local v1    # "deltaDownY":I
    :cond_3
    goto :goto_0

    .line 814
    :cond_4
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownOrMoveEventY:F

    sub-float v4, v3, v4

    float-to-int v4, v4

    .line 815
    .local v4, "deltaMoveY":I
    invoke-virtual {p0, v1, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->scrollBy(II)V

    .line 816
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 818
    .end local v4    # "deltaMoveY":I
    :goto_0
    iput v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownOrMoveEventY:F

    .line 820
    .end local v3    # "currentMoveY":F
    goto/16 :goto_4

    .line 822
    :pswitch_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeBeginSoftInputCommand()V

    .line 823
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 824
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->cancel()V

    .line 825
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 826
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v4, 0x3e8

    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 827
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    float-to-int v4, v4

    .line 828
    .local v4, "initialVelocity":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinimumFlingVelocity:I

    const/4 v7, 0x2

    if-le v5, v6, :cond_5

    .line 829
    invoke-direct {p0, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->fling(I)V

    .line 830
    invoke-direct {p0, v7}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollStateChange(I)V

    goto :goto_3

    .line 832
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 833
    .local v5, "eventY":I
    int-to-float v6, v5

    iget v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    .line 834
    .local v6, "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventTime:J

    sub-long/2addr v8, v10

    .line 835
    .local v8, "deltaTime":J
    iget v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTouchSlop:I

    if-gt v6, v10, :cond_9

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_9

    .line 836
    iget-boolean v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPerformClickOnTap:Z

    if-eqz v10, :cond_6

    .line 837
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPerformClickOnTap:Z

    .line 838
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->performClick()Z

    goto :goto_2

    .line 840
    :cond_6
    iget v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    div-int v10, v5, v10

    sub-int/2addr v10, v7

    .line 842
    .local v10, "selectorIndexOffset":I
    if-lez v10, :cond_7

    .line 843
    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->changeValueByOne(Z)V

    .line 844
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    invoke-virtual {v7, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 846
    :cond_7
    if-gez v10, :cond_8

    .line 847
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->changeValueByOne(Z)V

    .line 848
    iget-object v11, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    invoke-virtual {v11, v7}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->buttonTapped(I)V

    .line 851
    .end local v10    # "selectorIndexOffset":I
    :cond_8
    :goto_1
    goto :goto_2

    .line 853
    :cond_9
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->ensureScrollWheelAdjusted()Z

    .line 855
    :goto_2
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollStateChange(I)V

    .line 857
    .end local v5    # "eventY":I
    .end local v6    # "deltaMoveY":I
    .end local v8    # "deltaTime":J
    :goto_3
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 858
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 862
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "initialVelocity":I
    :goto_4
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .line 1084
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .line 1089
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public scrollBy(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 957
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    .line 958
    .local v0, "selectorIndices":[I
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 959
    .local v1, "startScrollOffset":I
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    const/4 v3, 0x2

    if-nez v2, :cond_0

    if-lez p2, :cond_0

    aget v2, v0, v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    if-gt v2, v4, :cond_0

    .line 961
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 962
    return-void

    .line 964
    :cond_0
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-nez v2, :cond_1

    if-gez p2, :cond_1

    aget v2, v0, v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    if-lt v2, v4, :cond_1

    .line 966
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 967
    return-void

    .line 969
    :cond_1
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 970
    :goto_0
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    const/4 v5, 0x1

    if-le v2, v4, :cond_3

    .line 971
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v5

    .line 972
    .local v2, "decrement":I
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 973
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->decrementSelectorIndices([I)V

    .line 974
    aget v4, v0, v3

    invoke-direct {p0, v4, v5}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValueInternal(IZ)V

    .line 975
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-nez v4, :cond_2

    aget v4, v0, v3

    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    if-gt v4, v5, :cond_2

    .line 976
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    iput v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 978
    .end local v2    # "decrement":I
    :cond_2
    goto :goto_0

    .line 979
    :cond_3
    :goto_1
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    neg-int v4, v4

    if-ge v2, v4, :cond_5

    .line 980
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v5

    .line 981
    .local v2, "increment":I
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 982
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->incrementSelectorIndices([I)V

    .line 983
    aget v4, v0, v3

    invoke-direct {p0, v4, v5}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValueInternal(IZ)V

    .line 984
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-nez v4, :cond_4

    aget v4, v0, v3

    iget v6, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    if-lt v4, v6, :cond_4

    .line 985
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    iput v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 987
    .end local v2    # "increment":I
    :cond_4
    goto :goto_1

    .line 988
    :cond_5
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    if-eq v1, v2, :cond_6

    .line 989
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, v3, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollChanged(IIII)V

    .line 991
    :cond_6
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .line 1291
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1292
    return-void

    .line 1294
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1295
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->initializeSelectorWheelIndices()V

    .line 1296
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->tryComputeMaxWidth()V

    .line 1297
    return-void
.end method

.method public setFormatter(Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;

    .line 1043
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFormatter:Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1044
    return-void

    .line 1046
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFormatter:Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;

    .line 1047
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->initializeSelectorWheelIndices()V

    .line 1048
    return-void
.end method

.method public setMaxValue(I)V
    .locals 2
    .param p1, "maxValue"    # I

    .line 1258
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    .line 1259
    return-void

    .line 1261
    :cond_0
    if-ltz p1, :cond_2

    .line 1264
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    .line 1265
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    if-ge v0, v1, :cond_1

    .line 1266
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    .line 1268
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->updateWrapSelectorWheel()V

    .line 1269
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1270
    return-void

    .line 1262
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinValue(I)V
    .locals 2
    .param p1, "minValue"    # I

    .line 1224
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    .line 1225
    return-void

    .line 1227
    :cond_0
    if-ltz p1, :cond_2

    .line 1230
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    .line 1231
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    if-le v0, v1, :cond_1

    .line 1232
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    .line 1234
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->updateWrapSelectorWheel()V

    .line 1235
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1236
    return-void

    .line 1228
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .param p1, "intervalMillis"    # J

    .line 1192
    iput-wide p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLongPressUpdateInterval:J

    .line 1193
    return-void
.end method

.method public setOnScrollListener(Lcom/xiaopeng/xui/widget/XNumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lcom/xiaopeng/xui/widget/XNumberPicker$OnScrollListener;

    .line 1028
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mOnScrollListener:Lcom/xiaopeng/xui/widget/XNumberPicker$OnScrollListener;

    .line 1029
    return-void
.end method

.method public setOnValueChangedListener(Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;

    .line 1019
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mOnValueChangeListener:Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;

    .line 1020
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1079
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValueInternal(IZ)V

    .line 1080
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0
    .param p1, "wrapSelectorWheel"    # Z

    .line 1164
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 1165
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->updateWrapSelectorWheel()V

    .line 1167
    return-void
.end method
