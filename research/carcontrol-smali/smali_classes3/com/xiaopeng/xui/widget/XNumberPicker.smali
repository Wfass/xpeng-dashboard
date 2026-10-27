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

.field private mTextColorsId:I

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

    const/16 v0, 0x3c

    new-array v0, v0, [C

    .line 1838
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

    const/4 v0, 0x0

    .line 530
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 540
    sget v0, Lcom/xiaopeng/xpui/R$style;->XNumberPicker:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 553
    sget v0, Lcom/xiaopeng/xpui/R$style;->XNumberPicker:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 572
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheelPreferred:Z

    const-wide/16 v1, 0x12c

    .line 289
    iput-wide v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLongPressUpdateInterval:J

    .line 294
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 299
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    const/high16 v1, -0x80000000

    .line 319
    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    const/4 v1, 0x0

    .line 414
    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    const/4 v2, -0x1

    .line 450
    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 575
    sget-object v3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 578
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_hideWheelUntilFocused:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mHideWheelUntilFocused:Z

    .line 580
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_textLayout:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    .line 581
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_solidColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSolidColor:I

    .line 583
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_selectionDivider:I

    sget p4, Lcom/xiaopeng/xpui/R$drawable;->x_number_picker_divider_material:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->np_selectionDividerId:I

    .line 586
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget p4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->np_selectionDividerId:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 588
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 589
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLayoutDirection()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 590
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getDrawableState()[I

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 594
    :cond_0
    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 595
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_symbol:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    const/high16 p3, 0x40000000    # 2.0f

    .line 600
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    .line 598
    invoke-static {v0, p3, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 601
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_selectionDividerHeight:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividerHeight:I

    const/high16 p3, 0x42400000    # 48.0f

    .line 606
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    .line 604
    invoke-static {v0, p3, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 607
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_selectionDividersDistance:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividersDistance:I

    .line 610
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_text_layout_margin:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayoutMargin:I

    .line 612
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_internalMinHeight:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinHeight:I

    .line 615
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_internalMaxHeight:I

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxHeight:I

    if-eq p3, v2, :cond_2

    if-eq p4, v2, :cond_2

    if-gt p3, p4, :cond_1

    goto :goto_0

    .line 619
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minHeight > maxHeight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 622
    :cond_2
    :goto_0
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_internalMinWidth:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    .line 625
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_internalMaxWidth:I

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    if-eq p3, v2, :cond_4

    if-eq p4, v2, :cond_4

    if-gt p3, p4, :cond_3

    goto :goto_1

    .line 629
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minWidth > maxWidth"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    if-ne p4, v2, :cond_5

    move p3, v0

    goto :goto_2

    :cond_5
    move p3, v1

    .line 632
    :goto_2
    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mComputeMaxWidth:Z

    .line 634
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_android_textSize:I

    const/16 p4, 0x14

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    .line 635
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_selectedTextSize:I

    invoke-virtual {p2, v3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedTextSize:I

    .line 637
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_android_textColor:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    .line 638
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_android_textColor:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColorsId:I

    .line 639
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_6

    const v2, 0x106000c

    .line 640
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    .line 642
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 644
    new-instance p2, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;-><init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    .line 651
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setWillNotDraw(Z)V

    .line 654
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 655
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTouchSlop:I

    .line 656
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinimumFlingVelocity:I

    .line 657
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaximumFlingVelocity:I

    .line 661
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 662
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 663
    iget p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    if-eqz p2, :cond_9

    if-eq p2, v0, :cond_8

    const/4 v2, 0x2

    if-eq p2, v2, :cond_7

    goto :goto_3

    .line 671
    :cond_7
    sget-object p2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_3

    .line 668
    :cond_8
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_3

    .line 665
    :cond_9
    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 674
    :goto_3
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 675
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    .line 676
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 677
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/xiaopeng/xpui/R$string;->x_font_typeface_medium:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 678
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 681
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 682
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p4, 0x40200000    # 2.5f

    invoke-direct {p3, p4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 685
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_a

    .line 686
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setImportantForAccessibility(I)V

    .line 690
    :cond_a
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getFocusable()I

    move-result p1

    const/16 p2, 0x10

    if-ne p1, p2, :cond_b

    .line 691
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setFocusable(I)V

    .line 692
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setFocusableInTouchMode(Z)V

    .line 695
    :cond_b
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/xui/widget/XNumberPicker$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/XNumberPicker$1;-><init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XNumberPicker;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColorsId:I

    return p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xui/widget/XNumberPicker;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xiaopeng/xui/widget/XNumberPicker;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xui/widget/XNumberPicker;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xui/widget/XNumberPicker;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xui/widget/XNumberPicker;Z)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xui/widget/XNumberPicker;)J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method private changeValueByOne(Z)V
    .locals 13

    .line 1594
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 1597
    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    .line 1599
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1601
    :cond_1
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1603
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    .line 1695
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    .line 1696
    array-length v0, p1

    sub-int/2addr v0, v1

    invoke-static {p1, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1697
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 1698
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 1699
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    .line 1701
    :cond_1
    aput v0, p1, v2

    .line 1702
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 1710
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1711
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 1715
    :cond_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 1718
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int v1, p1, v1

    .line 1720
    aget-object v1, v2, v1

    goto :goto_1

    .line 1722
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, ""

    .line 1725
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 1866
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1868
    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    .line 1869
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    .line 1872
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1873
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10

    const/4 v0, 0x0

    .line 1652
    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    if-lez p1, :cond_0

    .line 1655
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

    .line 1657
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

    .line 1660
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1

    .line 1729
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFormatter:Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 3

    .line 1972
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2

    .line 1806
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1808
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 1813
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1815
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1816
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1817
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    add-int/2addr p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1826
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    .line 1832
    :catch_0
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    return p1
.end method

.method public static getTwoDigitFormatter()Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;
    .locals 1

    .line 192
    sget-object v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->sTwoDigitFormatter:Lcom/xiaopeng/xui/widget/XNumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 2

    .line 1667
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 1668
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    sub-int/2addr v0, v1

    rem-int/2addr p1, v0

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 1669
    :cond_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    if-ge p1, v1, :cond_1

    sub-int p1, v1, p1

    sub-int v1, v0, v1

    .line 1670
    rem-int/2addr p1, v1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    .line 1680
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 1681
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {p1, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1682
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/2addr v0, v1

    .line 1683
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    if-le v0, v2, :cond_1

    .line 1684
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    .line 1686
    :cond_1
    array-length v2, p1

    sub-int/2addr v2, v1

    aput v0, p1, v2

    .line 1687
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    const/4 v0, 0x1

    .line 1621
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1622
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    .line 1607
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->initializeSelectorWheelIndices()V

    .line 1608
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    .line 1609
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedTextSize:I

    add-int/2addr v1, v2

    .line 1610
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 1611
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 1612
    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    .line 1613
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    add-int v2, v1, v0

    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    .line 1614
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedTextSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedSelectorElementHeight:I

    .line 1616
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    .line 1617
    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1533
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1534
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    .line 1535
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 1536
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x2

    add-int/2addr v3, v1

    .line 1538
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1539
    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1541
    :cond_0
    aput v3, v0, v2

    .line 1542
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 1494
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1495
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return p1

    .line 1504
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1502
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 1500
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    .line 756
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 757
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 758
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    .line 759
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 761
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 769
    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method private notifyChange(II)V
    .locals 1

    .line 1737
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mOnValueChangeListener:Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;

    if-eqz p2, :cond_0

    .line 1738
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;->onValueChange(Lcom/xiaopeng/xui/widget/XNumberPicker;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 1639
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1642
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    .line 1643
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mOnScrollListener:Lcom/xiaopeng/xui/widget/XNumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1644
    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker$OnScrollListener;->onScrollStateChange(Lcom/xiaopeng/xui/widget/XNumberPicker;I)V

    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    .line 1629
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 1630
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->ensureScrollWheelAdjusted()Z

    const/4 p1, 0x0

    .line 1631
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollStateChange(I)V

    :cond_0
    return-void
.end method

.method private playScrollSound()V
    .locals 3

    .line 1576
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->isSoundEffectsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1577
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 1578
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 1579
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->playSoundEffectByDisplay(II)V

    goto :goto_0

    .line 1581
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->play(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .line 1772
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 1773
    new-instance v0, Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    .line 1775
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1777
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    .line 1749
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1750
    new-instance v0, Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 1752
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1754
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$300(Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1755
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 1793
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1794
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1796
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_1

    .line 1797
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1799
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .line 1784
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 1785
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 1762
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1763
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1521
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    .line 1522
    invoke-static {p1, p3, p2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->resolveSizeAndState(III)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 1

    .line 1553
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1557
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 1558
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 1560
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1561
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1563
    :goto_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    .line 1564
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    if-eqz p2, :cond_2

    .line 1568
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->playScrollSound()V

    .line 1569
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->notifyChange(II)V

    .line 1571
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->initializeSelectorWheelIndices()V

    .line 1572
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 6

    .line 1124
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    .line 1131
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_1

    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1137
    :cond_2
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    :goto_1
    if-lez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 1140
    div-int/lit8 v2, v2, 0xa

    goto :goto_1

    :cond_3
    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_3

    .line 1144
    :cond_4
    array-length v2, v0

    .line 1145
    array-length v2, v0

    move v3, v1

    :goto_2
    if-ge v1, v2, :cond_6

    aget-object v4, v0, v1

    .line 1146
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v5, v3

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    float-to-int v3, v4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v0, v3

    .line 1153
    :goto_3
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_8

    .line 1154
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    if-le v0, v1, :cond_7

    .line 1155
    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    goto :goto_4

    .line 1157
    :cond_7
    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    .line 1159
    :goto_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    :cond_8
    return-void
.end method

.method private updateWrapSelectorWheel()V
    .locals 4

    .line 1205
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

    :goto_0
    if-eqz v0, :cond_1

    .line 1206
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheelPreferred:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 962
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 963
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 965
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 969
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 970
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 971
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 972
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    :cond_1
    const/4 v2, 0x0

    .line 974
    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->scrollBy(II)V

    .line 975
    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPreviousScrollerY:I

    .line 976
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 977
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 979
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 1033
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .line 1023
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 1028
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

    .line 916
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 920
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 924
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 938
    :cond_2
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_5

    const/4 p1, -0x1

    .line 939
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastHandledDownDpadKeyCode:I

    return v3

    .line 926
    :cond_3
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_6

    if-ne v0, v2, :cond_4

    .line 927
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_5

    goto :goto_1

    .line 945
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 928
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->requestFocus()Z

    .line 929
    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 930
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 931
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_8

    if-ne v0, v2, :cond_7

    move p1, v3

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 932
    :goto_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->changeValueByOne(Z)V

    :cond_8
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 899
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 903
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 906
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 950
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 954
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 957
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 1359
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->drawableStateChanged()V

    .line 1361
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1362
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1363
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1364
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValueForCurrentSelection()Ljava/lang/CharSequence;
    .locals 2

    .line 1337
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

    .line 1306
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1272
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1238
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .line 1038
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 1229
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 1171
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1371
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->jumpDrawablesToCurrentState()V

    .line 1373
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1374
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 911
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1352
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onDetachedFromWindow()V

    .line 1353
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1380
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mHideWheelUntilFocused:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1382
    :goto_1
    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    int-to-float v3, v3

    .line 1385
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    move v5, v1

    .line 1386
    :goto_2
    array-length v6, v4

    const/4 v7, 0x2

    if-ge v5, v6, :cond_9

    .line 1387
    aget v6, v4, v5

    .line 1388
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v0, :cond_7

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v5, v7, :cond_4

    .line 1392
    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    sget-object v10, Lcom/xiaopeng/xui/widget/XNumberPicker;->SELECTED_STATE_SET:[I

    const/high16 v11, -0x1000000

    invoke-virtual {v9, v10, v11}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v9

    .line 1393
    iget-object v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1394
    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedTextSize:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1395
    iget v9, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    if-eqz v9, :cond_3

    if-eq v9, v7, :cond_2

    .line 1403
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLeft()I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    div-float/2addr v7, v8

    goto :goto_4

    .line 1400
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayoutMargin:I

    sub-int/2addr v7, v8

    goto :goto_3

    .line 1397
    :cond_3
    iget v7, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayoutMargin:I

    :goto_3
    int-to-float v7, v7

    .line 1405
    :goto_4
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 1407
    :cond_4
    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v9

    .line 1408
    iget-object v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1409
    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1410
    iget v9, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    if-eqz v9, :cond_6

    if-eq v9, v7, :cond_5

    .line 1419
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLeft()I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    div-float/2addr v7, v8

    goto :goto_6

    .line 1415
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayoutMargin:I

    sub-int/2addr v7, v8

    goto :goto_5

    .line 1412
    :cond_6
    iget v7, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayoutMargin:I

    :goto_5
    int-to-float v7, v7

    .line 1421
    :goto_6
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    :goto_7
    if-ne v5, v2, :cond_8

    .line 1425
    iget v6, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectedSelectorElementHeight:I

    goto :goto_8

    .line 1427
    :cond_8
    iget v6, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    :goto_8
    int-to-float v6, v6

    add-float/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_9
    if-eqz v0, :cond_e

    .line 1432
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 1434
    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTopSelectionDividerTop:I

    .line 1435
    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividerHeight:I

    add-int/2addr v4, v3

    .line 1437
    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    invoke-virtual {v0, v1, v3, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1439
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1442
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBottomSelectionDividerBottom:I

    .line 1443
    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividerHeight:I

    sub-int v3, v0, v3

    .line 1444
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    invoke-virtual {v5, v1, v3, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1445
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1447
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    mul-int/lit8 v0, v4, 0x2

    add-int/2addr v0, v3

    .line 1448
    div-int/lit8 v0, v0, 0x3

    mul-int/2addr v3, v7

    add-int/2addr v4, v3

    .line 1449
    div-int/lit8 v4, v4, 0x3

    .line 1450
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextLayout:I

    const/16 v3, 0x29

    const/16 v5, 0x23

    if-eqz v1, :cond_c

    if-eq v1, v7, :cond_a

    goto/16 :goto_9

    .line 1465
    :cond_a
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_b

    .line 1466
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v5, v0, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1467
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1468
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, v4, -0x6

    invoke-virtual {v0, v5, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1469
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9

    .line 1471
    :cond_b
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v5, v0, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1472
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1473
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, v4, -0x6

    invoke-virtual {v0, v5, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1474
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9

    .line 1452
    :cond_c
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_d

    .line 1453
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v5, v0, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1454
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1455
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, v4, -0x6

    invoke-virtual {v0, v5, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1456
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9

    .line 1458
    :cond_d
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    add-int/lit8 v3, v2, -0x6

    add-int/lit8 v5, v0, 0x6

    invoke-virtual {v1, v3, v0, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1459
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1460
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    add-int/lit8 v2, v1, -0x6

    add-int/lit8 v3, v4, -0x6

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1461
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSymbol:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_e
    :goto_9
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 777
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 780
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_7

    .line 784
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 785
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownOrMoveEventY:F

    .line 786
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventTime:J

    .line 787
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mIgnoreMoveEvents:Z

    .line 788
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPerformClickOnTap:Z

    .line 789
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    .line 790
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    if-nez p1, :cond_2

    .line 791
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 794
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 795
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    if-nez p1, :cond_2

    .line 796
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 800
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 801
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    .line 802
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 803
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 804
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    .line 805
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 806
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 807
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 808
    :cond_4
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    .line 810
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    .line 809
    invoke-direct {p0, v1, v3, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 811
    :cond_5
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 813
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    .line 812
    invoke-direct {p0, v2, v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 815
    :cond_6
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPerformClickOnTap:Z

    .line 816
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postBeginSoftInputOnLongPressCommand()V

    :goto_1
    return v2

    :cond_7
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_0

    .line 723
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->initializeSelectorWheel()V

    .line 724
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->initializeFadingEdges()V

    .line 725
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr p1, p3

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTopSelectionDividerTop:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    .line 727
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mBottomSelectionDividerBottom:I

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 735
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 736
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 737
    invoke-super {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onMeasure(II)V

    .line 739
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 741
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    .line 742
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 744
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 825
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 829
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 832
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_2

    goto/16 :goto_3

    .line 835
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mIgnoreMoveEvents:Z

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 838
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 839
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    if-eq v0, v3, :cond_4

    .line 840
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 841
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_5

    .line 842
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeAllCallbacks()V

    .line 843
    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 846
    :cond_4
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 847
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->scrollBy(II)V

    .line 848
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 850
    :cond_5
    :goto_0
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownOrMoveEventY:F

    goto/16 :goto_3

    .line 854
    :cond_6
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeBeginSoftInputCommand()V

    .line 855
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 856
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->cancel()V

    .line 857
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 858
    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 859
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 860
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_7

    .line 861
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->fling(I)V

    .line 862
    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollStateChange(I)V

    goto :goto_2

    .line 864
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    .line 865
    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 866
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLastDownEventTime:J

    sub-long/2addr v5, v7

    .line 867
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTouchSlop:I

    if-gt v4, p1, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_a

    .line 868
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPerformClickOnTap:Z

    if-eqz p1, :cond_8

    .line 869
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPerformClickOnTap:Z

    .line 870
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->performClick()Z

    goto :goto_1

    .line 872
    :cond_8
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    sub-int/2addr v0, v2

    if-lez v0, :cond_9

    .line 875
    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->changeValueByOne(Z)V

    .line 876
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_9
    if-gez v0, :cond_b

    .line 879
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->changeValueByOne(Z)V

    .line 880
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mPressedStateHelper:Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 885
    :cond_a
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->ensureScrollWheelAdjusted()Z

    .line 887
    :cond_b
    :goto_1
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollStateChange(I)V

    .line 889
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 890
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_3
    return v3
.end method

.method public performClick()Z
    .locals 1

    .line 1112
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .line 1117
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public scrollBy(II)V
    .locals 6

    .line 985
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorIndices:[I

    .line 986
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 987
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    const/4 v2, 0x2

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    aget v3, p1, v2

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    if-gt v3, v4, :cond_0

    .line 989
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    return-void

    :cond_0
    if-nez v1, :cond_1

    if-gez p2, :cond_1

    .line 992
    aget v1, p1, v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    if-lt v1, v3, :cond_1

    .line 994
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    return-void

    :cond_1
    add-int/2addr p2, v0

    .line 997
    iput p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 998
    :cond_2
    :goto_0
    iget p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    sub-int v1, p2, v1

    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    const/4 v4, 0x1

    if-le v1, v3, :cond_3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    sub-int/2addr p2, v3

    .line 1000
    iput p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 1001
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->decrementSelectorIndices([I)V

    .line 1002
    aget p2, p1, v2

    invoke-direct {p0, p2, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValueInternal(IZ)V

    .line 1003
    iget-boolean p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2

    aget p2, p1, v2

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    if-gt p2, v1, :cond_2

    .line 1004
    iget p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1007
    :cond_3
    :goto_1
    iget p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    sub-int v1, p2, v1

    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mSelectorTextGapHeight:I

    neg-int v5, v3

    if-ge v1, v5, :cond_4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    add-int/2addr p2, v3

    .line 1009
    iput p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    .line 1010
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->incrementSelectorIndices([I)V

    .line 1011
    aget p2, p1, v2

    invoke-direct {p0, p2, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValueInternal(IZ)V

    .line 1012
    iget-boolean p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    aget p2, p1, v2

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    if-lt p2, v1, :cond_3

    .line 1013
    iget p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_4
    if-eq v0, p2, :cond_5

    const/4 p1, 0x0

    .line 1017
    invoke-virtual {p0, p1, p2, p1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollChanged(IIII)V

    :cond_5
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1319
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 1322
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1323
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->initializeSelectorWheelIndices()V

    .line 1324
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public setFormatter(Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;)V
    .locals 1

    .line 1071
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFormatter:Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 1074
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mFormatter:Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;

    .line 1075
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->initializeSelectorWheelIndices()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1286
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 1292
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxValue:I

    .line 1293
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    if-ge p1, v0, :cond_1

    .line 1294
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    .line 1296
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->updateWrapSelectorWheel()V

    .line 1297
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    return-void

    .line 1290
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1252
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 1258
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinValue:I

    .line 1259
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    if-le p1, v0, :cond_1

    .line 1260
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    .line 1262
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->updateWrapSelectorWheel()V

    .line 1263
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    return-void

    .line 1256
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 1220
    iput-wide p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lcom/xiaopeng/xui/widget/XNumberPicker$OnScrollListener;)V
    .locals 0

    .line 1056
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mOnScrollListener:Lcom/xiaopeng/xui/widget/XNumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 1047
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mOnValueChangeListener:Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1107
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0

    .line 1192
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 1193
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->updateWrapSelectorWheel()V

    return-void
.end method
