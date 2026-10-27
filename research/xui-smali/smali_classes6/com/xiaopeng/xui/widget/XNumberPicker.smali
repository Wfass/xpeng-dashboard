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

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x3

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

.field private mSelectionDivider:Landroid/graphics/drawable/Drawable;

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

.field np_selectionDividerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 189
    new-instance v0, Lcom/xiaopeng/xui/widget/XNumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->sTwoDigitFormatter:Lcom/xiaopeng/xui/widget/XNumberPicker$TwoDigitFormatter;

    .line 1839
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

    .line 529
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 530
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 539
    sget v0, Lcom/xiaopeng/xpui/R$style;->XNumberPicker:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 540
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 552
    sget v0, Lcom/xiaopeng/xpui/R$style;->XNumberPicker:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 553
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

    .line 571
    invoke-direct/range {p0 .. p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 143
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 288
    const-wide/16 v3, 0x12c

    iput-wide v3, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLongPressUpdateInterval:J

    .line 293
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 298
    const/4 v3, 0x5

    new-array v3, v3, [I

    iput-object v3, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    .line 318
    const/high16 v3, -0x80000000

    iput v3, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    .line 413
    const/4 v3, 0x0

    iput v3, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    .line 449
    const/4 v4, -0x1

    iput v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 574
    sget-object v5, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker:[I

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual {v1, v6, v5, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 577
    .local v5, "attributesArray":Landroid/content/res/TypedArray;
    sget v9, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_hideWheelUntilFocused:I

    invoke-virtual {v5, v9, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mHideWheelUntilFocused:Z

    .line 579
    sget v9, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_textLayout:I

    invoke-virtual {v5, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    .line 580
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v9

    if-ne v9, v2, :cond_1

    .line 581
    iget v9, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    const/4 v10, 0x2

    if-nez v9, :cond_0

    .line 582
    iput v10, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    goto :goto_0

    .line 583
    :cond_0
    iget v9, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    if-ne v9, v10, :cond_1

    .line 584
    iput v3, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    .line 587
    :cond_1
    :goto_0
    sget v9, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_solidColor:I

    invoke-virtual {v5, v9, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSolidColor:I

    .line 589
    sget v9, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_selectionDivider:I

    sget v10, Lcom/xiaopeng/xpui/R$drawable;->x_number_picker_divider_material:I

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->np_selectionDividerId:I

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->np_selectionDividerId:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 593
    .local v9, "selectionDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_2

    .line 594
    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLayoutDirection()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 596
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getDrawableState()[I

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 600
    :cond_2
    iput-object v9, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 601
    sget v10, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_symbol:I

    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    .line 604
    const/high16 v10, 0x40000000    # 2.0f

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 604
    invoke-static {v2, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    .line 607
    .local v10, "defSelectionDividerHeight":I
    sget v11, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_selectionDividerHeight:I

    invoke-virtual {v5, v11, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividerHeight:I

    .line 610
    const/high16 v11, 0x42400000    # 48.0f

    .line 612
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 610
    invoke-static {v2, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    .line 613
    .local v11, "defSelectionDividerDistance":I
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_selectionDividersDistance:I

    invoke-virtual {v5, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividersDistance:I

    .line 616
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_text_layout_margin:I

    invoke-virtual {v5, v12, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayoutMargin:I

    .line 618
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_internalMinHeight:I

    invoke-virtual {v5, v12, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinHeight:I

    .line 621
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_internalMaxHeight:I

    invoke-virtual {v5, v12, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxHeight:I

    .line 623
    iget v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinHeight:I

    if-eq v12, v4, :cond_4

    iget v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxHeight:I

    if-eq v12, v4, :cond_4

    iget v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinHeight:I

    iget v13, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxHeight:I

    if-gt v12, v13, :cond_3

    goto :goto_1

    .line 625
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "minHeight > maxHeight"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 628
    :cond_4
    :goto_1
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_internalMinWidth:I

    invoke-virtual {v5, v12, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    .line 631
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_internalMaxWidth:I

    invoke-virtual {v5, v12, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    .line 633
    iget v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    if-eq v12, v4, :cond_6

    iget v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    if-eq v12, v4, :cond_6

    iget v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    iget v13, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    if-gt v12, v13, :cond_5

    goto :goto_2

    .line 635
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "minWidth > maxWidth"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 638
    :cond_6
    :goto_2
    iget v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    if-ne v12, v4, :cond_7

    move v4, v2

    goto :goto_3

    :cond_7
    move v4, v3

    :goto_3
    iput-boolean v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mComputeMaxWidth:Z

    .line 640
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_android_textSize:I

    const/16 v12, 0x14

    invoke-virtual {v5, v4, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    .line 641
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_selectedTextSize:I

    invoke-virtual {v5, v4, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedTextSize:I

    .line 643
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_android_textColor:I

    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    .line 644
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_8

    .line 645
    const v4, 0x106000c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    .line 647
    :cond_8
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 649
    new-instance v4, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    invoke-direct {v4, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;-><init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V

    iput-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    .line 656
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setWillNotDraw(Z)V

    .line 659
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 660
    .local v4, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTouchSlop:I

    .line 661
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinimumFlingVelocity:I

    .line 662
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v12

    div-int/lit8 v12, v12, 0x3

    iput v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaximumFlingVelocity:I

    .line 666
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 667
    .local v12, "paint":Landroid/graphics/Paint;
    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 668
    iget v13, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    packed-switch v13, :pswitch_data_0

    goto :goto_4

    .line 676
    :pswitch_0
    sget-object v13, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_4

    .line 673
    :pswitch_1
    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 674
    goto :goto_4

    .line 670
    :pswitch_2
    sget-object v13, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 671
    nop

    .line 679
    :goto_4
    iget v13, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    iget v14, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedTextSize:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 680
    iget-object v13, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v13}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v13

    .line 681
    .local v13, "color":I
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/xiaopeng/xpui/R$string;->x_font_typeface_medium:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 683
    iput-object v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 686
    new-instance v3, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v3, v14, v15, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v3, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 687
    new-instance v3, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v15, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v3, v14, v15}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_9

    .line 691
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setImportantForAccessibility(I)V

    goto :goto_5

    .line 695
    :cond_9
    const/4 v2, 0x1

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getFocusable()I

    move-result v3

    const/16 v14, 0x10

    if-ne v3, v14, :cond_a

    .line 696
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setFocusable(I)V

    .line 697
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setFocusableInTouchMode(Z)V

    .line 700
    :cond_a
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xui/widget/XNumberPicker$1;

    invoke-direct {v3, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$1;-><init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/libtheme/ThemeViewModel;->addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 717
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$002(Lcom/xiaopeng/xui/widget/XNumberPicker;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XNumberPicker;
    .param p1, "x1"    # Landroid/content/res/ColorStateList;

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xiaopeng/xui/widget/XNumberPicker;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XNumberPicker;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/widget/XNumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 71
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xui/widget/XNumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 71
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xui/widget/XNumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XNumberPicker;
    .param p1, "x1"    # Z

    .line 71
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xui/widget/XNumberPicker;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 71
    iget-wide v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method private changeValueByOne(Z)V
    .locals 13
    .param p1, "increment"    # Z

    .line 1595
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1598
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    .line 1599
    if-eqz p1, :cond_1

    .line 1600
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    neg-int v5, v0

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1602
    :cond_1
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1604
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1605
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .line 1696
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    .line 1697
    array-length v0, p1

    sub-int/2addr v0, v1

    invoke-static {p1, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1698
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 1699
    .local v0, "nextScrollSelectorIndex":I
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 1700
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    .line 1702
    :cond_1
    aput v0, p1, v2

    .line 1703
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1704
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .line 1711
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1712
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1713
    .local v1, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1714
    return-void

    .line 1716
    :cond_0
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    if-lt p1, v2, :cond_3

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 1719
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1720
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    sub-int v2, p1, v2

    .line 1721
    .local v2, "displayedValueIndex":I
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v3, v2

    .line 1722
    .end local v2    # "displayedValueIndex":I
    goto :goto_1

    .line 1723
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1717
    :cond_3
    :goto_0
    const-string v1, ""

    .line 1726
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1727
    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 1867
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    .line 1868
    .local v0, "deltaY":I
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1869
    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    .line 1870
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    .line 1871
    if-lez v0, :cond_0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    neg-int v1, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    :goto_0
    add-int/2addr v0, v1

    .line 1873
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1874
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1875
    const/4 v1, 0x1

    return v1

    .line 1877
    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10
    .param p1, "velocityY"    # I

    .line 1653
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    .line 1655
    if-lez p1, :cond_0

    .line 1656
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

    .line 1658
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

    .line 1661
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1662
    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .line 1730
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

    .line 1973
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

    .line 1807
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1809
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1810
    :catch_0
    move-exception v0

    .line 1812
    goto :goto_1

    .line 1814
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1816
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1817
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1818
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    return v1

    .line 1814
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1827
    .end local v0    # "i":I
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 1828
    :catch_1
    move-exception v0

    .line 1833
    :goto_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    return v0
.end method

.method public static getTwoDigitFormatter()Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;
    .locals 1

    .line 192
    sget-object v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->sTwoDigitFormatter:Lcom/xiaopeng/xui/widget/XNumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .line 1668
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 1669
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

    .line 1670
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 1671
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

    .line 1673
    :cond_1
    return p1
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .line 1681
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 1682
    const/4 v0, 0x0

    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {p1, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1683
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/2addr v0, v1

    .line 1684
    .local v0, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    if-le v0, v2, :cond_1

    .line 1685
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    .line 1687
    :cond_1
    array-length v2, p1

    sub-int/2addr v2, v1

    aput v0, p1, v2

    .line 1688
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1689
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .line 1622
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1623
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setFadingEdgeLength(I)V

    .line 1624
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 6

    .line 1608
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->initializeSelectorWheelIndices()V

    .line 1609
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    .line 1610
    .local v0, "selectorIndices":[I
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedTextSize:I

    add-int/2addr v1, v2

    .line 1611
    .local v1, "totalTextHeight":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v2, v2

    .line 1612
    .local v2, "totalTextGapHeight":F
    array-length v3, v0

    .line 1613
    .local v3, "textGapCount":I
    int-to-float v4, v3

    div-float v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    .line 1614
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    .line 1615
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedTextSize:I

    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedSelectorElementHeight:I

    .line 1617
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    .line 1618
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    iput v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 1619
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1534
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1535
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    .line 1536
    .local v0, "selectorIndices":[I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getValue()I

    move-result v1

    .line 1537
    .local v1, "current":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1538
    add-int/lit8 v3, v2, -0x2

    add-int/2addr v3, v1

    .line 1539
    .local v3, "selectorIndex":I
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1540
    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1542
    :cond_0
    aput v3, v0, v2

    .line 1543
    aget v4, v0, v2

    invoke-direct {p0, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1537
    .end local v3    # "selectorIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1545
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .line 1492
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1493
    return p1

    .line 1495
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1496
    .local v0, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1497
    .local v1, "mode":I
    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    .line 1499
    return p1

    .line 1505
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

    .line 1503
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 1501
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

    .line 757
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 758
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 759
    .local v1, "amountToScroll":I
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    rem-int/2addr v2, v3

    .line 760
    .local v2, "futureScrollOffset":I
    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, v2

    .line 761
    .local v3, "overshootAdjustment":I
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 762
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_1

    .line 763
    if-lez v3, :cond_0

    .line 764
    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v3, v5

    goto :goto_0

    .line 766
    :cond_0
    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v3, v5

    .line 769
    :cond_1
    :goto_0
    add-int/2addr v1, v3

    .line 770
    invoke-virtual {p0, v4, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->scrollBy(II)V

    .line 771
    return v0

    .line 773
    :cond_2
    return v4
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .line 1738
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mOnValueChangeListener:Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mOnValueChangeListener:Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;->onValueChange(Lcom/xiaopeng/xui/widget/XNumberPicker;II)V

    .line 1742
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .line 1640
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 1641
    return-void

    .line 1643
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    .line 1644
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mOnScrollListener:Lcom/xiaopeng/xui/widget/XNumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1645
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mOnScrollListener:Lcom/xiaopeng/xui/widget/XNumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker$OnScrollListener;->onScrollStateChange(Lcom/xiaopeng/xui/widget/XNumberPicker;I)V

    .line 1647
    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .line 1630
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 1631
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->ensureScrollWheelAdjusted()Z

    .line 1632
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollStateChange(I)V

    .line 1634
    :cond_0
    return-void
.end method

.method private playScrollSound()V
    .locals 3

    .line 1577
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->isSoundEffectsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1578
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 1579
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 1580
    .local v0, "displayId":I
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->playSoundEffectByDisplay(II)V

    .line 1581
    .end local v0    # "displayId":I
    goto :goto_0

    .line 1582
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->play(I)V

    .line 1585
    :cond_1
    :goto_0
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .line 1773
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 1774
    new-instance v0, Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    .line 1776
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1778
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1779
    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .line 1750
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1751
    new-instance v0, Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 1753
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1755
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$200(Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1756
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1757
    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 1794
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1795
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1797
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_1

    .line 1798
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1800
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->cancel()V

    .line 1801
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .line 1785
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1788
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 1763
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1764
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1766
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .line 1521
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1522
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1523
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->resolveSizeAndState(III)I

    move-result v1

    return v1

    .line 1525
    .end local v0    # "desiredWidth":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 1
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .line 1554
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 1555
    return-void

    .line 1558
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 1559
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 1561
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1562
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1564
    :goto_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    .line 1565
    .local v0, "previous":I
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    .line 1567
    if-eqz p2, :cond_2

    .line 1569
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->playScrollSound()V

    .line 1570
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->notifyChange(II)V

    .line 1572
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->initializeSelectorWheelIndices()V

    .line 1573
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1574
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 8

    .line 1125
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    .line 1126
    return-void

    .line 1128
    :cond_0
    const/4 v0, 0x0

    .line 1129
    .local v0, "maxTextWidth":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 1130
    const/4 v1, 0x0

    .line 1131
    .local v1, "maxDigitWidth":F
    nop

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    .line 1132
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1133
    .local v3, "digitWidth":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    .line 1134
    move v1, v3

    .line 1131
    .end local v3    # "digitWidth":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1137
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    .line 1138
    .local v2, "numberOfDigits":I
    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    .line 1139
    .local v3, "current":I
    :goto_1
    if-lez v3, :cond_3

    .line 1140
    add-int/lit8 v2, v2, 0x1

    .line 1141
    div-int/lit8 v3, v3, 0xa

    goto :goto_1

    .line 1143
    :cond_3
    int-to-float v4, v2

    mul-float/2addr v4, v1

    float-to-int v0, v4

    .line 1144
    .end local v1    # "maxDigitWidth":F
    .end local v2    # "numberOfDigits":I
    .end local v3    # "current":I
    goto :goto_3

    .line 1145
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    .line 1146
    .local v1, "valueCount":I
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_6

    aget-object v5, v3, v2

    .line 1147
    .local v5, "mDisplayedValue":Ljava/lang/String;
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1148
    .local v6, "textWidth":F
    int-to-float v7, v0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_5

    .line 1149
    float-to-int v0, v6

    .line 1146
    .end local v5    # "mDisplayedValue":Ljava/lang/String;
    .end local v6    # "textWidth":F
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1154
    .end local v1    # "valueCount":I
    :cond_6
    :goto_3
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_8

    .line 1155
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    if-le v0, v1, :cond_7

    .line 1156
    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    goto :goto_4

    .line 1158
    :cond_7
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    .line 1160
    :goto_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1162
    :cond_8
    return-void
.end method

.method private updateWrapSelectorWheel()V
    .locals 4

    .line 1206
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

    .line 1207
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

    .line 1208
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 963
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 964
    .local v0, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 966
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    return-void

    .line 970
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 971
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 972
    .local v1, "currentScrollerY":I
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 973
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    .line 975
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->scrollBy(II)V

    .line 976
    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    .line 977
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 978
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 980
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 982
    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 1034
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .line 1024
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 1029
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

    .line 917
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 918
    .local v0, "keyCode":I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_4

    const/16 v1, 0x42

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 925
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 939
    :pswitch_1
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_5

    .line 940
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 941
    return v2

    .line 927
    :pswitch_2
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    const/16 v3, 0x14

    if-nez v1, :cond_1

    if-ne v0, v3, :cond_0

    .line 928
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

    .line 929
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->requestFocus()Z

    .line 930
    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 931
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 932
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 933
    if-ne v0, v3, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->changeValueByOne(Z)V

    .line 935
    :cond_3
    return v2

    .line 921
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 922
    nop

    .line 946
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

    .line 900
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 901
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 904
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 907
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 951
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 952
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 955
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 958
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected drawableStateChanged()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1360
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->drawableStateChanged()V

    .line 1362
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 1363
    .local v0, "selectionDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1364
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1365
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1367
    :cond_0
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .line 1348
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValueForCurrentSelection()Ljava/lang/CharSequence;
    .locals 2

    .line 1338
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

    .line 1307
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1273
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1239
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .line 1039
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .line 1343
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 1230
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 1172
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1372
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->jumpDrawablesToCurrentState()V

    .line 1374
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1377
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 912
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 913
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1353
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onDetachedFromWindow()V

    .line 1354
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 1355
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 1381
    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mHideWheelUntilFocused:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 1382
    .local v2, "showSelectorWheel":Z
    :goto_1
    const/4 v5, 0x0

    .line 1383
    .local v5, "x":F
    iget v6, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    int-to-float v6, v6

    .line 1386
    .local v6, "y":F
    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    .line 1387
    .local v7, "selectorIndices":[I
    move v8, v6

    move v6, v5

    move v5, v3

    .local v5, "i":I
    .local v6, "x":F
    .local v8, "y":F
    :goto_2
    array-length v9, v7

    const/4 v10, 0x2

    if-ge v5, v9, :cond_9

    .line 1388
    aget v9, v7, v5

    .line 1389
    .local v9, "selectorIndex":I
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1391
    .local v11, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 1392
    const/high16 v12, 0x40000000    # 2.0f

    if-ne v5, v10, :cond_4

    .line 1393
    iget-object v13, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    sget-object v14, Lcom/xiaopeng/xui/widget/XNumberPicker;->SELECTED_STATE_SET:[I

    const/high16 v15, -0x1000000

    invoke-virtual {v13, v14, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v13

    .line 1394
    .local v13, "color":I
    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1395
    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v15, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedTextSize:I

    int-to-float v15, v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1396
    iget v14, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    if-eqz v14, :cond_3

    if-eq v14, v10, :cond_2

    .line 1404
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLeft()I

    move-result v14

    sub-int/2addr v10, v14

    int-to-float v10, v10

    div-float/2addr v10, v12

    .end local v6    # "x":F
    .local v10, "x":F
    goto :goto_3

    .line 1401
    .end local v10    # "x":F
    .restart local v6    # "x":F
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLeft()I

    move-result v12

    sub-int/2addr v10, v12

    iget v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayoutMargin:I

    sub-int/2addr v10, v12

    int-to-float v10, v10

    .line 1402
    .end local v6    # "x":F
    .restart local v10    # "x":F
    goto :goto_3

    .line 1398
    .end local v10    # "x":F
    .restart local v6    # "x":F
    :cond_3
    iget v10, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayoutMargin:I

    int-to-float v10, v10

    .line 1399
    .end local v6    # "x":F
    .restart local v10    # "x":F
    nop

    .line 1406
    :goto_3
    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v10, v8, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1407
    .end local v13    # "color":I
    nop

    .line 1425
    .end local v10    # "x":F
    .restart local v6    # "x":F
    :goto_4
    move v6, v10

    goto :goto_6

    .line 1408
    :cond_4
    iget-object v13, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v13}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v13

    .line 1409
    .restart local v13    # "color":I
    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1410
    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v15, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    int-to-float v15, v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1411
    iget v14, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    if-eqz v14, :cond_6

    if-eq v14, v10, :cond_5

    .line 1420
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLeft()I

    move-result v14

    sub-int/2addr v10, v14

    int-to-float v10, v10

    div-float/2addr v10, v12

    .end local v6    # "x":F
    .restart local v10    # "x":F
    goto :goto_5

    .line 1416
    .end local v10    # "x":F
    .restart local v6    # "x":F
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLeft()I

    move-result v12

    sub-int/2addr v10, v12

    iget v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayoutMargin:I

    sub-int/2addr v10, v12

    int-to-float v10, v10

    .line 1417
    .end local v6    # "x":F
    .restart local v10    # "x":F
    goto :goto_5

    .line 1413
    .end local v10    # "x":F
    .restart local v6    # "x":F
    :cond_6
    iget v10, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayoutMargin:I

    int-to-float v10, v10

    .line 1414
    .end local v6    # "x":F
    .restart local v10    # "x":F
    nop

    .line 1422
    :goto_5
    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v10, v8, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .end local v13    # "color":I
    goto :goto_4

    .line 1425
    .end local v10    # "x":F
    .restart local v6    # "x":F
    :cond_7
    :goto_6
    if-ne v5, v4, :cond_8

    .line 1426
    iget v10, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedSelectorElementHeight:I

    int-to-float v10, v10

    add-float/2addr v8, v10

    goto :goto_7

    .line 1428
    :cond_8
    iget v10, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    int-to-float v10, v10

    add-float/2addr v8, v10

    .line 1387
    .end local v9    # "selectorIndex":I
    .end local v11    # "scrollSelectorValue":Ljava/lang/String;
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1433
    .end local v5    # "i":I
    :cond_9
    if-eqz v2, :cond_e

    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_e

    .line 1435
    iget v5, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTopSelectionDividerTop:I

    .line 1436
    .local v5, "topOfTopDivider":I
    iget v9, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividerHeight:I

    add-int/2addr v9, v5

    .line 1438
    .local v9, "bottomOfTopDivider":I
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    invoke-virtual {v11, v3, v5, v12, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1440
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1443
    iget v11, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBottomSelectionDividerBottom:I

    .line 1444
    .local v11, "bottomOfBottomDivider":I
    iget v12, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividerHeight:I

    sub-int v12, v11, v12

    .line 1445
    .local v12, "topOfBottomDivider":I
    iget-object v13, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget v14, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    invoke-virtual {v13, v3, v12, v14, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1446
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1448
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_e

    .line 1449
    mul-int v3, v10, v9

    add-int/2addr v3, v12

    div-int/lit8 v3, v3, 0x3

    .line 1450
    .local v3, "topOfTopSymbol":I
    mul-int v13, v10, v12

    add-int/2addr v13, v9

    div-int/lit8 v13, v13, 0x3

    .line 1451
    .local v13, "bottomOfBottomSymbol":I
    iget v14, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    const/16 v15, 0x23

    if-eqz v14, :cond_c

    if-eq v14, v10, :cond_a

    .end local v3    # "topOfTopSymbol":I
    .end local v5    # "topOfTopDivider":I
    .end local v9    # "bottomOfTopDivider":I
    .end local v11    # "bottomOfBottomDivider":I
    .end local v12    # "topOfBottomDivider":I
    .end local v13    # "bottomOfBottomSymbol":I
    goto/16 :goto_8

    .line 1466
    .restart local v3    # "topOfTopSymbol":I
    .restart local v5    # "topOfTopDivider":I
    .restart local v9    # "bottomOfTopDivider":I
    .restart local v11    # "bottomOfBottomDivider":I
    .restart local v12    # "topOfBottomDivider":I
    .restart local v13    # "bottomOfBottomSymbol":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLayoutDirection()I

    move-result v10

    if-ne v10, v4, :cond_b

    .line 1467
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v10, v3, 0x6

    const/16 v14, 0x29

    invoke-virtual {v4, v15, v3, v14, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1468
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1469
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v10, v13, -0x6

    invoke-virtual {v4, v15, v10, v14, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1470
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_8

    .line 1472
    :cond_b
    const/16 v14, 0x29

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v10, v3, 0x6

    invoke-virtual {v4, v15, v3, v14, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1473
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1474
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v10, v13, -0x6

    invoke-virtual {v4, v15, v10, v14, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1475
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1477
    goto :goto_8

    .line 1453
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLayoutDirection()I

    move-result v10

    if-ne v10, v4, :cond_d

    .line 1454
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v10, v3, 0x6

    const/16 v14, 0x29

    invoke-virtual {v4, v15, v3, v14, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1455
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1456
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v10, v13, -0x6

    invoke-virtual {v4, v15, v10, v14, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1457
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_8

    .line 1459
    :cond_d
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    add-int/lit8 v10, v10, -0x6

    iget v14, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    add-int/lit8 v15, v3, 0x6

    invoke-virtual {v4, v10, v3, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1460
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1461
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    add-int/lit8 v10, v10, -0x6

    add-int/lit8 v14, v13, -0x6

    iget v15, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    invoke-virtual {v4, v10, v14, v15, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1462
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1464
    nop

    .line 1482
    .end local v3    # "topOfTopSymbol":I
    .end local v5    # "topOfTopDivider":I
    .end local v9    # "bottomOfTopDivider":I
    .end local v11    # "bottomOfBottomDivider":I
    .end local v12    # "topOfBottomDivider":I
    .end local v13    # "bottomOfBottomSymbol":I
    :cond_e
    :goto_8
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 778
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 779
    return v1

    .line 781
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 784
    .local v0, "action":I
    if-nez v0, :cond_7

    .line 785
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 786
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownOrMoveEventY:F

    .line 787
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventTime:J

    .line 788
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mIgnoreMoveEvents:Z

    .line 789
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPerformClickOnTap:Z

    .line 790
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTopSelectionDividerTop:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x1

    if-gez v2, :cond_1

    .line 791
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    if-nez v2, :cond_2

    .line 792
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 795
    :cond_1
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 796
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    if-nez v2, :cond_2

    .line 797
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 801
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 802
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 803
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 804
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 805
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    .line 806
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 807
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 808
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 809
    :cond_4
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    .line 810
    nop

    .line 811
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v4, v2

    .line 810
    invoke-direct {p0, v1, v4, v5}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 812
    :cond_5
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 813
    nop

    .line 814
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    .line 813
    invoke-direct {p0, v3, v1, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 816
    :cond_6
    iput-boolean v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPerformClickOnTap:Z

    .line 817
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postBeginSoftInputOnLongPressCommand()V

    .line 819
    :goto_1
    return v3

    .line 821
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

    .line 722
    if-eqz p1, :cond_0

    .line 724
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->initializeSelectorWheel()V

    .line 725
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->initializeFadingEdges()V

    .line 726
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTopSelectionDividerTop:I

    .line 728
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTopSelectionDividerTop:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividersDistance:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBottomSelectionDividerBottom:I

    .line 731
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 736
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 737
    .local v0, "newWidthMeasureSpec":I
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 738
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onMeasure(II)V

    .line 740
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMeasuredWidth()I

    move-result v3

    invoke-direct {p0, v2, v3, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v2

    .line 742
    .local v2, "widthSize":I
    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    .line 743
    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 745
    .local v3, "heightSize":I
    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMeasuredDimension(II)V

    .line 746
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 826
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 827
    return v1

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 830
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 833
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 834
    .local v0, "action":I
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 836
    :pswitch_0
    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mIgnoreMoveEvents:Z

    if-eqz v3, :cond_2

    .line 837
    goto/16 :goto_4

    .line 839
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 840
    .local v3, "currentMoveY":F
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    if-eq v4, v2, :cond_4

    .line 841
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 842
    .local v1, "deltaDownY":I
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTouchSlop:I

    if-le v1, v4, :cond_3

    .line 843
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 844
    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollStateChange(I)V

    .line 846
    .end local v1    # "deltaDownY":I
    :cond_3
    goto :goto_0

    .line 847
    :cond_4
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownOrMoveEventY:F

    sub-float v4, v3, v4

    float-to-int v4, v4

    .line 848
    .local v4, "deltaMoveY":I
    invoke-virtual {p0, v1, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->scrollBy(II)V

    .line 849
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 851
    .end local v4    # "deltaMoveY":I
    :goto_0
    iput v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownOrMoveEventY:F

    .line 853
    .end local v3    # "currentMoveY":F
    goto/16 :goto_4

    .line 855
    :pswitch_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeBeginSoftInputCommand()V

    .line 856
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 857
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->cancel()V

    .line 858
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 859
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v4, 0x3e8

    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 860
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    float-to-int v4, v4

    .line 861
    .local v4, "initialVelocity":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinimumFlingVelocity:I

    const/4 v7, 0x2

    if-le v5, v6, :cond_5

    .line 862
    invoke-direct {p0, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->fling(I)V

    .line 863
    invoke-direct {p0, v7}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollStateChange(I)V

    goto :goto_3

    .line 865
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 866
    .local v5, "eventY":I
    int-to-float v6, v5

    iget v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    .line 867
    .local v6, "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventTime:J

    sub-long/2addr v8, v10

    .line 868
    .local v8, "deltaTime":J
    iget v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTouchSlop:I

    if-gt v6, v10, :cond_9

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_9

    .line 869
    iget-boolean v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPerformClickOnTap:Z

    if-eqz v10, :cond_6

    .line 870
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPerformClickOnTap:Z

    .line 871
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->performClick()Z

    goto :goto_2

    .line 873
    :cond_6
    iget v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    div-int v10, v5, v10

    sub-int/2addr v10, v7

    .line 875
    .local v10, "selectorIndexOffset":I
    if-lez v10, :cond_7

    .line 876
    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->changeValueByOne(Z)V

    .line 877
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    invoke-virtual {v7, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 879
    :cond_7
    if-gez v10, :cond_8

    .line 880
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->changeValueByOne(Z)V

    .line 881
    iget-object v11, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    invoke-virtual {v11, v7}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->buttonTapped(I)V

    .line 884
    .end local v10    # "selectorIndexOffset":I
    :cond_8
    :goto_1
    goto :goto_2

    .line 886
    :cond_9
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->ensureScrollWheelAdjusted()Z

    .line 888
    :goto_2
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollStateChange(I)V

    .line 890
    .end local v5    # "eventY":I
    .end local v6    # "deltaMoveY":I
    .end local v8    # "deltaTime":J
    :goto_3
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 891
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 895
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

    .line 1113
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .line 1118
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public scrollBy(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 986
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    .line 987
    .local v0, "selectorIndices":[I
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 988
    .local v1, "startScrollOffset":I
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    const/4 v3, 0x2

    if-nez v2, :cond_0

    if-lez p2, :cond_0

    aget v2, v0, v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    if-gt v2, v4, :cond_0

    .line 990
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 991
    return-void

    .line 993
    :cond_0
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-nez v2, :cond_1

    if-gez p2, :cond_1

    aget v2, v0, v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    if-lt v2, v4, :cond_1

    .line 995
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 996
    return-void

    .line 998
    :cond_1
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 999
    :goto_0
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    const/4 v5, 0x1

    if-le v2, v4, :cond_3

    .line 1000
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v5

    .line 1001
    .local v2, "decrement":I
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 1002
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->decrementSelectorIndices([I)V

    .line 1003
    aget v4, v0, v3

    invoke-direct {p0, v4, v5}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValueInternal(IZ)V

    .line 1004
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-nez v4, :cond_2

    aget v4, v0, v3

    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    if-gt v4, v5, :cond_2

    .line 1005
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    iput v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 1007
    .end local v2    # "decrement":I
    :cond_2
    goto :goto_0

    .line 1008
    :cond_3
    :goto_1
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    neg-int v4, v4

    if-ge v2, v4, :cond_5

    .line 1009
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v5

    .line 1010
    .local v2, "increment":I
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 1011
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->incrementSelectorIndices([I)V

    .line 1012
    aget v4, v0, v3

    invoke-direct {p0, v4, v5}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValueInternal(IZ)V

    .line 1013
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-nez v4, :cond_4

    aget v4, v0, v3

    iget v6, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    if-lt v4, v6, :cond_4

    .line 1014
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    iput v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 1016
    .end local v2    # "increment":I
    :cond_4
    goto :goto_1

    .line 1017
    :cond_5
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    if-eq v1, v2, :cond_6

    .line 1018
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, v3, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollChanged(IIII)V

    .line 1020
    :cond_6
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .line 1320
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1321
    return-void

    .line 1323
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1324
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->initializeSelectorWheelIndices()V

    .line 1325
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->tryComputeMaxWidth()V

    .line 1326
    return-void
.end method

.method public setFormatter(Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;

    .line 1072
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFormatter:Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1073
    return-void

    .line 1075
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFormatter:Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;

    .line 1076
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->initializeSelectorWheelIndices()V

    .line 1077
    return-void
.end method

.method public setMaxValue(I)V
    .locals 2
    .param p1, "maxValue"    # I

    .line 1287
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    .line 1288
    return-void

    .line 1290
    :cond_0
    if-ltz p1, :cond_2

    .line 1293
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    .line 1294
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    if-ge v0, v1, :cond_1

    .line 1295
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    .line 1297
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->updateWrapSelectorWheel()V

    .line 1298
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1299
    return-void

    .line 1291
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinValue(I)V
    .locals 2
    .param p1, "minValue"    # I

    .line 1253
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    .line 1254
    return-void

    .line 1256
    :cond_0
    if-ltz p1, :cond_2

    .line 1259
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    .line 1260
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    if-le v0, v1, :cond_1

    .line 1261
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    .line 1263
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->updateWrapSelectorWheel()V

    .line 1264
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1265
    return-void

    .line 1257
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .param p1, "intervalMillis"    # J

    .line 1221
    iput-wide p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLongPressUpdateInterval:J

    .line 1222
    return-void
.end method

.method public setOnScrollListener(Lcom/xiaopeng/xui/widget/XNumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lcom/xiaopeng/xui/widget/XNumberPicker$OnScrollListener;

    .line 1057
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mOnScrollListener:Lcom/xiaopeng/xui/widget/XNumberPicker$OnScrollListener;

    .line 1058
    return-void
.end method

.method public setOnValueChangedListener(Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;

    .line 1048
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mOnValueChangeListener:Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;

    .line 1049
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValueInternal(IZ)V

    .line 1109
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0
    .param p1, "wrapSelectorWheel"    # Z

    .line 1193
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 1194
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->updateWrapSelectorWheel()V

    .line 1196
    return-void
.end method
