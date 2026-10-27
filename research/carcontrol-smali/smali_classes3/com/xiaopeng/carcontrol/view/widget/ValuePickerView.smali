.class public Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;
.super Landroid/view/View;
.source "ValuePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnScrollListener;,
        Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListenerInScrolling;,
        Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListenerRelativeToRaw;,
        Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_CURRENT_ITEM_INDEX_EFFECT:Z = false

.field private static final DEFAULT_DIVIDER_COLOR:I = -0xa9ced

.field private static final DEFAULT_DIVIDER_HEIGHT:I = 0x2

.field private static final DEFAULT_DIVIDER_MARGIN_HORIZONTAL:I = 0x0

.field private static final DEFAULT_INTERVAL_REVISE_DURATION:I = 0x12c

.field private static final DEFAULT_ITEM_PADDING_DP_H:I = 0x5

.field private static final DEFAULT_ITEM_PADDING_DP_V:I = 0x2

.field private static final DEFAULT_MARGIN_END_OF_HINT_DP:I = 0x8

.field private static final DEFAULT_MARGIN_START_OF_HINT_DP:I = 0x8

.field private static final DEFAULT_MAX_SCROLL_BY_INDEX_DURATION:I = 0x258

.field private static final DEFAULT_MIN_SCROLL_BY_INDEX_DURATION:I = 0x12c

.field private static final DEFAULT_RESPOND_CHANGE_IN_MAIN_THREAD:Z = true

.field private static final DEFAULT_RESPOND_CHANGE_ON_DETACH:Z = false

.field private static final DEFAULT_SHOW_COUNT:I = 0x3

.field private static final DEFAULT_SHOW_DIVIDER:Z = true

.field private static final DEFAULT_TEXT_COLOR_NORMAL:I = -0xcccccd

.field private static final DEFAULT_TEXT_COLOR_SELECTED:I = -0xa9ced

.field private static final DEFAULT_TEXT_SIZE_HINT_SP:I = 0xe

.field private static final DEFAULT_TEXT_SIZE_NORMAL_SP:I = 0xe

.field private static final DEFAULT_TEXT_SIZE_SELECTED_SP:I = 0x10

.field private static final DEFAULT_WRAP_SELECTOR_WHEEL:Z = true

.field private static final HANDLER_INTERVAL_REFRESH:I = 0x20

.field private static final HANDLER_WHAT_LISTENER_VALUE_CHANGED:I = 0x2

.field private static final HANDLER_WHAT_REFRESH:I = 0x1

.field private static final HANDLER_WHAT_REQUEST_LAYOUT:I = 0x3

.field private static final HANDLER_WHAT_VIEW_ENABLED:I = 0x4

.field private static final SHADOW_OFFSET:F = 10.0f

.field private static final TAG:Ljava/lang/String; = "ValuePickerView"

.field private static final TEXT_ELLIPSIZE_END:Ljava/lang/String; = "end"

.field private static final TEXT_ELLIPSIZE_MIDDLE:Ljava/lang/String; = "middle"

.field private static final TEXT_ELLIPSIZE_START:Ljava/lang/String; = "start"


# instance fields
.field private currY:F

.field private dividerY0:F

.field private dividerY1:F

.field private downY:F

.field private downYGlobal:F

.field private mAlterHint:Ljava/lang/String;

.field private mAlterTextArrayWithMeasureHint:[Ljava/lang/CharSequence;

.field private mAlterTextArrayWithoutMeasureHint:[Ljava/lang/CharSequence;

.field private mCurrDrawFirstItemIndex:I

.field private mCurrDrawFirstItemY:I

.field private mCurrDrawGlobalY:I

.field private mCurrentItemIndexEffect:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private mDividerColor:I

.field private mDividerHeight:I

.field private mDividerIndex0:I

.field private mDividerIndex1:I

.field private mDividerMarginL:I

.field private mDividerMarginR:I

.field private mEmptyItemHint:Ljava/lang/String;

.field private mFlagMayPress:Z

.field private mFriction:F

.field private mHandlerInMainThread:Landroid/os/Handler;

.field private mHandlerInNewThread:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasInit:Z

.field private mHintText:Ljava/lang/String;

.field private mInScrollingPickedNewValue:I

.field private mInScrollingPickedOldValue:I

.field private mIsFromUser:Z

.field private mItemHeight:I

.field private mItemPaddingHorizontal:I

.field private mItemPaddingVertical:I

.field private mMarginEndOfHint:I

.field private mMarginStartOfHint:I

.field private mMaxHeightOfDisplayedValues:I

.field private mMaxShowIndex:I

.field private mMaxValue:I

.field private mMaxWidthOfAlterArrayWithMeasureHint:I

.field private mMaxWidthOfAlterArrayWithoutMeasureHint:I

.field private mMaxWidthOfDisplayedValues:I

.field private mMinShowIndex:I

.field private mMinValue:I

.field private mMiniVelocityFling:I

.field private mNotWrapLimitYBottom:I

.field private mNotWrapLimitYTop:I

.field private mOnScrollListener:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnScrollListener;

.field private mOnValueChangeListener:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListener;

.field private mOnValueChangeListenerInScrolling:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListenerInScrolling;

.field private mOnValueChangeListenerRaw:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListenerRelativeToRaw;

.field private mPaintDivider:Landroid/graphics/Paint;

.field private mPaintHint:Landroid/graphics/Paint;

.field private mPaintText:Landroid/text/TextPaint;

.field private mPendingWrapToLinear:Z

.field private mPrevPickedIndex:I

.field private mRespondChangeInMainThread:Z

.field private mRespondChangeOnDetach:Z

.field private mScaledTouchSlop:I

.field private mScrollState:I

.field private mScroller:Landroidx/core/widget/ScrollerCompat;

.field private mShadowDirection:I

.field private mShowCount:I

.field private mShowDivider:Z

.field private mSpecModeH:I

.field private mSpecModeW:I

.field private mTextCelsius:Ljava/lang/String;

.field private mTextColorHint:I

.field private mTextColorNormal:I

.field private mTextColorSelected:I

.field private mTextEllipsize:Ljava/lang/String;

.field private mTextSizeHint:I

.field private mTextSizeHintCenterYOffset:F

.field private mTextSizeNormal:I

.field private mTextSizeNormalCenterYOffset:F

.field private mTextSizeSelected:I

.field private mTextSizeSelectedCenterYOffset:F

.field private mTextSizeSufNormal:I

.field private mTextSizeSufSelected:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewCenterX:F

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWidthOfAlterHint:I

.field private mWidthOfHintText:I

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelCheck:Z

.field private playSoundTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 232
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, -0xcccccd

    .line 105
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorNormal:I

    const v0, -0xa9ced

    .line 106
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorSelected:I

    .line 107
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorHint:I

    const/4 v1, 0x0

    .line 108
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormal:I

    .line 109
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelected:I

    .line 110
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeHint:I

    .line 111
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWidthOfHintText:I

    .line 112
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWidthOfAlterHint:I

    .line 113
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMarginStartOfHint:I

    .line 114
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMarginEndOfHint:I

    .line 115
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemPaddingVertical:I

    .line 116
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemPaddingHorizontal:I

    .line 117
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerColor:I

    const/4 v0, 0x2

    .line 118
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerHeight:I

    .line 119
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginL:I

    .line 120
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginR:I

    const/4 v0, 0x3

    .line 121
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    .line 122
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerIndex0:I

    .line 123
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerIndex1:I

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    .line 125
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxShowIndex:I

    .line 127
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    .line 129
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxValue:I

    .line 130
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxWidthOfDisplayedValues:I

    .line 131
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxHeightOfDisplayedValues:I

    .line 132
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxWidthOfAlterArrayWithMeasureHint:I

    .line 133
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxWidthOfAlterArrayWithoutMeasureHint:I

    .line 134
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPrevPickedIndex:I

    const/16 v0, 0x96

    .line 135
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMiniVelocityFling:I

    const/16 v0, 0x8

    .line 136
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScaledTouchSlop:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 142
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mFriction:F

    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormalCenterYOffset:F

    .line 144
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelectedCenterYOffset:F

    .line 145
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeHintCenterYOffset:F

    const/4 v2, 0x1

    .line 147
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowDivider:Z

    .line 149
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    .line 151
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrentItemIndexEffect:Z

    .line 153
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHasInit:Z

    .line 155
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    .line 157
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPendingWrapToLinear:Z

    .line 166
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mRespondChangeOnDetach:Z

    .line 171
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mRespondChangeInMainThread:Z

    .line 176
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintDivider:Landroid/graphics/Paint;

    .line 177
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    .line 178
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintHint:Landroid/graphics/Paint;

    .line 229
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScrollState:I

    .line 1090
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->downYGlobal:F

    .line 1091
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->downY:F

    .line 1092
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->currY:F

    .line 1104
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mFlagMayPress:Z

    .line 1239
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemIndex:I

    .line 1241
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemY:I

    .line 1243
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    .line 1298
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mSpecModeW:I

    .line 1299
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mSpecModeH:I

    .line 233
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 236
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, -0xcccccd

    .line 105
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorNormal:I

    const v0, -0xa9ced

    .line 106
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorSelected:I

    .line 107
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorHint:I

    const/4 v1, 0x0

    .line 108
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormal:I

    .line 109
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelected:I

    .line 110
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeHint:I

    .line 111
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWidthOfHintText:I

    .line 112
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWidthOfAlterHint:I

    .line 113
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMarginStartOfHint:I

    .line 114
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMarginEndOfHint:I

    .line 115
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemPaddingVertical:I

    .line 116
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemPaddingHorizontal:I

    .line 117
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerColor:I

    const/4 v0, 0x2

    .line 118
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerHeight:I

    .line 119
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginL:I

    .line 120
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginR:I

    const/4 v0, 0x3

    .line 121
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    .line 122
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerIndex0:I

    .line 123
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerIndex1:I

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    .line 125
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxShowIndex:I

    .line 127
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    .line 129
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxValue:I

    .line 130
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxWidthOfDisplayedValues:I

    .line 131
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxHeightOfDisplayedValues:I

    .line 132
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxWidthOfAlterArrayWithMeasureHint:I

    .line 133
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxWidthOfAlterArrayWithoutMeasureHint:I

    .line 134
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPrevPickedIndex:I

    const/16 v0, 0x96

    .line 135
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMiniVelocityFling:I

    const/16 v0, 0x8

    .line 136
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScaledTouchSlop:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 142
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mFriction:F

    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormalCenterYOffset:F

    .line 144
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelectedCenterYOffset:F

    .line 145
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeHintCenterYOffset:F

    const/4 v2, 0x1

    .line 147
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowDivider:Z

    .line 149
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    .line 151
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrentItemIndexEffect:Z

    .line 153
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHasInit:Z

    .line 155
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    .line 157
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPendingWrapToLinear:Z

    .line 166
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mRespondChangeOnDetach:Z

    .line 171
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mRespondChangeInMainThread:Z

    .line 176
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintDivider:Landroid/graphics/Paint;

    .line 177
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    .line 178
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintHint:Landroid/graphics/Paint;

    .line 229
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScrollState:I

    .line 1090
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->downYGlobal:F

    .line 1091
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->downY:F

    .line 1092
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->currY:F

    .line 1104
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mFlagMayPress:Z

    .line 1239
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemIndex:I

    .line 1241
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemY:I

    .line 1243
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    .line 1298
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mSpecModeW:I

    .line 1299
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mSpecModeH:I

    .line 237
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->initAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 238
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 241
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, -0xcccccd

    .line 105
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorNormal:I

    const p3, -0xa9ced

    .line 106
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorSelected:I

    .line 107
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorHint:I

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormal:I

    .line 109
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelected:I

    .line 110
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeHint:I

    .line 111
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWidthOfHintText:I

    .line 112
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWidthOfAlterHint:I

    .line 113
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMarginStartOfHint:I

    .line 114
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMarginEndOfHint:I

    .line 115
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemPaddingVertical:I

    .line 116
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemPaddingHorizontal:I

    .line 117
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerColor:I

    const/4 p3, 0x2

    .line 118
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerHeight:I

    .line 119
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginL:I

    .line 120
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginR:I

    const/4 p3, 0x3

    .line 121
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    .line 122
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerIndex0:I

    .line 123
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerIndex1:I

    const/4 p3, -0x1

    .line 124
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    .line 125
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxShowIndex:I

    .line 127
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    .line 129
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxValue:I

    .line 130
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxWidthOfDisplayedValues:I

    .line 131
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxHeightOfDisplayedValues:I

    .line 132
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxWidthOfAlterArrayWithMeasureHint:I

    .line 133
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxWidthOfAlterArrayWithoutMeasureHint:I

    .line 134
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPrevPickedIndex:I

    const/16 p3, 0x96

    .line 135
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMiniVelocityFling:I

    const/16 p3, 0x8

    .line 136
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScaledTouchSlop:I

    const/high16 p3, 0x3f800000    # 1.0f

    .line 142
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mFriction:F

    const/4 p3, 0x0

    .line 143
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormalCenterYOffset:F

    .line 144
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelectedCenterYOffset:F

    .line 145
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeHintCenterYOffset:F

    const/4 v1, 0x1

    .line 147
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowDivider:Z

    .line 149
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    .line 151
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrentItemIndexEffect:Z

    .line 153
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHasInit:Z

    .line 155
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    .line 157
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPendingWrapToLinear:Z

    .line 166
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mRespondChangeOnDetach:Z

    .line 171
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mRespondChangeInMainThread:Z

    .line 176
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintDivider:Landroid/graphics/Paint;

    .line 177
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    .line 178
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintHint:Landroid/graphics/Paint;

    .line 229
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScrollState:I

    .line 1090
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->downYGlobal:F

    .line 1091
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->downY:F

    .line 1092
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->currY:F

    .line 1104
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mFlagMayPress:Z

    .line 1239
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemIndex:I

    .line 1241
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemY:I

    .line 1243
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    .line 1298
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mSpecModeW:I

    .line 1299
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mSpecModeH:I

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->initAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 243
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)Landroidx/core/widget/ScrollerCompat;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScrollState:I

    return p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mRespondChangeInMainThread:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInMainThread:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;I)Landroid/os/Message;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getMsg(I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;IILjava/lang/Object;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->respondPickedValueChanged(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->onScrollStateChange(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInNewThread:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;IIILjava/lang/Object;)Landroid/os/Message;
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getMsg(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemY:I

    return p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    return p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    return p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;I)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getWillPickIndexByGlobalY(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPrevPickedIndex:I

    return p0
.end method

.method private calculateFirstItemParameterByGlobalY()V
    .locals 4

    .line 1257
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemIndex:I

    .line 1258
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    mul-int v3, v0, v2

    sub-int/2addr v1, v3

    neg-int v1, v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemY:I

    neg-int v1, v1

    .line 1259
    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1260
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mInScrollingPickedNewValue:I

    goto :goto_0

    .line 1262
    :cond_0
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mInScrollingPickedNewValue:I

    .line 1264
    :goto_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mInScrollingPickedNewValue:I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getOneRecycleSize()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mInScrollingPickedNewValue:I

    if-gez v0, :cond_1

    .line 1266
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getOneRecycleSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mInScrollingPickedNewValue:I

    .line 1268
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mInScrollingPickedOldValue:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mInScrollingPickedNewValue:I

    if-eq v0, v1, :cond_3

    .line 1269
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mOnValueChangeListenerInScrolling:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListenerInScrolling;

    if-eqz v2, :cond_2

    .line 1270
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->respondPickedValueChangedInScrolling(II)V

    .line 1272
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mIsFromUser:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInNewThread:Landroid/os/Handler;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->playSoundTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 1273
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInNewThread:Landroid/os/Handler;

    sget-object v1, Lcom/xiaopeng/carcontrol/view/widget/-$$Lambda$ValuePickerView$Y5-21g-u8fD70UPJ8WbMPv0Jucg;->INSTANCE:Lcom/xiaopeng/carcontrol/view/widget/-$$Lambda$ValuePickerView$Y5-21g-u8fD70UPJ8WbMPv0Jucg;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->playSoundTime:J

    .line 1278
    :cond_3
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mInScrollingPickedNewValue:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mInScrollingPickedOldValue:I

    return-void
.end method

.method private click(Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v0, 0x0

    .line 1185
    :goto_0
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    if-ge v0, v1, :cond_1

    .line 1186
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    mul-int v2, v1, v0

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 1187
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->clickItem(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private clickItem(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showCountIndex"
        }
    .end annotation

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clickItem showCountIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",minValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValuePickerView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1196
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getValue()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxValue:I

    if-eq v1, v2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getValue()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    if-ne v1, v2, :cond_2

    :cond_1
    return-void

    :cond_2
    if-ltz p1, :cond_3

    .line 1199
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    if-ge p1, v1, :cond_3

    .line 1201
    div-int/2addr v1, v0

    sub-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->scrollByIndexSmoothly(I)V

    :cond_3
    return-void
.end method

.method private convertCharSequenceArrayToStringArray([Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "charSequences"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1703
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1704
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1705
    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private correctPositionByDefaultValue(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultPickedIndex",
            "wrap"
        }
    .end annotation

    .line 1221
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemIndex:I

    .line 1222
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getOneRecycleSize()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getIndexByRawIndex(IIZ)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemIndex:I

    .line 1223
    iget p2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    if-nez p2, :cond_0

    .line 1224
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrentItemIndexEffect:Z

    goto :goto_0

    :cond_0
    mul-int/2addr p2, p1

    .line 1226
    iput p2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    .line 1228
    iget p2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mInScrollingPickedOldValue:I

    .line 1229
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getOneRecycleSize()I

    move-result p2

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mInScrollingPickedOldValue:I

    if-gez p1, :cond_1

    .line 1231
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getOneRecycleSize()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mInScrollingPickedOldValue:I

    .line 1233
    :cond_1
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mInScrollingPickedOldValue:I

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mInScrollingPickedNewValue:I

    .line 1234
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->calculateFirstItemParameterByGlobalY()V

    :goto_0
    return-void
.end method

.method private dp2px(Landroid/content/Context;F)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "dpValue"
        }
    .end annotation

    .line 1654
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1355
    :goto_0
    iget v5, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_11

    .line 1356
    iget v5, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemY:I

    iget v7, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    mul-int/2addr v7, v4

    add-int/2addr v5, v7

    int-to-float v5, v5

    .line 1357
    iget v7, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemIndex:I

    add-int/2addr v7, v4

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getOneRecycleSize()I

    move-result v8

    iget-boolean v9, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    if-eqz v9, :cond_0

    iget-boolean v9, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v9, :cond_0

    move v9, v6

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    invoke-direct {v0, v7, v8, v9}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getIndexByRawIndex(IIZ)I

    move-result v7

    .line 1358
    iget v8, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    div-int/lit8 v9, v8, 0x2

    if-ne v4, v9, :cond_1

    .line 1359
    iget v3, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    iget v8, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemY:I

    add-int/2addr v8, v3

    int-to-float v8, v8

    int-to-float v3, v3

    div-float v3, v8, v3

    .line 1360
    iget v8, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorNormal:I

    iget v9, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorSelected:I

    invoke-direct {v0, v3, v8, v9}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getEvaluateColor(FII)I

    move-result v8

    .line 1361
    iget v9, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormal:I

    int-to-float v9, v9

    iget v10, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelected:I

    int-to-float v10, v10

    invoke-direct {v0, v3, v9, v10}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getEvaluateSize(FFF)F

    move-result v9

    .line 1362
    iget v10, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSufNormal:I

    int-to-float v10, v10

    iget v11, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSufSelected:I

    int-to-float v11, v11

    invoke-direct {v0, v3, v10, v11}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getEvaluateSize(FFF)F

    move-result v10

    .line 1363
    iget v11, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormalCenterYOffset:F

    iget v12, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelectedCenterYOffset:F

    invoke-direct {v0, v3, v11, v12}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getEvaluateSize(FFF)F

    move-result v11

    goto :goto_2

    .line 1365
    :cond_1
    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v6

    if-ne v4, v8, :cond_2

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v3

    .line 1366
    iget v9, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorNormal:I

    iget v10, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorSelected:I

    invoke-direct {v0, v8, v9, v10}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getEvaluateColor(FII)I

    move-result v9

    .line 1367
    iget v10, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormal:I

    int-to-float v10, v10

    iget v11, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelected:I

    int-to-float v11, v11

    invoke-direct {v0, v8, v10, v11}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getEvaluateSize(FFF)F

    move-result v10

    .line 1368
    iget v11, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSufNormal:I

    int-to-float v11, v11

    iget v12, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSufSelected:I

    int-to-float v12, v12

    invoke-direct {v0, v8, v11, v12}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getEvaluateSize(FFF)F

    move-result v11

    .line 1369
    iget v12, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormalCenterYOffset:F

    iget v13, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelectedCenterYOffset:F

    invoke-direct {v0, v8, v12, v13}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getEvaluateSize(FFF)F

    move-result v8

    move/from16 v24, v11

    move v11, v8

    move v8, v9

    move v9, v10

    move/from16 v10, v24

    goto :goto_2

    .line 1372
    :cond_2
    iget v8, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorNormal:I

    .line 1373
    iget v9, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormal:I

    int-to-float v9, v9

    .line 1374
    iget v10, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSufNormal:I

    int-to-float v10, v10

    .line 1375
    iget v11, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormalCenterYOffset:F

    :goto_2
    const/high16 v12, 0x40000000    # 2.0f

    if-nez v4, :cond_4

    .line 1378
    iget v3, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemY:I

    neg-int v3, v3

    int-to-float v3, v3

    .line 1379
    iget v8, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    int-to-float v13, v8

    div-float/2addr v13, v12

    cmpl-float v13, v3, v13

    if-lez v13, :cond_3

    int-to-float v3, v8

    div-float/2addr v3, v12

    :cond_3
    mul-float/2addr v3, v12

    int-to-float v8, v8

    div-float/2addr v3, v8

    .line 1383
    iget v8, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorNormal:I

    invoke-direct {v0, v3, v8}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getEvaluateAlpha(FI)I

    move-result v8

    .line 1385
    :cond_4
    iget v13, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    if-ne v4, v13, :cond_6

    .line 1386
    iget v3, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    iget v8, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemY:I

    add-int/2addr v8, v3

    int-to-float v8, v8

    int-to-float v13, v3

    div-float/2addr v13, v12

    cmpl-float v13, v8, v13

    if-lez v13, :cond_5

    int-to-float v8, v3

    div-float/2addr v8, v12

    :cond_5
    mul-float/2addr v8, v12

    int-to-float v3, v3

    div-float/2addr v8, v3

    .line 1391
    iget v3, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorNormal:I

    invoke-direct {v0, v8, v3}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getEvaluateAlpha(FI)I

    move-result v3

    move/from16 v24, v8

    move v8, v3

    move/from16 v3, v24

    .line 1393
    :cond_6
    iget-object v13, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v13, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1394
    iget-object v13, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    iget-object v14, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextCelsius:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v13

    .line 1395
    iget-object v14, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v14, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 1396
    iget-object v14, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v14, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string v14, "LOW"

    const-string v15, "HIGH"

    const/high16 v16, 0x41a00000    # 20.0f

    const/high16 v17, 0x41200000    # 10.0f

    const/4 v2, 0x2

    if-ltz v7, :cond_c

    .line 1397
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getOneRecycleSize()I

    move-result v12

    if-ge v7, v12, :cond_c

    .line 1398
    iget-object v12, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    iget v6, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    add-int/2addr v6, v7

    aget-object v6, v12, v6

    .line 1399
    iget-object v12, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextEllipsize:Ljava/lang/String;

    if-eqz v12, :cond_7

    .line 1400
    iget-object v12, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getWidth()I

    move-result v19

    move/from16 v20, v3

    iget v3, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemPaddingHorizontal:I

    mul-int/2addr v3, v2

    sub-int v3, v19, v3

    int-to-float v3, v3

    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getEllipsizeType()Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-static {v6, v12, v3, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_3

    :cond_7
    move/from16 v20, v3

    .line 1402
    :goto_3
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v0, v8}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getShadowTextColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1403
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v11

    .line 1405
    iget v12, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShadowDirection:I

    move/from16 v21, v4

    const/4 v4, 0x1

    if-ne v12, v4, :cond_8

    .line 1406
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget v12, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewCenterX:F

    sub-float v12, v12, v17

    sub-float/2addr v12, v13

    move-object/from16 v22, v14

    iget v14, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    const/16 v18, 0x2

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    add-float/2addr v14, v5

    add-float/2addr v14, v11

    move-object/from16 v23, v15

    iget-object v15, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1, v4, v12, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1408
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v4, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1409
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextCelsius:Ljava/lang/String;

    iget v12, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewCenterX:F

    sub-float v12, v12, v17

    sub-float/2addr v12, v13

    add-float/2addr v12, v2

    iget v14, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    const/4 v15, 0x2

    div-int/2addr v14, v15

    int-to-float v14, v14

    add-float/2addr v14, v5

    add-float/2addr v14, v3

    iget-object v15, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1, v4, v12, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_8
    move-object/from16 v22, v14

    move-object/from16 v23, v15

    const/4 v4, 0x2

    if-ne v12, v4, :cond_9

    .line 1412
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iget v14, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewCenterX:F

    add-float v14, v14, v17

    sub-float/2addr v14, v13

    iget v15, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    div-int/2addr v15, v4

    int-to-float v4, v15

    add-float/2addr v4, v5

    add-float/2addr v4, v11

    iget-object v15, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1, v12, v14, v4, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1414
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v4, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1415
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextCelsius:Ljava/lang/String;

    iget v12, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewCenterX:F

    add-float v12, v12, v17

    sub-float/2addr v12, v13

    add-float/2addr v12, v2

    iget v14, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    const/4 v15, 0x2

    div-int/2addr v14, v15

    int-to-float v14, v14

    add-float/2addr v14, v5

    add-float/2addr v14, v3

    iget-object v15, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1, v4, v12, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1418
    :cond_9
    :goto_4
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 1419
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v4, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1420
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget v6, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewCenterX:F

    sub-float/2addr v6, v13

    iget v8, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    const/4 v12, 0x2

    div-int/2addr v8, v12

    int-to-float v8, v8

    add-float/2addr v8, v5

    add-float/2addr v8, v11

    iget-object v11, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1, v4, v6, v8, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-nez v7, :cond_a

    .line 1423
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v9, v6

    invoke-virtual {v4, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1424
    iget v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewCenterX:F

    sub-float/2addr v4, v13

    sub-float v4, v4, v16

    iget v6, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    sub-float v6, v6, v17

    iget-object v7, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    move-object/from16 v12, v23

    invoke-virtual {v1, v12, v4, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_a
    const/16 v4, 0x1c

    if-ne v7, v4, :cond_b

    .line 1427
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v9, v6

    invoke-virtual {v4, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1428
    iget v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewCenterX:F

    sub-float/2addr v4, v13

    sub-float v4, v4, v16

    iget v6, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    sub-float v6, v6, v17

    iget-object v7, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    move-object/from16 v14, v22

    invoke-virtual {v1, v14, v4, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1431
    :cond_b
    :goto_5
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v4, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1432
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextCelsius:Ljava/lang/String;

    iget v6, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewCenterX:F

    sub-float/2addr v6, v13

    add-float/2addr v6, v2

    iget v2, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    const/4 v7, 0x2

    div-int/2addr v2, v7

    int-to-float v2, v2

    add-float/2addr v5, v2

    add-float/2addr v5, v3

    iget-object v2, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1, v4, v6, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    :cond_c
    move/from16 v20, v3

    move/from16 v21, v4

    move-object v12, v15

    .line 1434
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mEmptyItemHint:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1435
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v0, v8}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getShadowTextColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1436
    iget v2, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShadowDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 1437
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mEmptyItemHint:Ljava/lang/String;

    iget v3, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewCenterX:F

    sub-float v3, v3, v17

    sub-float/2addr v3, v13

    iget v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    const/4 v6, 0x2

    div-int/2addr v4, v6

    int-to-float v4, v4

    add-float/2addr v4, v5

    add-float/2addr v4, v11

    iget-object v10, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v3, v4, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_d
    const/4 v6, 0x2

    if-ne v2, v6, :cond_e

    .line 1440
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mEmptyItemHint:Ljava/lang/String;

    iget v3, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewCenterX:F

    add-float v3, v3, v17

    sub-float/2addr v3, v13

    iget v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    div-int/2addr v4, v6

    int-to-float v4, v4

    add-float/2addr v4, v5

    add-float/2addr v4, v11

    iget-object v6, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1443
    :cond_e
    :goto_6
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 1444
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mEmptyItemHint:Ljava/lang/String;

    iget v3, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewCenterX:F

    sub-float/2addr v3, v13

    iget v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    const/4 v6, 0x2

    div-int/2addr v4, v6

    int-to-float v4, v4

    add-float/2addr v4, v5

    add-float/2addr v4, v11

    iget-object v6, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-nez v7, :cond_f

    .line 1447
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v9, v3

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1448
    iget v2, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewCenterX:F

    sub-float/2addr v2, v13

    sub-float v2, v2, v16

    iget v3, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    int-to-float v3, v3

    add-float/2addr v5, v3

    sub-float v5, v5, v17

    iget-object v3, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1, v12, v2, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_f
    const/16 v2, 0x1c

    if-ne v7, v2, :cond_10

    .line 1451
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v9, v3

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1452
    iget v2, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewCenterX:F

    sub-float/2addr v2, v13

    sub-float v2, v2, v16

    iget v3, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    int-to-float v3, v3

    add-float/2addr v5, v3

    sub-float v5, v5, v17

    iget-object v3, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1, v14, v2, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_10
    :goto_7
    add-int/lit8 v4, v21, 0x1

    move/from16 v3, v20

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method private drawHint(Landroid/graphics/Canvas;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1492
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHintText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1493
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHintText:Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewCenterX:F

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxWidthOfDisplayedValues:I

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWidthOfHintText:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMarginStartOfHint:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->dividerY0:F

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->dividerY1:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeHintCenterYOffset:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1483
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowDivider:Z

    if-eqz v0, :cond_0

    .line 1484
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginL:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->dividerY0:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewWidth:I

    .line 1485
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginR:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v5, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->dividerY0:F

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintDivider:Landroid/graphics/Paint;

    move-object v1, p1

    .line 1484
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1486
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginL:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->dividerY1:F

    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewWidth:I

    .line 1487
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginR:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v5, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->dividerY1:F

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintDivider:Landroid/graphics/Paint;

    move-object v1, p1

    .line 1486
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getEllipsizeType()Landroid/text/TextUtils$TruncateAt;
    .locals 3

    .line 1470
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextEllipsize:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "middle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal text ellipsize type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1472
    :pswitch_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    return-object v0

    .line 1476
    :pswitch_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    return-object v0

    .line 1474
    :pswitch_2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEvaluateAlpha(FI)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fraction",
            "startColor"
        }
    .end annotation

    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p2

    ushr-int/lit8 v1, v1, 0x10

    const v2, 0xff00

    and-int/2addr v2, p2

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 p2, p2, 0xff

    ushr-int/lit8 p2, p2, 0x0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    sub-float/2addr v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr p1, v0

    or-int/2addr p1, p2

    return p1
.end method

.method private getEvaluateColor(FII)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fraction",
            "startColor",
            "endColor"
        }
    .end annotation

    const/high16 v0, -0x1000000

    and-int v1, p2, v0

    ushr-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xff0000

    and-int v3, p2, v2

    ushr-int/lit8 v3, v3, 0x10

    const v4, 0xff00

    and-int v5, p2, v4

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 p2, p2, 0xff

    ushr-int/lit8 p2, p2, 0x0

    and-int/2addr v0, p3

    ushr-int/lit8 v0, v0, 0x18

    and-int/2addr v2, p3

    ushr-int/lit8 v2, v2, 0x10

    and-int/2addr v4, p3

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 p3, p3, 0xff

    ushr-int/lit8 p3, p3, 0x0

    int-to-float v6, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v6, v0

    float-to-int v0, v6

    int-to-float v1, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, v5

    sub-int/2addr v4, v5

    int-to-float v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, p2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    mul-float/2addr p2, p1

    add-float/2addr v3, p2

    float-to-int p1, v3

    shl-int/lit8 p2, v0, 0x18

    shl-int/lit8 p3, v1, 0x10

    or-int/2addr p2, p3

    shl-int/lit8 p3, v2, 0x8

    or-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private getEvaluateSize(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fraction",
            "startSize",
            "endSize"
        }
    .end annotation

    sub-float/2addr p3, p2

    mul-float/2addr p3, p1

    add-float/2addr p2, p3

    return p2
.end method

.method private getIndexByRawIndex(IIZ)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "size",
            "wrap"
        }
    .end annotation

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p3, :cond_1

    .line 1025
    rem-int/2addr p1, p2

    if-gez p1, :cond_1

    add-int/2addr p1, p2

    :cond_1
    return p1
.end method

.method private getMaxWidthOfTextArray([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "paint"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1514
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v3, p1, v0

    if-eqz v3, :cond_1

    .line 1516
    invoke-direct {p0, v3, p2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getTextWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v3

    .line 1517
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private getMsg(I)Landroid/os/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "what"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1623
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getMsg(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method private getMsg(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "what",
            "arg1",
            "arg2",
            "obj"
        }
    .end annotation

    .line 1627
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1628
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1629
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1630
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1631
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private getTextCenterYOffset(Landroid/graphics/Paint$FontMetrics;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fontMetrics"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1209
    :cond_0
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    return p1
.end method

.method private getTextWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "paint"
        }
    .end annotation

    .line 1524
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1525
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getWillPickIndexByGlobalY(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalY"
        }
    .end annotation

    .line 1010
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1011
    :cond_0
    div-int/2addr p1, v0

    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 1012
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getOneRecycleSize()I

    move-result v0

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-direct {p0, p1, v0, v2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getIndexByRawIndex(IIZ)I

    move-result p1

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, p1

    .line 1016
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getOneRecycleSize()I

    move-result p1

    if-lt v1, p1, :cond_3

    .line 1017
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getOneRecycleSize()I

    move-result p1

    add-int/lit8 v1, p1, -0x1

    :cond_3
    return v1
.end method

.method private inflateDisplayedValuesIfNull()V
    .locals 3

    .line 1570
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1571
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 320
    invoke-static {p1}, Landroidx/core/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroidx/core/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    .line 321
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMiniVelocityFling:I

    .line 322
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScaledTouchSlop:I

    .line 323
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormal:I

    const/high16 v1, 0x41600000    # 14.0f

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->sp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormal:I

    .line 324
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelected:I

    if-nez v0, :cond_1

    const/high16 v0, 0x41800000    # 16.0f

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->sp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelected:I

    .line 325
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeHint:I

    if-nez v0, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->sp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeHint:I

    .line 326
    :cond_2
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMarginStartOfHint:I

    const/high16 v1, 0x41000000    # 8.0f

    if-nez v0, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMarginStartOfHint:I

    .line 327
    :cond_3
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMarginEndOfHint:I

    if-nez v0, :cond_4

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMarginEndOfHint:I

    .line 329
    :cond_4
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->hvac_celsius:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextCelsius:Ljava/lang/String;

    .line 330
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintDivider:Landroid/graphics/Paint;

    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintDivider:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 332
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintDivider:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 333
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintDivider:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerHeight:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 335
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorNormal:I

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 336
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 337
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 338
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->x_font_typeface_number:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 340
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintHint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorHint:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 342
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintHint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 343
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintHint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeHint:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 345
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_5

    add-int/2addr p1, v0

    .line 346
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    .line 348
    :cond_5
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    iget p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxShowIndex:I

    if-ne p1, v0, :cond_7

    .line 349
    :cond_6
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateValueForInit()V

    .line 351
    :cond_7
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->initHandler()V

    return-void
.end method

.method private initAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 250
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 251
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1f

    .line 253
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 254
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_ShowCount:I

    if-ne v3, v4, :cond_1

    const/4 v4, 0x3

    .line 255
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    goto/16 :goto_1

    .line 256
    :cond_1
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_DividerColor:I

    const v5, -0xa9ced

    if-ne v3, v4, :cond_2

    .line 257
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerColor:I

    goto/16 :goto_1

    .line 258
    :cond_2
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_DividerHeight:I

    if-ne v3, v4, :cond_3

    const/4 v4, 0x2

    .line 259
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerHeight:I

    goto/16 :goto_1

    .line 260
    :cond_3
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_DividerMarginLeft:I

    if-ne v3, v4, :cond_4

    .line 261
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginL:I

    goto/16 :goto_1

    .line 262
    :cond_4
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_DividerMarginRight:I

    if-ne v3, v4, :cond_5

    .line 263
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginR:I

    goto/16 :goto_1

    .line 264
    :cond_5
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_TextArray:I

    if-ne v3, v4, :cond_6

    .line 265
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->convertCharSequenceArrayToStringArray([Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    goto/16 :goto_1

    .line 266
    :cond_6
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_TextColorNormal:I

    if-ne v3, v4, :cond_7

    const v4, -0xcccccd

    .line 267
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorNormal:I

    goto/16 :goto_1

    .line 268
    :cond_7
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_TextColorSelected:I

    if-ne v3, v4, :cond_8

    .line 269
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorSelected:I

    goto/16 :goto_1

    .line 270
    :cond_8
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_TextColorHint:I

    if-ne v3, v4, :cond_9

    .line 271
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorHint:I

    goto/16 :goto_1

    .line 272
    :cond_9
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_TextSizeNormal:I

    const/high16 v5, 0x41600000    # 14.0f

    if-ne v3, v4, :cond_a

    .line 273
    invoke-direct {p0, p1, v5}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->sp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormal:I

    goto/16 :goto_1

    .line 274
    :cond_a
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_TextSizeSelected:I

    const/high16 v6, 0x41800000    # 16.0f

    if-ne v3, v4, :cond_b

    .line 275
    invoke-direct {p0, p1, v6}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->sp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelected:I

    goto/16 :goto_1

    .line 276
    :cond_b
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_TextSizeHint:I

    if-ne v3, v4, :cond_c

    .line 277
    invoke-direct {p0, p1, v5}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->sp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeHint:I

    goto/16 :goto_1

    .line 278
    :cond_c
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_TextSizeSufNormal:I

    if-ne v3, v4, :cond_d

    .line 279
    invoke-direct {p0, p1, v5}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->sp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSufNormal:I

    goto/16 :goto_1

    .line 280
    :cond_d
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_TextSizeSufSelected:I

    if-ne v3, v4, :cond_e

    .line 281
    invoke-direct {p0, p1, v6}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->sp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSufSelected:I

    goto/16 :goto_1

    .line 282
    :cond_e
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_MinValue:I

    if-ne v3, v4, :cond_f

    .line 283
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    goto/16 :goto_1

    .line 284
    :cond_f
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_MaxValue:I

    if-ne v3, v4, :cond_10

    .line 285
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxShowIndex:I

    goto/16 :goto_1

    .line 286
    :cond_10
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_WrapSelectorWheel:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_11

    .line 287
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    goto/16 :goto_1

    .line 288
    :cond_11
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_ShowDivider:I

    if-ne v3, v4, :cond_12

    .line 289
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowDivider:Z

    goto/16 :goto_1

    .line 290
    :cond_12
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_HintText:I

    if-ne v3, v4, :cond_13

    .line 291
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHintText:Ljava/lang/String;

    goto/16 :goto_1

    .line 292
    :cond_13
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_AlternativeHint:I

    if-ne v3, v4, :cond_14

    .line 293
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mAlterHint:Ljava/lang/String;

    goto/16 :goto_1

    .line 294
    :cond_14
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_EmptyItemHint:I

    if-ne v3, v4, :cond_15

    .line 295
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mEmptyItemHint:Ljava/lang/String;

    goto/16 :goto_1

    .line 296
    :cond_15
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_MarginStartOfHint:I

    const/high16 v6, 0x41000000    # 8.0f

    if-ne v3, v4, :cond_16

    .line 297
    invoke-direct {p0, p1, v6}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMarginStartOfHint:I

    goto/16 :goto_1

    .line 298
    :cond_16
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_MarginEndOfHint:I

    if-ne v3, v4, :cond_17

    .line 299
    invoke-direct {p0, p1, v6}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMarginEndOfHint:I

    goto :goto_1

    .line 300
    :cond_17
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_ItemPaddingVertical:I

    if-ne v3, v4, :cond_18

    const/high16 v4, 0x40000000    # 2.0f

    .line 301
    invoke-direct {p0, p1, v4}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemPaddingVertical:I

    goto :goto_1

    .line 302
    :cond_18
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_ItemPaddingHorizontal:I

    if-ne v3, v4, :cond_19

    const/high16 v4, 0x40a00000    # 5.0f

    .line 303
    invoke-direct {p0, p1, v4}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemPaddingHorizontal:I

    goto :goto_1

    .line 304
    :cond_19
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_AlternativeTextArrayWithMeasureHint:I

    if-ne v3, v4, :cond_1a

    .line 305
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mAlterTextArrayWithMeasureHint:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 306
    :cond_1a
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_AlternativeTextArrayWithoutMeasureHint:I

    if-ne v3, v4, :cond_1b

    .line 307
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mAlterTextArrayWithoutMeasureHint:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 308
    :cond_1b
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_RespondChangeOnDetached:I

    if-ne v3, v4, :cond_1c

    .line 309
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mRespondChangeOnDetach:Z

    goto :goto_1

    .line 310
    :cond_1c
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_RespondChangeInMainThread:I

    if-ne v3, v4, :cond_1d

    .line 311
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mRespondChangeInMainThread:Z

    goto :goto_1

    .line 312
    :cond_1d
    sget v4, Lcom/xiaopeng/carcontrolmodule/R$styleable;->ValuePickerView_npv_TextEllipsize:I

    if-ne v3, v4, :cond_1e

    .line 313
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextEllipsize:Ljava/lang/String;

    :cond_1e
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 316
    :cond_1f
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initHandler()V
    .locals 2

    .line 355
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread-For-Refreshing"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 356
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 358
    new-instance v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;-><init>(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInNewThread:Landroid/os/Handler;

    .line 415
    new-instance v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$2;-><init>(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInMainThread:Landroid/os/Handler;

    return-void
.end method

.method private internalSetWrapToLinear()V
    .locals 2

    .line 1036
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getPickedIndexRelativeToRaw()I

    move-result v0

    .line 1037
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->correctPositionByDefaultValue(IZ)V

    .line 1038
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    .line 1039
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->postInvalidate()V

    return-void
.end method

.method private isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1644
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$calculateFirstItemParameterByGlobalY$0()V
    .locals 1

    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_wheel_scroll_7.wav"

    .line 1274
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->playNotification(Ljava/lang/String;)V

    return-void
.end method

.method private limitY(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currDrawGlobalYPreferred"
        }
    .end annotation

    .line 1095
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v0, :cond_0

    return p1

    .line 1096
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mNotWrapLimitYBottom:I

    if-ge p1, v0, :cond_1

    :goto_0
    move p1, v0

    goto :goto_1

    .line 1098
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mNotWrapLimitYTop:I

    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private measureHeight(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "measureSpec"
        }
    .end annotation

    .line 1325
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mSpecModeH:I

    .line 1326
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1331
    :cond_0
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxHeightOfDisplayedValues:I

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemPaddingVertical:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    .line 1332
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 1334
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    return p1
.end method

.method private measureWidth(I)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "measureSpec"
        }
    .end annotation

    .line 1303
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mSpecModeW:I

    .line 1304
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 1309
    :cond_0
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWidthOfHintText:I

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWidthOfAlterHint:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMarginEndOfHint:I

    .line 1310
    :goto_0
    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWidthOfHintText:I

    iget v4, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWidthOfAlterHint:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMarginStartOfHint:I

    .line 1312
    :goto_1
    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxWidthOfAlterArrayWithMeasureHint:I

    iget v4, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxWidthOfDisplayedValues:I

    iget v5, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxWidthOfAlterArrayWithoutMeasureHint:I

    .line 1313
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWidthOfHintText:I

    iget v6, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWidthOfAlterHint:I

    .line 1314
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v2, v1

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemPaddingHorizontal:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v2

    .line 1312
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1315
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    .line 1317
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    return p1
.end method

.method private onScrollStateChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollState"
        }
    .end annotation

    .line 969
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 973
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mIsFromUser:Z

    .line 975
    :cond_1
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScrollState:I

    .line 976
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mOnScrollListener:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onScrollStateChange: scrollState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValuePickerView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mOnScrollListener:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnScrollListener;->onScrollStateChange(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;I)V

    :cond_2
    return-void
.end method

.method private refineValueByLimit(IIIZ)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "minValue",
            "maxValue",
            "wrap"
        }
    .end annotation

    if-eqz p4, :cond_2

    if-le p1, p3, :cond_0

    sub-int/2addr p1, p3

    .line 1583
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getOneRecycleSize()I

    move-result p3

    rem-int/2addr p1, p3

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-ge p1, p2, :cond_1

    sub-int/2addr p1, p2

    .line 1585
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getOneRecycleSize()I

    move-result p2

    rem-int/2addr p1, p2

    add-int/2addr p1, p3

    add-int/lit8 p1, p1, 0x1

    :cond_1
    :goto_0
    return p1

    :cond_2
    if-le p1, p3, :cond_3

    move p1, p3

    goto :goto_1

    :cond_3
    if-ge p1, p2, :cond_4

    move p1, p2

    :cond_4
    :goto_1
    return p1
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 1282
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1283
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1284
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1285
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private respondPickedValueChanged(IILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "oldVal",
            "newVal",
            "respondChange"
        }
    .end annotation

    const/4 v0, 0x0

    .line 712
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->onScrollStateChange(I)V

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\uff1arespondPickedValueChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",oldVal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",newVal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ValuePickerView"

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq p1, p2, :cond_2

    .line 716
    instance-of v1, p3, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 717
    :cond_0
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mOnValueChangeListener:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListener;

    if-eqz p3, :cond_1

    .line 718
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    add-int v2, p1, v1

    add-int/2addr v1, p2

    invoke-interface {p3, p0, v2, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListener;->onValueChange(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;II)V

    .line 720
    :cond_1
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mOnValueChangeListenerRaw:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListenerRelativeToRaw;

    if-eqz p3, :cond_2

    .line 721
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    invoke-interface {p3, p0, p1, p2, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListenerRelativeToRaw;->onValueChangeRelativeToRaw(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;II[Ljava/lang/String;)V

    .line 725
    :cond_2
    iput p2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPrevPickedIndex:I

    .line 726
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPendingWrapToLinear:Z

    if-eqz p1, :cond_3

    .line 727
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPendingWrapToLinear:Z

    .line 728
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->internalSetWrapToLinear()V

    :cond_3
    return-void
.end method

.method private respondPickedValueChangedInScrolling(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldVal",
            "newVal"
        }
    .end annotation

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " respondPickedValueChangedInScrolling drv oldVal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,newVal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValuePickerView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mOnValueChangeListenerInScrolling:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListenerInScrolling;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListenerInScrolling;->onValueChangeInScrolling(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;II)V

    return-void
.end method

.method private scrollByIndexSmoothly(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaIndex"
        }
    .end annotation

    const/4 v0, 0x1

    .line 733
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->scrollByIndexSmoothly(IZ)V

    return-void
.end method

.method private scrollByIndexSmoothly(IZ)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deltaIndex",
            "needRespond"
        }
    .end annotation

    .line 742
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    if-nez v0, :cond_2

    .line 743
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getPickedIndexRelativeToRaw()I

    move-result v0

    add-int v1, v0, p1

    .line 744
    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxShowIndex:I

    if-le v1, v2, :cond_1

    :goto_0
    sub-int p1, v2, v0

    goto :goto_1

    .line 746
    :cond_1
    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    if-ge v1, v2, :cond_2

    goto :goto_0

    .line 752
    :cond_2
    :goto_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemY:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    neg-int v2, v1

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x43960000    # 300.0f

    if-ge v0, v2, :cond_4

    add-int v2, v1, v0

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v3

    int-to-float v3, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    if-gez p1, :cond_3

    neg-int v0, v0

    mul-int/lit16 v3, p1, 0x12c

    sub-int/2addr v0, v3

    goto :goto_2

    :cond_3
    mul-int/lit16 v3, p1, 0x12c

    add-int/2addr v0, v3

    :goto_2
    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_3

    :cond_4
    neg-int v2, v0

    int-to-float v2, v2

    mul-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    float-to-int v2, v2

    if-gez p1, :cond_5

    mul-int/lit16 v3, p1, 0x12c

    sub-int/2addr v2, v3

    goto :goto_3

    :cond_5
    mul-int/lit16 v3, p1, 0x12c

    add-int/2addr v2, v3

    :goto_3
    mul-int/2addr p1, v1

    add-int v7, v0, p1

    const/16 p1, 0x12c

    if-ge v2, p1, :cond_6

    move v2, p1

    :cond_6
    const/16 p1, 0x258

    if-le v2, p1, :cond_7

    move v2, p1

    .line 776
    :cond_7
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    const/4 v4, 0x0

    iget v5, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    const/4 v6, 0x0

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/core/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 778
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInNewThread:Landroid/os/Handler;

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    .line 779
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p2, :cond_8

    .line 781
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInNewThread:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getMsg(I)Landroid/os/Message;

    move-result-object p2

    div-int/lit8 v2, v2, 0x4

    int-to-long v0, v2

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    .line 783
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInNewThread:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getMsg(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    div-int/lit8 v2, v2, 0x4

    int-to-long v0, v2

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 786
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->postInvalidate()V

    return-void
.end method

.method private sp2px(Landroid/content/Context;F)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "spValue"
        }
    .end annotation

    .line 1649
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private stopRefreshing()V
    .locals 2

    .line 1599
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInNewThread:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1600
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private updateContent([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newDisplayedValues"
        }
    .end annotation

    .line 1545
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    .line 1546
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateWrapStateByContent()V

    return-void
.end method

.method private updateContentAndIndex([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newDisplayedValues"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1538
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    .line 1539
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxShowIndex:I

    .line 1540
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    .line 1541
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateWrapStateByContent()V

    return-void
.end method

.method private updateDividerAttr()V
    .locals 5

    .line 1043
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerIndex0:I

    add-int/lit8 v2, v1, 0x1

    .line 1044
    iput v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerIndex1:I

    .line 1045
    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewHeight:I

    mul-int/2addr v1, v3

    div-int/2addr v1, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->dividerY0:F

    mul-int/2addr v2, v3

    .line 1046
    div-int/2addr v2, v0

    int-to-float v0, v2

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->dividerY1:F

    .line 1047
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginL:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginL:I

    .line 1048
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginR:I

    if-gez v0, :cond_1

    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginR:I

    .line 1050
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginL:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginR:I

    add-int/2addr v0, v1

    if-nez v0, :cond_2

    return-void

    .line 1051
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginL:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewWidth:I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginR:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_3

    .line 1052
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginL:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginR:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewWidth:I

    sub-int/2addr v0, v2

    .line 1053
    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginL:I

    int-to-float v3, v2

    int-to-float v0, v0

    int-to-float v4, v2

    mul-float/2addr v4, v0

    add-int/2addr v2, v1

    int-to-float v2, v2

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    float-to-int v2, v3

    iput v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginL:I

    int-to-float v3, v1

    int-to-float v4, v1

    mul-float/2addr v0, v4

    add-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    sub-float/2addr v3, v0

    float-to-int v0, v3

    .line 1054
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerMarginR:I

    :cond_3
    return-void
.end method

.method private updateFontAttr()V
    .locals 2

    .line 1062
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormal:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    if-le v0, v1, :cond_0

    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormal:I

    .line 1063
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelected:I

    if-le v0, v1, :cond_1

    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelected:I

    .line 1065
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintHint:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    .line 1068
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeHint:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1069
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getTextCenterYOffset(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeHintCenterYOffset:F

    .line 1070
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHintText:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintHint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getTextWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWidthOfHintText:I

    .line 1072
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    if-eqz v0, :cond_2

    .line 1075
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelected:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1076
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getTextCenterYOffset(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelectedCenterYOffset:F

    .line 1077
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormal:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1078
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getTextCenterYOffset(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeNormalCenterYOffset:F

    return-void

    .line 1073
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mPaintText should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1066
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mPaintHint should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateMaxHeightOfDisplayedValues()V
    .locals 5

    .line 1531
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    .line 1532
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelected:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1533
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxHeightOfDisplayedValues:I

    .line 1534
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private updateMaxWHOfDisplayedValues(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needRequestLayout"
        }
    .end annotation

    .line 1290
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateMaxWidthOfDisplayedValues()V

    .line 1291
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateMaxHeightOfDisplayedValues()V

    if-eqz p1, :cond_1

    .line 1292
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInMainThread:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mSpecModeW:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mSpecModeH:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x3

    .line 1294
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private updateMaxWidthOfDisplayedValues()V
    .locals 3

    .line 1499
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    .line 1500
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeSelected:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1501
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getMaxWidthOfTextArray([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxWidthOfDisplayedValues:I

    .line 1502
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mAlterTextArrayWithMeasureHint:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getMaxWidthOfTextArray([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxWidthOfAlterArrayWithMeasureHint:I

    .line 1503
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mAlterTextArrayWithoutMeasureHint:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getMaxWidthOfTextArray([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxWidthOfAlterArrayWithoutMeasureHint:I

    .line 1504
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeHint:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1505
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mAlterHint:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getTextWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWidthOfAlterHint:I

    .line 1506
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private updateNotWrapYLimit()V
    .locals 3

    const/4 v0, 0x0

    .line 1082
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mNotWrapLimitYTop:I

    .line 1083
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    neg-int v0, v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mNotWrapLimitYBottom:I

    .line 1084
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1085
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getOneRecycleSize()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mNotWrapLimitYTop:I

    .line 1086
    div-int/lit8 v1, v1, 0x2

    neg-int v0, v1

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mNotWrapLimitYBottom:I

    :cond_0
    return-void
.end method

.method private updateValue()V
    .locals 1

    .line 1551
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->inflateDisplayedValuesIfNull()V

    .line 1552
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateWrapStateByContent()V

    const/4 v0, 0x0

    .line 1553
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    .line 1554
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxShowIndex:I

    return-void
.end method

.method private updateValueForInit()V
    .locals 3

    .line 1558
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->inflateDisplayedValuesIfNull()V

    .line 1559
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateWrapStateByContent()V

    .line 1560
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1561
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    .line 1563
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxShowIndex:I

    if-ne v0, v2, :cond_1

    .line 1564
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxShowIndex:I

    .line 1566
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxShowIndex:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->setMinAndMaxShowIndex(IIZ)V

    return-void
.end method

.method private updateWrapStateByContent()V
    .locals 2

    .line 1577
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    .line 1247
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    if-nez v0, :cond_0

    return-void

    .line 1248
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1249
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    .line 1250
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->calculateFirstItemParameterByGlobalY()V

    .line 1251
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public getContentByCurrValue()Ljava/lang/String;
    .locals 3

    .line 835
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getValue()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 794
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 790
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    return v0
.end method

.method public getOneRecycleSize()I
    .locals 2

    .line 532
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxShowIndex:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPickedIndexRelativeToRaw()I
    .locals 3

    .line 907
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemY:I

    if-eqz v0, :cond_1

    .line 908
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    neg-int v2, v1

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    .line 909
    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getWillPickIndexByGlobalY(I)I

    move-result v0

    goto :goto_0

    .line 911
    :cond_0
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getWillPickIndexByGlobalY(I)I

    move-result v0

    goto :goto_0

    .line 914
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getWillPickIndexByGlobalY(I)I

    move-result v0

    .line 916
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":getPickedIndexRelativeToRaw:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ValuePickerView"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getRawContentSize()I
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 537
    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getShadowTextColor(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textColor"
        }
    .end annotation

    .line 1465
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3d75c28f    # 0.06f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 1466
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 1465
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method public getValue()I
    .locals 2

    .line 831
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getPickedIndexRelativeToRaw()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 839
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    return v0
.end method

.method public getWrapSelectorWheelAbsolutely()Z
    .locals 1

    .line 843
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 476
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 477
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->initHandler()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 484
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 485
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInNewThread:Landroid/os/Handler;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 486
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInNewThread:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInMainThread:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 490
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 491
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInMainThread:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInMainThread:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 497
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    if-nez v0, :cond_2

    return-void

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    .line 499
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    .line 500
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    .line 501
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->calculateFirstItemParameterByGlobalY()V

    .line 502
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemY:I

    if-eqz v0, :cond_4

    .line 503
    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    neg-int v3, v2

    div-int/2addr v3, v1

    if-ge v0, v3, :cond_3

    .line 504
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    goto :goto_0

    .line 506
    :cond_3
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    .line 508
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->calculateFirstItemParameterByGlobalY()V

    :cond_4
    const/4 v0, 0x0

    .line 510
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->onScrollStateChange(I)V

    .line 515
    :cond_5
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getWillPickIndexByGlobalY(I)I

    move-result v0

    .line 516
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPrevPickedIndex:I

    if-eq v0, v1, :cond_7

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mRespondChangeOnDetach:Z

    if-eqz v2, :cond_7

    .line 518
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mOnValueChangeListener:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListener;

    if-eqz v2, :cond_6

    .line 519
    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    add-int/2addr v1, v3

    add-int/2addr v3, v0

    invoke-interface {v2, p0, v1, v3}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListener;->onValueChange(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;II)V

    .line 521
    :cond_6
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mOnValueChangeListenerRaw:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListenerRelativeToRaw;

    if-eqz v1, :cond_7

    .line 522
    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPrevPickedIndex:I

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    invoke-interface {v1, p0, v2, v0, v3}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListenerRelativeToRaw;->onValueChangeRelativeToRaw(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;II[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 525
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 528
    :cond_7
    :goto_1
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPrevPickedIndex:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1342
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1343
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->drawContent(Landroid/graphics/Canvas;)V

    .line 1344
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->drawLine(Landroid/graphics/Canvas;)V

    .line 1345
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->drawHint(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 444
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/4 v0, 0x0

    .line 445
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateMaxWHOfDisplayedValues(Z)V

    .line 446
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->measureWidth(I)I

    move-result p1

    .line 447
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->measureHeight(I)I

    move-result p2

    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 452
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 453
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewWidth:I

    .line 454
    iput p2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewHeight:I

    .line 455
    iget p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    div-int/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    .line 456
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mViewCenterX:F

    .line 458
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getOneRecycleSize()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-le p1, p3, :cond_1

    .line 459
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHasInit:Z

    if-eqz p1, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getValue()I

    move-result p1

    iget p4, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    sub-int/2addr p1, p4

    goto :goto_0

    .line 461
    :cond_0
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrentItemIndexEffect:Z

    if-eqz p1, :cond_1

    .line 462
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawFirstItemIndex:I

    iget p4, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShowCount:I

    sub-int/2addr p4, p3

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p1, p4

    goto :goto_0

    :cond_1
    move p1, p2

    .line 467
    :goto_0
    iget-boolean p4, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    if-eqz p4, :cond_2

    iget-boolean p4, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    if-eqz p4, :cond_2

    move p2, p3

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->correctPositionByDefaultValue(IZ)V

    .line 468
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateFontAttr()V

    .line 469
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateNotWrapYLimit()V

    .line 470
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateDividerAttr()V

    .line 471
    iput-boolean p3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHasInit:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1107
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1111
    :cond_0
    iget v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    const/4 v3, 0x1

    if-nez v1, :cond_1

    return v3

    .line 1113
    :cond_1
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_2

    .line 1114
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1116
    :cond_2
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1117
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->currY:F

    .line 1119
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_c

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    if-eq v1, v3, :cond_7

    if-eq v1, v7, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    goto/16 :goto_1

    .line 1169
    :cond_3
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mOnValueChangeListener:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListener;

    if-eqz v1, :cond_4

    .line 1170
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListener;->onTouchUp()V

    .line 1172
    :cond_4
    iget v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    int-to-float v1, v1

    iput v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->downYGlobal:F

    .line 1173
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->stopRefreshing()V

    .line 1174
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->stopScrolling()V

    .line 1175
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInNewThread:Landroid/os/Handler;

    if-eqz v1, :cond_e

    .line 1176
    invoke-direct {v0, v3}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getMsg(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 1134
    :cond_5
    iget v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->downY:F

    iget v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->currY:F

    sub-float/2addr v1, v4

    .line 1136
    iget-boolean v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mFlagMayPress:Z

    if-eqz v4, :cond_6

    iget v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScaledTouchSlop:I

    neg-int v5, v4

    int-to-float v5, v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_6

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_6

    goto :goto_0

    .line 1139
    :cond_6
    iput-boolean v2, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mFlagMayPress:Z

    .line 1140
    iget v2, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->downYGlobal:F

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->limitY(I)I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    .line 1141
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->calculateFirstItemParameterByGlobalY()V

    .line 1142
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->invalidate()V

    .line 1144
    :goto_0
    invoke-direct {v0, v3}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->onScrollStateChange(I)V

    goto/16 :goto_1

    .line 1147
    :cond_7
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mOnValueChangeListener:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListener;

    if-eqz v1, :cond_8

    .line 1148
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListener;->onTouchUp()V

    .line 1150
    :cond_8
    iget-boolean v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mFlagMayPress:Z

    if-eqz v1, :cond_9

    .line 1151
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->click(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1153
    :cond_9
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    .line 1154
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1155
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    iget v2, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mFriction:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1156
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMiniVelocityFling:I

    if-le v2, v4, :cond_a

    .line 1157
    iget-object v8, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    const/4 v9, 0x0

    iget v10, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    const/4 v11, 0x0

    neg-int v12, v1

    const/high16 v13, -0x80000000

    const v14, 0x7fffffff

    const/high16 v1, -0x80000000

    .line 1158
    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->limitY(I)I

    move-result v15

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->limitY(I)I

    move-result v16

    .line 1157
    invoke-virtual/range {v8 .. v16}, Landroidx/core/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 1159
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->invalidate()V

    .line 1160
    invoke-direct {v0, v7}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->onScrollStateChange(I)V

    .line 1162
    :cond_a
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInNewThread:Landroid/os/Handler;

    if-eqz v1, :cond_b

    .line 1163
    invoke-direct {v0, v3}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getMsg(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1165
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->releaseVelocityTracker()V

    goto :goto_1

    .line 1121
    :cond_c
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mOnValueChangeListener:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListener;

    if-eqz v1, :cond_d

    .line 1122
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListener;->onTouchDown()V

    .line 1124
    :cond_d
    iput-boolean v3, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mFlagMayPress:Z

    .line 1125
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->stopRefreshing()V

    .line 1126
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->stopScrolling()V

    .line 1127
    iget v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->currY:F

    iput v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->downY:F

    .line 1128
    iget v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mCurrDrawGlobalY:I

    int-to-float v1, v1

    iput v1, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->downYGlobal:F

    .line 1129
    invoke-direct {v0, v2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->onScrollStateChange(I)V

    .line 1130
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1131
    iput-boolean v3, v0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mIsFromUser:Z

    :cond_e
    :goto_1
    return v3
.end method

.method public refreshByNewDisplayedValues([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "display"
        }
    .end annotation

    .line 688
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getMinValue()I

    move-result v0

    .line 690
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getMaxValue()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 693
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_0

    .line 697
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->setDisplayedValues([Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->setMaxValue(I)V

    goto :goto_0

    .line 700
    :cond_0
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->setMaxValue(I)V

    .line 701
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->setDisplayedValues([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setContentTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeface"
        }
    .end annotation

    .line 1001
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newDisplayedValues"
        }
    .end annotation

    .line 568
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->stopRefreshing()V

    .line 569
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->stopScrolling()V

    if-eqz p1, :cond_3

    .line 574
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxValue:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    array-length v2, p1

    if-gt v0, v2, :cond_2

    .line 580
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateContent([Ljava/lang/String;)V

    .line 581
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateMaxWHOfDisplayedValues(Z)V

    .line 582
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    const/4 v0, 0x0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPrevPickedIndex:I

    .line 583
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->correctPositionByDefaultValue(IZ)V

    .line 584
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->postInvalidate()V

    .line 585
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInMainThread:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    .line 586
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    .line 575
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxValue - mMinValue + 1 should not be greater than mDisplayedValues.length, now ((mMaxValue - mMinValue + 1) is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxValue:I

    iget v4, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newDisplayedValues.length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", you need to set MaxValue and MinValue before setDisplayedValues(String[])"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newDisplayedValues should not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDisplayedValues([Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newDisplayedValues",
            "needRefresh"
        }
    .end annotation

    const/4 v0, 0x0

    .line 564
    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->setDisplayedValuesAndPickedIndex([Ljava/lang/String;IZ)V

    return-void
.end method

.method public setDisplayedValuesAndPickedIndex([Ljava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "newDisplayedValues",
            "pickedIndex",
            "needRefresh"
        }
    .end annotation

    .line 542
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->stopScrolling()V

    if-eqz p1, :cond_4

    if-ltz p2, :cond_3

    .line 549
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateContent([Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 550
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateMaxWHOfDisplayedValues(Z)V

    .line 551
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateNotWrapYLimit()V

    .line 552
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateValue()V

    .line 553
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPrevPickedIndex:I

    .line 554
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->correctPositionByDefaultValue(IZ)V

    if-eqz p3, :cond_2

    .line 556
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInNewThread:Landroid/os/Handler;

    if-eqz p2, :cond_1

    .line 557
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getMsg(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 559
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->postInvalidate()V

    :cond_2
    return-void

    .line 547
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pickedIndex should not be negative, now pickedIndex is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 544
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "newDisplayedValues should not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dividerColor"
        }
    .end annotation

    .line 887
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 888
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 889
    :cond_0
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDividerColor:I

    .line 890
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintDivider:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 891
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->postInvalidate()V

    return-void
.end method

.method public setFriction(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friction"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 964
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    div-float/2addr v0, p1

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mFriction:F

    return-void

    .line 963
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "you should set a a positive float friction, now friction is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hintText"
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHintText:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 848
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHintText:Ljava/lang/String;

    .line 849
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getTextCenterYOffset(Landroid/graphics/Paint$FontMetrics;)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextSizeHintCenterYOffset:F

    .line 850
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHintText:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintHint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getTextWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWidthOfHintText:I

    .line 851
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInMainThread:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    .line 852
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public setHintTextColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hintTextColor"
        }
    .end annotation

    .line 879
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 880
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorHint:I

    if-ne v0, p1, :cond_0

    return-void

    .line 881
    :cond_0
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorHint:I

    .line 882
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 883
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->postInvalidate()V

    return-void
.end method

.method public setHintTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeface"
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setMaxValue(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxValue"
        }
    .end annotation

    .line 805
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    const-string v1, "mDisplayedValues should not be null"

    .line 806
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 808
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    sub-int v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    array-length v0, v0

    if-gt v2, v0, :cond_0

    .line 812
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxValue:I

    sub-int/2addr p1, v1

    .line 813
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxShowIndex:I

    .line 814
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->setMinAndMaxShowIndex(II)V

    .line 815
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateNotWrapYLimit()V

    return-void

    .line 809
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(maxValue - mMinValue + 1) should not be greater than mDisplayedValues.length now  (maxValue - mMinValue + 1) is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " and mDisplayedValues.length is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinAndMaxShowIndex(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "minShowIndex",
            "maxShowIndex"
        }
    .end annotation

    const/4 v0, 0x1

    .line 921
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->setMinAndMaxShowIndex(IIZ)V

    return-void
.end method

.method public setMinAndMaxShowIndex(IIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "minShowIndex",
            "maxShowIndex",
            "needRefresh"
        }
    .end annotation

    if-gt p1, p2, :cond_7

    .line 929
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_6

    if-ltz p1, :cond_5

    .line 934
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_4

    if-ltz p2, :cond_3

    .line 941
    array-length v0, v0

    sub-int/2addr v0, v2

    if-gt p2, v0, :cond_2

    .line 946
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    .line 947
    iput p2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxShowIndex:I

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    add-int/2addr p1, p2

    .line 949
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPrevPickedIndex:I

    .line 950
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    invoke-direct {p0, p2, v2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->correctPositionByDefaultValue(IZ)V

    .line 951
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->postInvalidate()V

    :cond_1
    return-void

    .line 942
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maxShowIndex should not be greater than (mDisplayedValues.length - 1), now (mDisplayedValues.length - 1) is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " maxShowIndex is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 940
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maxShowIndex should not be less than 0, now maxShowIndex is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 935
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "minShowIndex should not be greater than (mDisplayedValues.length - 1), now (mDisplayedValues.length - 1) is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " minShowIndex is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 933
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "minShowIndex should not be less than 0, now minShowIndex is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 930
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mDisplayedValues should not be null, you need to set mDisplayedValues first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 926
    :cond_7
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minShowIndex should be less than maxShowIndex, minShowIndex is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", maxShowIndex is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public setMinValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minValue"
        }
    .end annotation

    .line 798
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    const/4 p1, 0x0

    .line 799
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    .line 800
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateNotWrapYLimit()V

    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normalTextColor"
        }
    .end annotation

    .line 865
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 866
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorNormal:I

    if-ne v0, p1, :cond_0

    return-void

    .line 867
    :cond_0
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorNormal:I

    .line 868
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->postInvalidate()V

    return-void
.end method

.method public setOnScrollListener(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnScrollListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 984
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mOnScrollListener:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnScrollListener;

    return-void
.end method

.method public setOnValueChangeListenerInScrolling(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListenerInScrolling;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 997
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mOnValueChangeListenerInScrolling:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListenerInScrolling;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 989
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mOnValueChangeListener:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListener;

    return-void
.end method

.method public setOnValueChangedListenerRelativeToRaw(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListenerRelativeToRaw;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 993
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mOnValueChangeListenerRaw:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListenerRelativeToRaw;

    return-void
.end method

.method public setPickedIndexRelativeToMin(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pickedIndexToMin"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 857
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getOneRecycleSize()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 858
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPrevPickedIndex:I

    .line 859
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->correctPositionByDefaultValue(IZ)V

    .line 860
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setPickedIndexRelativeToRaw(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pickedIndexToRaw"
        }
    .end annotation

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":setPickedIndexRelativeToRaw:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValuePickerView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinShowIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    if-gt v0, p1, :cond_1

    .line 897
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxShowIndex:I

    if-gt p1, v1, :cond_1

    .line 898
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPrevPickedIndex:I

    sub-int/2addr p1, v0

    .line 899
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->correctPositionByDefaultValue(IZ)V

    .line 900
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedTextColor"
        }
    .end annotation

    .line 872
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 873
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorSelected:I

    if-ne v0, p1, :cond_0

    return-void

    .line 874
    :cond_0
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mTextColorSelected:I

    .line 875
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->postInvalidate()V

    return-void
.end method

.method public setShadowDirection(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1460
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mShadowDirection:I

    .line 1461
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->invalidate()V

    return-void
.end method

.method public setValue(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 820
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    if-lt p1, v0, :cond_1

    .line 823
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxValue:I

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    .line 826
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->setPickedIndexRelativeToRaw(I)V

    return-void

    .line 824
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "should not set a value greater than mMaxValue, value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "should not set a value less than mMinValue, value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapSelectorWheel"
        }
    .end annotation

    .line 599
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_1

    .line 601
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScrollState:I

    if-nez p1, :cond_0

    .line 602
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->internalSetWrapToLinear()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 604
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mPendingWrapToLinear:Z

    goto :goto_0

    .line 607
    :cond_1
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    .line 608
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->updateWrapStateByContent()V

    .line 609
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->postInvalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public smoothScrollToValue(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toValue"
        }
    .end annotation

    .line 621
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->smoothScrollToValue(IIZ)V

    return-void
.end method

.method public smoothScrollToValue(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromValue",
            "toValue"
        }
    .end annotation

    const/4 v0, 0x1

    .line 645
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->smoothScrollToValue(IIZ)V

    return-void
.end method

.method public smoothScrollToValue(IIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromValue",
            "toValue",
            "needRespond"
        }
    .end annotation

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":fromValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",toValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mWrapSelectorWheel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mWrapSelectorWheelCheck:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValuePickerView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxValue:I

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->refineValueByLimit(IIIZ)I

    move-result p1

    .line 663
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMinValue:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mMaxValue:I

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-direct {p0, p2, v0, v1, v3}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->refineValueByLimit(IIIZ)I

    move-result p2

    .line 665
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v0, :cond_4

    sub-int v0, p2, p1

    .line 667
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getOneRecycleSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    neg-int v2, v1

    if-lt v0, v2, :cond_2

    if-ge v1, v0, :cond_5

    .line 669
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getOneRecycleSize()I

    move-result v1

    if-lez v0, :cond_3

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    sub-int v0, p2, p1

    .line 674
    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->setValue(I)V

    if-ne p1, p2, :cond_6

    .line 676
    invoke-virtual {p0, v4}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->setEnabled(Z)V

    return-void

    .line 679
    :cond_6
    invoke-direct {p0, v0, p3}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->scrollByIndexSmoothly(IZ)V

    return-void
.end method

.method public smoothScrollToValue(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "toValue",
            "needRespond"
        }
    .end annotation

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":toValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mItemHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValuePickerView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mItemHeight:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 640
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->setEnabled(Z)V

    .line 641
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getValue()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->smoothScrollToValue(IIZ)V

    return-void
.end method

.method public smoothScrollToValueFromUser(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toValue"
        }
    .end annotation

    const/4 v0, 0x1

    .line 625
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mIsFromUser:Z

    .line 626
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getValue()I

    move-result v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->smoothScrollToValue(IIZ)V

    return-void
.end method

.method public stopScrolling()V
    .locals 7

    .line 1605
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    if-eqz v0, :cond_0

    .line 1606
    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1607
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroidx/core/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 1608
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    .line 1609
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public stopScrollingAndCorrectPosition()V
    .locals 4

    .line 1615
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->stopRefreshing()V

    .line 1616
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->stopScrolling()V

    .line 1617
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->mHandlerInNewThread:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1618
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v2, v2, v3}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->getMsg(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
