.class public Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;
.super Lcom/xiaopeng/xui/widget/XViewGroup;
.source "XSmartRefreshLayout.java"

# interfaces
.implements Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$MyDecelerateInterpolator;,
        Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;,
        Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;,
        Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;,
        Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$FlingRunnable;
    }
.end annotation


# static fields
.field protected static sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

.field protected static sFooterCreator:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshFooterCreator;

.field protected static sHeaderCreator:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshHeaderCreator;

.field protected static sRefreshInitializer:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshInitializer;


# instance fields
.field protected animationRunnable:Ljava/lang/Runnable;

.field protected mAttachedToWindow:Z

.field protected mCurrentVelocity:I

.field protected mDisableContentWhenLoading:Z

.field protected mDisableContentWhenRefresh:Z

.field protected mDragDirection:C

.field protected mDragRate:F

.field protected mEnableAutoLoadMore:Z

.field protected mEnableClipFooterWhenFixedBehind:Z

.field protected mEnableClipHeaderWhenFixedBehind:Z

.field protected mEnableDisallowIntercept:Z

.field protected mEnableFooterFollowWhenNoMoreData:Z

.field protected mEnableFooterTranslationContent:Z

.field protected mEnableHeaderTranslationContent:Z

.field protected mEnableLoadMore:Z

.field protected mEnableLoadMoreWhenContentNotFull:Z

.field protected mEnableNestedScrolling:Z

.field protected mEnableOverScrollBounce:Z

.field protected mEnableOverScrollDrag:Z

.field protected mEnablePreviewInEditMode:Z

.field protected mEnablePureScrollMode:Z

.field protected mEnableRefresh:Z

.field protected mEnableScrollContentWhenLoaded:Z

.field protected mEnableScrollContentWhenRefreshed:Z

.field protected mFalsifyEvent:Landroid/view/MotionEvent;

.field protected mFixedFooterViewId:I

.field protected mFixedHeaderViewId:I

.field protected mFloorDuration:I

.field protected mFooterBackgroundColor:I

.field protected mFooterHeight:I

.field protected mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

.field protected mFooterInsetStart:I

.field protected mFooterLocked:Z

.field protected mFooterMaxDragRate:F

.field protected mFooterNeedTouchEventWhenLoading:Z

.field protected mFooterNoMoreData:Z

.field protected mFooterNoMoreDataEffective:Z

.field protected mFooterTranslationViewId:I

.field protected mFooterTriggerRate:F

.field protected mHandler:Landroid/os/Handler;

.field protected mHeaderBackgroundColor:I

.field protected mHeaderHeight:I

.field protected mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

.field protected mHeaderInsetStart:I

.field protected mHeaderMaxDragRate:F

.field protected mHeaderNeedTouchEventWhenRefreshing:Z

.field protected mHeaderTranslationViewId:I

.field protected mHeaderTriggerRate:F

.field protected mIsBeingDragged:Z

.field protected mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

.field protected mLastOpenTime:J

.field protected mLastSpinner:I

.field protected mLastTouchX:F

.field protected mLastTouchY:F

.field protected mLoadMoreListener:Lcom/scwang/smart/refresh/layout/listener/OnLoadMoreListener;

.field protected mManualFooterTranslationContent:Z

.field protected mManualHeaderTranslationContent:Z

.field protected mManualLoadMore:Z

.field protected mMaximumVelocity:I

.field protected mMinimumVelocity:I

.field protected mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

.field protected mNestedInProgress:Z

.field protected mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

.field protected mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mParentOffsetInWindow:[I

.field protected mPrimaryColors:[I

.field protected mReboundDuration:I

.field protected mReboundInterpolator:Landroid/view/animation/Interpolator;

.field protected mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

.field protected mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

.field protected mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

.field protected mRefreshListener:Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;

.field protected mScreenHeightPixels:I

.field protected mScrollBoundaryDecider:Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;

.field protected mScroller:Landroid/widget/Scroller;

.field protected mSpinner:I

.field protected mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

.field protected mSuperDispatchTouchEvent:Z

.field protected mTotalUnconsumed:I

.field protected mTouchSlop:I

.field protected mTouchSpinner:I

.field protected mTouchX:F

.field protected mTouchY:F

.field protected mTwoLevelBottomPullUpToCloseRate:F

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mVerticalPermit:Z

.field protected mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

.field protected reboundAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 210
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sFooterCreator:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshFooterCreator;

    .line 212
    sput-object v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sHeaderCreator:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshHeaderCreator;

    .line 214
    sput-object v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sRefreshInitializer:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshInitializer;

    .line 216
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    sput-object v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    const/16 v0, 0x12c

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFloorDuration:I

    .line 89
    const/16 v0, 0x15e

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    .line 95
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragRate:F

    .line 96
    const/16 v0, 0x6e

    iput-char v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragDirection:C

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedHeaderViewId:I

    .line 101
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedFooterViewId:I

    .line 102
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTranslationViewId:I

    .line 103
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTranslationViewId:I

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    .line 116
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    .line 118
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    .line 119
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    .line 120
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterTranslationContent:Z

    .line 121
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    .line 122
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePreviewInEditMode:Z

    .line 123
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollBounce:Z

    .line 124
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    .line 125
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableAutoLoadMore:Z

    .line 126
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePureScrollMode:Z

    .line 127
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    .line 128
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    .line 129
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    .line 130
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableNestedScrolling:Z

    .line 131
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenRefresh:Z

    .line 132
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenLoading:Z

    .line 133
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    .line 134
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    .line 136
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualLoadMore:Z

    .line 137
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualHeaderTranslationContent:Z

    .line 138
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualFooterTranslationContent:Z

    .line 151
    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mParentOffsetInWindow:[I

    .line 152
    new-instance v3, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v3, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    .line 153
    new-instance v3, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v3, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

    .line 159
    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 161
    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 166
    const/high16 v3, 0x40a00000    # 5.0f

    iput v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    .line 167
    iput v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    .line 168
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    .line 169
    iput v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    .line 171
    const v3, 0x3e2aaaab

    iput v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTwoLevelBottomPullUpToCloseRate:F

    .line 180
    new-instance v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;)V

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 186
    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 195
    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 197
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastOpenTime:J

    .line 199
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderBackgroundColor:I

    .line 200
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterBackgroundColor:I

    .line 207
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    .line 840
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVerticalPermit:Z

    .line 871
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 227
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 229
    .local v4, "configuration":Landroid/view/ViewConfiguration;
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    .line 230
    new-instance v5, Landroid/widget/Scroller;

    invoke-direct {v5, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    .line 231
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScreenHeightPixels:I

    .line 233
    new-instance v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$MyDecelerateInterpolator;

    invoke-direct {v5, p0, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$MyDecelerateInterpolator;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$1;)V

    iput-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    .line 234
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSlop:I

    .line 235
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mMinimumVelocity:I

    .line 237
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mMaximumVelocity:I

    .line 239
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    .line 240
    invoke-static {v3}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    .line 242
    sget-object v3, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout:[I

    invoke-virtual {p1, p2, v3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 246
    .local v3, "ta":Landroid/content/res/TypedArray;
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_android_clipToPadding:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 247
    invoke-super {p0, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;->setClipToPadding(Z)V

    .line 249
    :cond_0
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_android_clipChildren:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 250
    invoke-super {p0, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;->setClipChildren(Z)V

    .line 253
    :cond_1
    sget-object v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sRefreshInitializer:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshInitializer;

    if-eqz v5, :cond_2

    .line 254
    sget-object v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sRefreshInitializer:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshInitializer;

    invoke-interface {v5, p1, p0}, Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshInitializer;->initialize(Landroid/content/Context;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    .line 257
    :cond_2
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlDragRate:I

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragRate:F

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragRate:F

    .line 258
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlHeaderMaxDragRate:I

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    .line 259
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlFooterMaxDragRate:I

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    .line 260
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlHeaderTriggerRate:I

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    .line 261
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlFooterTriggerRate:I

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    .line 262
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableRefresh:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    .line 263
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlReboundDuration:I

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    .line 264
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableLoadMore:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 265
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlHeaderHeight:I

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    .line 266
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlFooterHeight:I

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    .line 267
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlHeaderInsetStart:I

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderInsetStart:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderInsetStart:I

    .line 268
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlFooterInsetStart:I

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterInsetStart:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterInsetStart:I

    .line 269
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlDisableContentWhenRefresh:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenRefresh:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenRefresh:Z

    .line 270
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlDisableContentWhenLoading:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenLoading:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenLoading:Z

    .line 271
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableHeaderTranslationContent:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    .line 272
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableFooterTranslationContent:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterTranslationContent:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterTranslationContent:Z

    .line 273
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnablePreviewInEditMode:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePreviewInEditMode:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePreviewInEditMode:Z

    .line 274
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableAutoLoadMore:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableAutoLoadMore:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableAutoLoadMore:Z

    .line 275
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableOverScrollBounce:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollBounce:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollBounce:Z

    .line 276
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnablePureScrollMode:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePureScrollMode:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePureScrollMode:Z

    .line 277
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableScrollContentWhenLoaded:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    .line 278
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableScrollContentWhenRefreshed:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    .line 279
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableLoadMoreWhenContentNotFull:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    .line 280
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableFooterFollowWhenLoadFinished:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    .line 281
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableFooterFollowWhenNoMoreData:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    .line 282
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableClipHeaderWhenFixedBehind:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    .line 283
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableClipFooterWhenFixedBehind:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    .line 284
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableOverScrollDrag:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    .line 285
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlFixedHeaderViewId:I

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedHeaderViewId:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedHeaderViewId:I

    .line 286
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlFixedFooterViewId:I

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedFooterViewId:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedFooterViewId:I

    .line 287
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlHeaderTranslationViewId:I

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTranslationViewId:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTranslationViewId:I

    .line 288
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlFooterTranslationViewId:I

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTranslationViewId:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTranslationViewId:I

    .line 289
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableNestedScrolling:I

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableNestedScrolling:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableNestedScrolling:Z

    .line 290
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableNestedScrolling:Z

    invoke-virtual {v5, v6}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 292
    iget-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualLoadMore:Z

    if-nez v5, :cond_4

    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableLoadMore:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    move v5, v0

    goto :goto_1

    :cond_4
    :goto_0
    move v5, v1

    :goto_1
    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualLoadMore:Z

    .line 293
    iget-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualHeaderTranslationContent:Z

    if-nez v5, :cond_6

    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableHeaderTranslationContent:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    move v5, v0

    goto :goto_3

    :cond_6
    :goto_2
    move v5, v1

    :goto_3
    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualHeaderTranslationContent:Z

    .line 294
    iget-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualFooterTranslationContent:Z

    if-nez v5, :cond_8

    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableFooterTranslationContent:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    move v5, v0

    goto :goto_5

    :cond_8
    :goto_4
    move v5, v1

    :goto_5
    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualFooterTranslationContent:Z

    .line 295
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlHeaderHeight:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    goto :goto_6

    :cond_9
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    :goto_6
    iput-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 296
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlFooterHeight:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    goto :goto_7

    :cond_a
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    :goto_7
    iput-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 298
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlAccentColor:I

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 299
    .local v5, "accentColor":I
    sget v6, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlPrimaryColor:I

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 300
    .local v6, "primaryColor":I
    if-eqz v6, :cond_c

    .line 301
    if-eqz v5, :cond_b

    .line 302
    new-array v2, v2, [I

    aput v6, v2, v0

    aput v5, v2, v1

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    goto :goto_8

    .line 304
    :cond_b
    new-array v2, v1, [I

    aput v6, v2, v0

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    goto :goto_8

    .line 306
    :cond_c
    if-eqz v5, :cond_d

    .line 307
    new-array v2, v2, [I

    aput v0, v2, v0

    aput v5, v2, v1

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    .line 310
    :cond_d
    :goto_8
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePureScrollMode:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualLoadMore:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v0, :cond_e

    .line 311
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 314
    :cond_e
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 316
    return-void
.end method

.method static synthetic access$101(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 79
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$201(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 79
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$301(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 79
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$401(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 79
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$501(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 79
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$601(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 79
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public static setDefaultRefreshFooterCreator(Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshFooterCreator;)V
    .locals 0
    .param p0, "creator"    # Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshFooterCreator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3533
    sput-object p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sFooterCreator:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshFooterCreator;

    .line 3534
    return-void
.end method

.method public static setDefaultRefreshHeaderCreator(Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshHeaderCreator;)V
    .locals 0
    .param p0, "creator"    # Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshHeaderCreator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3525
    sput-object p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sHeaderCreator:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshHeaderCreator;

    .line 3526
    return-void
.end method

.method public static setDefaultRefreshInitializer(Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshInitializer;)V
    .locals 0
    .param p0, "initializer"    # Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshInitializer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3541
    sput-object p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sRefreshInitializer:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshInitializer;

    .line 3542
    return-void
.end method


# virtual methods
.method protected animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "endSpinner"    # I
    .param p2, "startDelay"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p4, "duration"    # I

    .line 1535
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    .line 1536
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1538
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1539
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 1541
    :cond_0
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1542
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 1543
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1544
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1545
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1575
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1607
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1609
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1610
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    return-object v0

    .line 1612
    :cond_1
    return-object v1
.end method

.method protected animSpinnerBounce(F)V
    .locals 3
    .param p1, "velocity"    # F

    .line 1620
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    .line 1621
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_1

    .line 1622
    :cond_0
    new-instance v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-direct {v0, p0, p1, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 1623
    :cond_1
    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 1624
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 1625
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_4

    .line 1626
    :cond_3
    new-instance v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    invoke-direct {v0, p0, p1, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 1627
    :cond_4
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-eqz v0, :cond_5

    .line 1628
    new-instance v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1631
    :cond_5
    :goto_0
    return-void
.end method

.method public autoLoadMore()Z
    .locals 3

    .line 3427
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->autoLoadMore(IIFZ)Z

    move-result v0

    return v0
.end method

.method public autoLoadMore(I)Z
    .locals 3
    .param p1, "delayed"    # I

    .line 3439
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->autoLoadMore(IIFZ)Z

    move-result v0

    return v0
.end method

.method public autoLoadMore(IIFZ)Z
    .locals 4
    .param p1, "delayed"    # I
    .param p2, "duration"    # I
    .param p3, "dragRate"    # F
    .param p4, "animationOnly"    # Z

    .line 3464
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v0, :cond_1

    .line 3465
    new-instance v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;IFZ)V

    .line 3508
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3509
    if-lez p1, :cond_0

    .line 3510
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3512
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3514
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 3516
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public autoLoadMoreAnimationOnly()Z
    .locals 4

    .line 3450
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->autoLoadMore(IIFZ)Z

    move-result v0

    return v0
.end method

.method public autoRefresh()Z
    .locals 5

    .line 3324
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mAttachedToWindow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    :goto_0
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->autoRefresh(IIFZ)Z

    move-result v0

    return v0
.end method

.method public autoRefresh(I)Z
    .locals 3
    .param p1, "delayed"    # I

    .line 3336
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->autoRefresh(IIFZ)Z

    move-result v0

    return v0
.end method

.method public autoRefresh(IIFZ)Z
    .locals 4
    .param p1, "delayed"    # I
    .param p2, "duration"    # I
    .param p3, "dragRate"    # F
    .param p4, "animationOnly"    # Z

    .line 3363
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3364
    new-instance v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;IFZ)V

    .line 3407
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3408
    if-lez p1, :cond_0

    .line 3409
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3411
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3413
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 3415
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public autoRefreshAnimationOnly()Z
    .locals 4

    .line 3348
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    :goto_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->autoRefresh(IIFZ)Z

    move-result v0

    return v0
.end method

.method public closeHeaderOrFooter()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 2

    .line 3289
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1

    .line 3291
    :cond_0
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 3293
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_2

    .line 3294
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishRefresh()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    goto :goto_0

    .line 3295
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_3

    .line 3296
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishLoadMore()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    goto :goto_0

    .line 3303
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_4

    .line 3304
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3306
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v0, :cond_5

    .line 3307
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3309
    :cond_5
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3313
    :goto_0
    return-object p0
.end method

.method public computeScroll()V
    .locals 4

    .line 849
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 850
    .local v0, "lastCurY":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 851
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    .line 852
    .local v1, "finalY":I
    const/4 v2, 0x1

    if-gez v1, :cond_1

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->canRefresh()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    if-lez v1, :cond_6

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz v3, :cond_6

    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    .line 853
    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 854
    :cond_3
    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVerticalPermit:Z

    if-eqz v3, :cond_5

    .line 856
    if-lez v1, :cond_4

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v3

    neg-float v3, v3

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v3

    .line 857
    .local v3, "velocity":F
    :goto_0
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animSpinnerBounce(F)V

    .line 859
    .end local v3    # "velocity":F
    :cond_5
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 861
    :cond_6
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVerticalPermit:Z

    .line 862
    move-object v2, p0

    .line 863
    .local v2, "thisView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 866
    .end local v1    # "finalY":I
    .end local v2    # "thisView":Landroid/view/View;
    :cond_7
    :goto_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "e"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 885
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    .line 886
    .local v10, "action":I
    const/4 v2, 0x6

    if-ne v10, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v13, v3

    .line 887
    .local v13, "pointerUp":Z
    if-eqz v13, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    move v14, v3

    .line 890
    .local v14, "skipIndex":I
    const/4 v3, 0x0

    .local v3, "sumX":F
    const/4 v4, 0x0

    .line 891
    .local v4, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    .line 892
    .local v15, "count":I
    move/from16 v16, v3

    move/from16 v17, v4

    const/4 v3, 0x0

    .end local v4    # "sumY":F
    .local v3, "i":I
    .local v16, "sumX":F
    .local v17, "sumY":F
    :goto_2
    if-ge v3, v15, :cond_3

    .line 893
    if-ne v14, v3, :cond_2

    goto :goto_3

    .line 894
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float v16, v16, v4

    .line 895
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float v17, v17, v4

    .line 892
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 897
    .end local v3    # "i":I
    :cond_3
    if-eqz v13, :cond_4

    add-int/lit8 v3, v15, -0x1

    goto :goto_4

    :cond_4
    move v3, v15

    :goto_4
    move v9, v3

    .line 898
    .local v9, "div":I
    int-to-float v3, v9

    div-float v8, v16, v3

    .line 899
    .local v8, "touchX":F
    int-to-float v3, v9

    div-float v7, v17, v3

    .line 900
    .local v7, "touchY":F
    if-eq v10, v2, :cond_5

    const/4 v2, 0x5

    if-ne v10, v2, :cond_6

    :cond_5
    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_6

    .line 902
    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    sub-float v3, v7, v3

    add-float/2addr v2, v3

    iput v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    .line 904
    :cond_6
    iput v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    .line 905
    iput v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    .line 913
    move-object v6, v0

    .line 914
    .local v6, "thisView":Landroid/view/View;
    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v2, :cond_a

    .line 915
    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    .line 916
    .local v2, "totalUnconsumed":I
    invoke-super/range {p0 .. p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 917
    .local v3, "ret":Z
    const/4 v4, 0x2

    if-ne v10, v4, :cond_9

    .line 918
    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    if-ne v2, v4, :cond_9

    .line 919
    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    float-to-int v4, v4

    .line 920
    .local v4, "offsetX":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 921
    .local v5, "offsetMax":I
    iget v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    if-nez v5, :cond_7

    const/4 v12, 0x1

    goto :goto_5

    :cond_7
    move v12, v5

    :goto_5
    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 922
    .local v11, "percentX":F
    iget-boolean v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v12}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v12

    if-eqz v12, :cond_8

    iget v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-lez v12, :cond_8

    iget-object v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v12, :cond_8

    iget-object v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v12}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->isSupportHorizontalDrag()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 923
    iget-object v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v12, v11, v4, v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onHorizontalDrag(FII)V

    goto :goto_6

    .line 924
    :cond_8
    iget-boolean v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v12}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v12

    if-eqz v12, :cond_9

    iget v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v12, :cond_9

    iget-object v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v12}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->isSupportHorizontalDrag()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 925
    iget-object v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v12, v11, v4, v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onHorizontalDrag(FII)V

    .line 929
    .end local v4    # "offsetX":I
    .end local v5    # "offsetMax":I
    .end local v11    # "percentX":F
    :cond_9
    :goto_6
    return v3

    .line 930
    .end local v2    # "totalUnconsumed":I
    .end local v3    # "ret":Z
    :cond_a
    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    if-nez v2, :cond_c

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v2, :cond_c

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz v2, :cond_b

    goto :goto_8

    .line 934
    :cond_b
    :goto_7
    move-object v5, v6

    move v2, v7

    move/from16 v19, v9

    move/from16 v33, v10

    move v10, v8

    goto/16 :goto_16

    .line 930
    :cond_c
    :goto_8
    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderNeedTouchEventWhenRefreshing:Z

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    if-eqz v2, :cond_e

    :cond_d
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    if-nez v2, :cond_b

    :cond_e
    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNeedTouchEventWhenLoading:Z

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v2, :cond_f

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    if-eqz v2, :cond_10

    :cond_f
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v2, :cond_10

    goto :goto_7

    .line 937
    :cond_10
    invoke-virtual {v0, v10}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->interceptAnimatorByAction(I)Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v2, :cond_38

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v2, v3, :cond_12

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenLoading:Z

    if-nez v2, :cond_11

    goto :goto_a

    .line 940
    :cond_11
    :goto_9
    move-object v5, v6

    move v2, v7

    move/from16 v19, v9

    move/from16 v33, v10

    move v10, v8

    goto/16 :goto_15

    .line 937
    :cond_12
    :goto_a
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v2, v3, :cond_13

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenRefresh:Z

    if-eqz v2, :cond_13

    goto :goto_9

    .line 948
    :cond_13
    const/16 v3, 0x68

    packed-switch v10, :pswitch_data_0

    .line 1073
    move-object v5, v6

    move v2, v7

    move/from16 v19, v9

    move/from16 v33, v10

    move v10, v8

    .end local v6    # "thisView":Landroid/view/View;
    .end local v7    # "touchY":F
    .end local v8    # "touchX":F
    .end local v9    # "div":I
    .local v2, "touchY":F
    .local v5, "thisView":Landroid/view/View;
    .local v10, "touchX":F
    .local v19, "div":I
    .local v33, "action":I
    goto/16 :goto_14

    .line 977
    .end local v2    # "touchY":F
    .end local v5    # "thisView":Landroid/view/View;
    .end local v19    # "div":I
    .end local v33    # "action":I
    .restart local v6    # "thisView":Landroid/view/View;
    .restart local v7    # "touchY":F
    .restart local v8    # "touchX":F
    .restart local v9    # "div":I
    .local v10, "action":I
    :pswitch_0
    iget v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchX:F

    sub-float v5, v8, v5

    .line 978
    .local v5, "dx":F
    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    sub-float v2, v7, v2

    .line 979
    .local v2, "dy":F
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 980
    iget-boolean v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    if-nez v11, :cond_21

    iget-boolean v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableDisallowIntercept:Z

    if-nez v11, :cond_21

    iget-char v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragDirection:C

    if-eq v11, v3, :cond_21

    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v11, :cond_21

    .line 981
    iget-char v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragDirection:C

    const/16 v12, 0x76

    if-eq v11, v12, :cond_15

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v11, v4

    if-ltz v4, :cond_14

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v4, v4, v11

    if-gez v4, :cond_14

    goto :goto_b

    .line 1004
    :cond_14
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSlop:I

    int-to-float v11, v11

    cmpl-float v4, v4, v11

    if-ltz v4, :cond_21

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v4, v4, v11

    if-lez v4, :cond_21

    iget-char v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragDirection:C

    if-eq v4, v12, :cond_21

    .line 1005
    iput-char v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragDirection:C

    goto/16 :goto_f

    .line 982
    :cond_15
    :goto_b
    iput-char v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragDirection:C

    .line 983
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_18

    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-ltz v3, :cond_17

    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v3, :cond_16

    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    if-eqz v3, :cond_18

    :cond_16
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->canRefresh()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 984
    :cond_17
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    .line 985
    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSlop:I

    int-to-float v3, v3

    sub-float v3, v7, v3

    iput v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    goto :goto_c

    .line 986
    :cond_18
    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gez v4, :cond_1c

    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gtz v3, :cond_1b

    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v3, :cond_19

    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v3, :cond_1c

    :cond_19
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v3, v4, :cond_1a

    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    if-nez v3, :cond_1b

    :cond_1a
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 987
    :cond_1b
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    .line 988
    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr v3, v7

    iput v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    .line 990
    :cond_1c
    :goto_c
    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v3, :cond_21

    .line 991
    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    sub-float v2, v7, v3

    .line 992
    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    if-eqz v3, :cond_1d

    .line 993
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 994
    invoke-super/range {p0 .. p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 996
    :cond_1d
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gtz v4, :cond_1f

    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-nez v4, :cond_1e

    const/4 v4, 0x0

    cmpl-float v11, v2, v4

    if-lez v11, :cond_1e

    goto :goto_d

    :cond_1e
    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    goto :goto_e

    :cond_1f
    :goto_d
    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    :goto_e
    invoke-interface {v3, v4}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 997
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 998
    .local v3, "parent":Landroid/view/ViewParent;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_20

    .line 1001
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1003
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_20
    nop

    .line 1008
    :cond_21
    :goto_f
    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v3, :cond_31

    .line 1009
    float-to-int v3, v2

    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSpinner:I

    add-int/2addr v3, v4

    .line 1010
    .local v3, "spinner":I
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v4, v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v4, :cond_22

    if-ltz v3, :cond_24

    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastSpinner:I

    if-ltz v4, :cond_24

    :cond_22
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v4, v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v4, :cond_30

    if-gtz v3, :cond_24

    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastSpinner:I

    if-lez v4, :cond_23

    goto :goto_10

    .line 1043
    :cond_23
    move/from16 v28, v5

    goto/16 :goto_12

    .line 1011
    :cond_24
    :goto_10
    iput v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastSpinner:I

    .line 1012
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    .line 1013
    .local v11, "time":J
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-nez v4, :cond_25

    .line 1014
    const/16 v24, 0x0

    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchX:F

    add-float v25, v4, v5

    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    const/16 v27, 0x0

    move-wide/from16 v20, v11

    move-wide/from16 v22, v11

    move/from16 v26, v4

    invoke-static/range {v20 .. v27}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 1015
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    invoke-super {v0, v4}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1017
    :cond_25
    const/16 v24, 0x2

    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchX:F

    add-float v25, v4, v5

    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    move/from16 v28, v5

    int-to-float v5, v3

    .end local v5    # "dx":F
    .local v28, "dx":F
    add-float v26, v4, v5

    const/16 v27, 0x0

    move-wide/from16 v20, v11

    move-wide/from16 v22, v11

    invoke-static/range {v20 .. v27}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    .line 1018
    .local v4, "em":Landroid/view/MotionEvent;
    invoke-super {v0, v4}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1019
    iget-boolean v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    if-eqz v5, :cond_26

    iget v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_26

    iget v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v5, :cond_26

    .line 1020
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    .line 1022
    :cond_26
    if-lez v3, :cond_28

    iget-boolean v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v5, :cond_27

    iget-boolean v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    if-eqz v5, :cond_28

    :cond_27
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->canRefresh()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1023
    iput v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    iput v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    .line 1024
    const/4 v5, 0x0

    move v3, v5

    iput v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSpinner:I

    .line 1025
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    move/from16 v29, v3

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .end local v3    # "spinner":I
    .local v29, "spinner":I
    invoke-interface {v5, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 1031
    move/from16 v3, v29

    goto :goto_11

    .line 1026
    .end local v29    # "spinner":I
    .restart local v3    # "spinner":I
    :cond_28
    if-gez v3, :cond_2a

    iget-boolean v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v5, :cond_29

    iget-boolean v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v5, :cond_2a

    :cond_29
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1027
    iput v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    iput v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    .line 1028
    const/4 v5, 0x0

    move v3, v5

    iput v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSpinner:I

    .line 1029
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    move/from16 v30, v3

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .end local v3    # "spinner":I
    .local v30, "spinner":I
    invoke-interface {v5, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 1031
    move/from16 v3, v30

    .end local v30    # "spinner":I
    .restart local v3    # "spinner":I
    :cond_2a
    :goto_11
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v5, v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v5, :cond_2b

    if-ltz v3, :cond_2c

    :cond_2b
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v5, v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v5, :cond_2e

    if-lez v3, :cond_2e

    .line 1032
    :cond_2c
    iget v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-eqz v5, :cond_2d

    .line 1033
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->moveSpinnerInfinitely(F)V

    .line 1035
    :cond_2d
    const/4 v5, 0x1

    return v5

    .line 1036
    :cond_2e
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-eqz v5, :cond_2f

    .line 1037
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 1038
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1039
    invoke-super {v0, v4}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1041
    :cond_2f
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .end local v4    # "em":Landroid/view/MotionEvent;
    .end local v11    # "time":J
    goto :goto_12

    .line 1043
    .end local v28    # "dx":F
    .restart local v5    # "dx":F
    :cond_30
    move/from16 v28, v5

    .end local v5    # "dx":F
    .restart local v28    # "dx":F
    :goto_12
    int-to-float v4, v3

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->moveSpinnerInfinitely(F)V

    .line 1044
    const/4 v4, 0x1

    return v4

    .line 1045
    .end local v3    # "spinner":I
    .end local v28    # "dx":F
    .restart local v5    # "dx":F
    :cond_31
    move/from16 v28, v5

    .end local v5    # "dx":F
    .restart local v28    # "dx":F
    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    if-eqz v3, :cond_32

    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_32

    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v3, :cond_32

    .line 1046
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    .line 1073
    .end local v6    # "thisView":Landroid/view/View;
    .end local v7    # "touchY":F
    .end local v8    # "touchX":F
    .end local v9    # "div":I
    .end local v28    # "dx":F
    .local v2, "touchY":F
    .local v5, "thisView":Landroid/view/View;
    .local v10, "touchX":F
    .restart local v19    # "div":I
    .restart local v33    # "action":I
    :cond_32
    move-object v5, v6

    move v2, v7

    move/from16 v19, v9

    move/from16 v33, v10

    move v10, v8

    goto/16 :goto_14

    .line 1050
    .end local v2    # "touchY":F
    .end local v5    # "thisView":Landroid/view/View;
    .end local v19    # "div":I
    .end local v33    # "action":I
    .restart local v6    # "thisView":Landroid/view/View;
    .restart local v7    # "touchY":F
    .restart local v8    # "touchX":F
    .restart local v9    # "div":I
    .local v10, "action":I
    :pswitch_1
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1051
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1052
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mCurrentVelocity:I

    .line 1053
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->startFlingIfNeed(F)Z

    .line 1055
    :pswitch_2
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 1056
    const/16 v2, 0x6e

    iput-char v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragDirection:C

    .line 1057
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_33

    .line 1058
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1059
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 1060
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    .line 1061
    .restart local v11    # "time":J
    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchX:F

    const/16 v18, 0x0

    move-wide v2, v11

    move/from16 v19, v4

    move-wide v4, v11

    move-object/from16 v31, v6

    move v6, v10

    .end local v6    # "thisView":Landroid/view/View;
    .local v31, "thisView":Landroid/view/View;
    move/from16 v32, v7

    move/from16 v7, v19

    .end local v7    # "touchY":F
    .local v32, "touchY":F
    move/from16 v33, v10

    move v10, v8

    move/from16 v8, v32

    .end local v8    # "touchX":F
    .local v10, "touchX":F
    .restart local v33    # "action":I
    move/from16 v19, v9

    move/from16 v9, v18

    .end local v9    # "div":I
    .restart local v19    # "div":I
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1062
    .local v2, "ec":Landroid/view/MotionEvent;
    invoke-super {v0, v2}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1063
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .end local v2    # "ec":Landroid/view/MotionEvent;
    .end local v11    # "time":J
    goto :goto_13

    .line 1065
    .end local v19    # "div":I
    .end local v31    # "thisView":Landroid/view/View;
    .end local v32    # "touchY":F
    .end local v33    # "action":I
    .restart local v6    # "thisView":Landroid/view/View;
    .restart local v7    # "touchY":F
    .restart local v8    # "touchX":F
    .restart local v9    # "div":I
    .local v10, "action":I
    :cond_33
    move-object/from16 v31, v6

    move/from16 v32, v7

    move/from16 v19, v9

    move/from16 v33, v10

    move v10, v8

    .end local v6    # "thisView":Landroid/view/View;
    .end local v7    # "touchY":F
    .end local v8    # "touchX":F
    .end local v9    # "div":I
    .local v10, "touchX":F
    .restart local v19    # "div":I
    .restart local v31    # "thisView":Landroid/view/View;
    .restart local v32    # "touchY":F
    .restart local v33    # "action":I
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->overSpinner()V

    .line 1066
    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_34

    .line 1067
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    .line 1068
    const/4 v4, 0x1

    return v4

    .line 1073
    :cond_34
    move-object/from16 v5, v31

    move/from16 v2, v32

    goto :goto_14

    .line 953
    .end local v19    # "div":I
    .end local v31    # "thisView":Landroid/view/View;
    .end local v32    # "touchY":F
    .end local v33    # "action":I
    .restart local v6    # "thisView":Landroid/view/View;
    .restart local v7    # "touchY":F
    .restart local v8    # "touchX":F
    .restart local v9    # "div":I
    .local v10, "action":I
    :pswitch_3
    move-object/from16 v31, v6

    move/from16 v32, v7

    move/from16 v19, v9

    move/from16 v33, v10

    const/4 v2, 0x0

    const/4 v4, 0x1

    move v10, v8

    .end local v6    # "thisView":Landroid/view/View;
    .end local v7    # "touchY":F
    .end local v8    # "touchX":F
    .end local v9    # "div":I
    .local v10, "touchX":F
    .restart local v19    # "div":I
    .restart local v31    # "thisView":Landroid/view/View;
    .restart local v32    # "touchY":F
    .restart local v33    # "action":I
    iput v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mCurrentVelocity:I

    .line 954
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 955
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 959
    iput v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchX:F

    .line 960
    move/from16 v2, v32

    iput v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    .line 961
    .end local v32    # "touchY":F
    .local v2, "touchY":F
    const/4 v4, 0x0

    iput v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastSpinner:I

    .line 962
    iget v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    iput v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSpinner:I

    .line 963
    iput-boolean v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    .line 964
    iput-boolean v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableDisallowIntercept:Z

    .line 966
    invoke-super/range {p0 .. p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    .line 967
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v4, v5, :cond_35

    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    move-object/from16 v5, v31

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .end local v31    # "thisView":Landroid/view/View;
    .restart local v5    # "thisView":Landroid/view/View;
    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTwoLevelBottomPullUpToCloseRate:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    cmpg-float v4, v4, v6

    if-gez v4, :cond_36

    .line 968
    iput-char v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragDirection:C

    .line 969
    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    return v3

    .line 971
    .end local v5    # "thisView":Landroid/view/View;
    .restart local v31    # "thisView":Landroid/view/View;
    :cond_35
    move-object/from16 v5, v31

    .end local v31    # "thisView":Landroid/view/View;
    .restart local v5    # "thisView":Landroid/view/View;
    :cond_36
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v3, :cond_37

    .line 973
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v3, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->onActionDown(Landroid/view/MotionEvent;)V

    .line 975
    :cond_37
    const/4 v3, 0x1

    return v3

    .line 1073
    :goto_14
    invoke-super/range {p0 .. p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 940
    .end local v2    # "touchY":F
    .end local v5    # "thisView":Landroid/view/View;
    .end local v19    # "div":I
    .end local v33    # "action":I
    .restart local v6    # "thisView":Landroid/view/View;
    .restart local v7    # "touchY":F
    .restart local v8    # "touchX":F
    .restart local v9    # "div":I
    .local v10, "action":I
    :cond_38
    move-object v5, v6

    move v2, v7

    move/from16 v19, v9

    move/from16 v33, v10

    move v10, v8

    .end local v6    # "thisView":Landroid/view/View;
    .end local v7    # "touchY":F
    .end local v8    # "touchX":F
    .end local v9    # "div":I
    .restart local v2    # "touchY":F
    .restart local v5    # "thisView":Landroid/view/View;
    .local v10, "touchX":F
    .restart local v19    # "div":I
    .restart local v33    # "action":I
    :goto_15
    const/4 v3, 0x0

    return v3

    .line 934
    .end local v2    # "touchY":F
    .end local v5    # "thisView":Landroid/view/View;
    .end local v19    # "div":I
    .end local v33    # "action":I
    .restart local v6    # "thisView":Landroid/view/View;
    .restart local v7    # "touchY":F
    .restart local v8    # "touchX":F
    .restart local v9    # "div":I
    .local v10, "action":I
    :cond_39
    move-object v5, v6

    move v2, v7

    move/from16 v19, v9

    move/from16 v33, v10

    move v10, v8

    .end local v6    # "thisView":Landroid/view/View;
    .end local v7    # "touchY":F
    .end local v8    # "touchX":F
    .end local v9    # "div":I
    .restart local v2    # "touchY":F
    .restart local v5    # "thisView":Landroid/view/View;
    .local v10, "touchX":F
    .restart local v19    # "div":I
    .restart local v33    # "action":I
    :goto_16
    invoke-super/range {p0 .. p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 772
    move-object v0, p0

    .line 773
    .local v0, "thisView":Landroid/view/View;
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 774
    .local v1, "contentView":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p2, :cond_8

    .line 775
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 778
    :cond_1
    if-eqz v1, :cond_8

    .line 779
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    add-int/2addr v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 780
    .local v2, "bottom":I
    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_4

    .line 781
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderBackgroundColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 782
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v4

    iget-boolean v4, v4, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v4, :cond_2

    .line 783
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    goto :goto_1

    .line 784
    :cond_2
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v4

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v4, v5, :cond_3

    .line 785
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    add-int/2addr v4, v5

    .line 787
    .end local v2    # "bottom":I
    .local v4, "bottom":I
    move v2, v4

    .end local v4    # "bottom":I
    .restart local v2    # "bottom":I
    :cond_3
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v6, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v7, v4

    int-to-float v8, v2

    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 795
    :cond_4
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v4

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-eq v4, v5, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v4

    iget-boolean v4, v4, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v4, :cond_8

    .line 796
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 797
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 798
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 799
    .local v3, "ret":Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 800
    return v3

    .line 776
    .end local v2    # "bottom":I
    .end local v3    # "ret":Z
    :cond_7
    :goto_2
    return v3

    .line 804
    :cond_8
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p2, :cond_10

    .line 805
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-nez v2, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_4

    .line 808
    :cond_9
    if-eqz v1, :cond_10

    .line 809
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    add-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 810
    .local v2, "top":I
    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_c

    .line 811
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 812
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v3

    iget-boolean v3, v3, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v3, :cond_a

    .line 813
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_3

    .line 814
    :cond_a
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v3, v4, :cond_b

    .line 815
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    add-int/2addr v3, v4

    .line 817
    .end local v2    # "top":I
    .local v3, "top":I
    move v2, v3

    .end local v3    # "top":I
    .restart local v2    # "top":I
    :cond_b
    :goto_3
    const/4 v4, 0x0

    int-to-float v5, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v7, v3

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 825
    :cond_c
    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-eq v3, v4, :cond_e

    :cond_d
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v3

    iget-boolean v3, v3, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v3, :cond_10

    .line 826
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 827
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 828
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 829
    .local v3, "ret":Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 830
    return v3

    .line 806
    .end local v2    # "top":I
    .end local v3    # "ret":Z
    :cond_f
    :goto_4
    return v3

    .line 835
    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    return v2
.end method

.method public finishLoadMore()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1

    .line 2945
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishLoadMore(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishLoadMore(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 2
    .param p1, "delayed"    # I

    .line 3104
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishLoadMore(IZZ)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 6
    .param p1, "delayed"    # I
    .param p2, "success"    # Z
    .param p3, "noMoreData"    # Z

    .line 3129
    shr-int/lit8 v0, p1, 0x10

    .line 3130
    .local v0, "more":I
    shl-int/lit8 v1, p1, 0x10

    shr-int/lit8 v1, v1, 0x10

    .line 3131
    .local v1, "delay":I
    new-instance v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    invoke-direct {v2, p0, v0, p3, p2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;IZZ)V

    .line 3260
    .local v2, "runnable":Ljava/lang/Runnable;
    if-lez v1, :cond_0

    .line 3261
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long v4, v1

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3263
    :cond_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 3265
    :goto_0
    return-object p0
.end method

.method public finishLoadMore(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 5
    .param p1, "success"    # Z

    .line 3115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v0, v2

    .line 3116
    .local v0, "passTime":J
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    long-to-int v3, v0

    const/16 v4, 0x12c

    rsub-int v3, v3, 0x12c

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p0, v3, p1, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v2

    return-object v2
.end method

.method public finishLoadMoreWithNoMoreData()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 5

    .line 3275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v0, v2

    .line 3276
    .local v0, "passTime":J
    long-to-int v2, v0

    const/16 v3, 0x12c

    rsub-int v2, v2, 0x12c

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v2

    return-object v2
.end method

.method public finishRefresh()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1

    .line 2935
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishRefresh(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishRefresh(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 2
    .param p1, "delayed"    # I

    .line 2956
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 6
    .param p1, "delayed"    # I
    .param p2, "success"    # Z
    .param p3, "noMoreData"    # Ljava/lang/Boolean;

    .line 2986
    shr-int/lit8 v0, p1, 0x10

    .line 2987
    .local v0, "more":I
    shl-int/lit8 v1, p1, 0x10

    shr-int/lit8 v1, v1, 0x10

    .line 2988
    .local v1, "delay":I
    new-instance v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;

    invoke-direct {v2, p0, v0, p3, p2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;ILjava/lang/Boolean;Z)V

    .line 3077
    .local v2, "runnable":Ljava/lang/Runnable;
    if-lez v1, :cond_0

    .line 3078
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long v4, v1

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3080
    :cond_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 3082
    :goto_0
    return-object p0
.end method

.method public finishRefresh(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 5
    .param p1, "success"    # Z

    .line 2967
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2968
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v1, v3

    .line 2969
    .local v1, "passTime":J
    long-to-int v3, v1

    const/16 v4, 0x12c

    rsub-int v3, v3, 0x12c

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    .line 2970
    .local v0, "delayed":I
    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v3, v4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v3

    return-object v3

    .line 2972
    .end local v0    # "delayed":I
    .end local v1    # "passTime":J
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishRefreshWithNoMoreData()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 5

    .line 3092
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v0, v2

    .line 3093
    .local v0, "passTime":J
    long-to-int v2, v0

    const/16 v3, 0x12c

    rsub-int v2, v2, 0x12c

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v2

    return-object v2
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1815
    move-object v0, p0

    .line 1816
    .local v0, "thisView":Landroid/view/View;
    new-instance v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v1
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2775
    return-object p0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1853
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getRefreshFooter()Lcom/scwang/smart/refresh/layout/api/RefreshFooter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2742
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v0, v0, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    check-cast v0, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRefreshHeader()Lcom/scwang/smart/refresh/layout/api/RefreshHeader;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2753
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v0, v0, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    check-cast v0, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getState()Lcom/scwang/smart/refresh/layout/constant/RefreshState;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2764
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    return-object v0
.end method

.method protected interceptAnimatorByAction(I)Z
    .locals 5
    .param p1, "action"    # I

    .line 1153
    const/4 v0, 0x1

    if-nez p1, :cond_5

    .line 1154
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1155
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v1, v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v1, v3, :cond_0

    goto :goto_1

    .line 1158
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v1, v3, :cond_1

    .line 1159
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v1, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto :goto_0

    .line 1160
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v1, v3, :cond_2

    .line 1161
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v1, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 1163
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1164
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1165
    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 1156
    :cond_3
    :goto_1
    return v0

    .line 1167
    :cond_4
    :goto_2
    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1169
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method protected isEnableRefreshOrLoadMore(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .line 1388
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePureScrollMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "internal"    # Lcom/scwang/smart/refresh/layout/api/RefreshComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1378
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePureScrollMode:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v0

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isLoading()Z
    .locals 2

    .line 3561
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1979
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableNestedScrolling:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRefreshing()Z
    .locals 2

    .line 3552
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected moveSpinnerInfinitely(F)V
    .locals 19
    .param p1, "spinner"    # F

    move-object/from16 v0, p0

    .line 1695
    move-object v1, v0

    .line 1696
    .local v1, "thisView":Landroid/view/View;
    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedInProgress:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    if-nez v2, :cond_0

    cmpg-float v4, p1, v3

    if-gez v4, :cond_0

    .line 1697
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1701
    const/4 v2, 0x0

    .line 1701
    .end local p1    # "spinner":F
    .local v2, "spinner":F
    goto :goto_0

    .line 1724
    .end local v2    # "spinner":F
    .restart local p1    # "spinner":F
    :cond_0
    move/from16 v2, p1

    .line 1724
    .end local p1    # "spinner":F
    .restart local v2    # "spinner":F
    :goto_0
    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScreenHeightPixels:I

    mul-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    const/4 v5, 0x0

    if-lez v4, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    sget v4, Lcom/scwang/smart/refresh/layout/kernel/R$id;->srl_tag:I

    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    iget v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScreenHeightPixels:I

    int-to-float v6, v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v6, v7

    cmpg-float v4, v4, v6

    if-gez v4, :cond_1

    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    iget v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScreenHeightPixels:I

    int-to-float v6, v6

    const/high16 v7, 0x41800000    # 16.0f

    div-float/2addr v6, v7

    cmpg-float v4, v4, v6

    if-gez v4, :cond_1

    .line 1725
    const-string/jumbo v4, "\u4f60\u8fd9\u4e48\u6b7b\u62c9\uff0c\u81e3\u59be\u505a\u4e0d\u5230\u554a\uff01"

    .line 1726
    .local v4, "egg":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1727
    sget v6, Lcom/scwang/smart/refresh/layout/kernel/R$id;->srl_tag:I

    invoke-virtual {v1, v6, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1729
    .end local v4    # "egg":Ljava/lang/String;
    :cond_1
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    const/4 v7, 0x1

    if-ne v4, v6, :cond_2

    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    .line 1730
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    float-to-int v6, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {v4, v6, v7}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 1768
    .end local v1    # "thisView":Landroid/view/View;
    .end local v2    # "spinner":F
    .local v4, "thisView":Landroid/view/View;
    .local v18, "spinner":F
    :goto_1
    move-object v4, v1

    move/from16 v18, v2

    goto/16 :goto_e

    .line 1731
    .end local v4    # "thisView":Landroid/view/View;
    .end local v18    # "spinner":F
    .restart local v1    # "thisView":Landroid/view/View;
    .restart local v2    # "spinner":F
    :cond_2
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    const-wide/16 v8, 0x0

    const/high16 v12, 0x41200000    # 10.0f

    if-ne v4, v6, :cond_6

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_6

    .line 1732
    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_3

    .line 1733
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    float-to-int v6, v2

    invoke-interface {v4, v6, v7}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto :goto_1

    .line 1735
    :cond_3
    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float v4, v4, v12

    if-gez v4, :cond_4

    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v4, v4

    iget v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float/2addr v4, v6

    goto :goto_2

    :cond_4
    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    .line 1736
    .local v4, "maxDragHeight":F
    :goto_2
    iget v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v6, v6

    sub-float v6, v4, v6

    float-to-double v5, v6

    .line 1737
    .local v5, "M":D
    iget v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScreenHeightPixels:I

    mul-int/lit8 v12, v12, 0x4

    div-int/lit8 v12, v12, 0x3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v15, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    sub-int/2addr v12, v15

    int-to-double v13, v12

    .line 1738
    .local v13, "H":D
    iget v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v12, v12

    sub-float v12, v2, v12

    iget v15, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragRate:F

    mul-float/2addr v12, v15

    invoke-static {v3, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move/from16 v16, v4

    float-to-double v3, v12

    .line 1739
    .end local v4    # "maxDragHeight":F
    .local v3, "x":D
    .local v16, "maxDragHeight":F
    neg-double v10, v3

    cmpl-double v8, v13, v8

    if-nez v8, :cond_5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_5
    move-wide v8, v13

    :goto_3
    div-double/2addr v10, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v8, v10, v8

    mul-double/2addr v8, v5

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 1740
    .local v8, "y":D
    iget-object v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    double-to-int v11, v8

    iget v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    add-int/2addr v11, v12

    invoke-interface {v10, v11, v7}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 1741
    .end local v3    # "x":D
    .end local v5    # "M":D
    .end local v8    # "y":D
    .end local v13    # "H":D
    .end local v16    # "maxDragHeight":F
    goto :goto_1

    .line 1742
    :cond_6
    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gez v4, :cond_d

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v3, v4, :cond_9

    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v3, :cond_7

    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v3, :cond_7

    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v3, :cond_7

    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 1743
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v3, :cond_8

    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v3, :cond_8

    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 1744
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    .line 1755
    :cond_8
    move-object/from16 v17, v1

    move/from16 v18, v2

    goto/16 :goto_7

    .line 1745
    :cond_9
    :goto_4
    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_a

    .line 1746
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    float-to-int v4, v2

    invoke-interface {v3, v4, v7}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto/16 :goto_1

    .line 1748
    :cond_a
    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    cmpg-float v3, v3, v12

    if-gez v3, :cond_b

    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v3, v3

    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    mul-float/2addr v3, v4

    goto :goto_5

    :cond_b
    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    .line 1749
    .local v3, "maxDragHeight":F
    :goto_5
    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    float-to-double v4, v4

    .line 1750
    .local v4, "M":D
    iget v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScreenHeightPixels:I

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    sub-int/2addr v6, v10

    int-to-double v13, v6

    .line 1751
    .restart local v13    # "H":D
    iget v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    iget v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragRate:F

    mul-float/2addr v6, v10

    const/4 v10, 0x0

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    neg-float v6, v6

    float-to-double v10, v6

    .line 1752
    .local v10, "x":D
    move-object/from16 v17, v1

    move/from16 v18, v2

    neg-double v1, v10

    .line 1752
    .end local v1    # "thisView":Landroid/view/View;
    .end local v2    # "spinner":F
    .local v17, "thisView":Landroid/view/View;
    .restart local v18    # "spinner":F
    cmpl-double v6, v13, v8

    if-nez v6, :cond_c

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto :goto_6

    :cond_c
    move-wide v8, v13

    :goto_6
    div-double/2addr v1, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v1, v8, v1

    mul-double/2addr v1, v4

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    neg-double v1, v1

    .line 1753
    .local v1, "y":D
    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    double-to-int v8, v1

    iget v9, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    sub-int/2addr v8, v9

    invoke-interface {v6, v8, v7}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 1754
    .end local v1    # "y":D
    .end local v3    # "maxDragHeight":F
    .end local v4    # "M":D
    .end local v10    # "x":D
    .end local v13    # "H":D
    nop

    .line 1768
    move-object/from16 v4, v17

    goto/16 :goto_e

    .line 1755
    .end local v17    # "thisView":Landroid/view/View;
    .end local v18    # "spinner":F
    .local v1, "thisView":Landroid/view/View;
    .restart local v2    # "spinner":F
    :cond_d
    move-object/from16 v17, v1

    move/from16 v18, v2

    .line 1755
    .end local v1    # "thisView":Landroid/view/View;
    .end local v2    # "spinner":F
    .restart local v17    # "thisView":Landroid/view/View;
    .restart local v18    # "spinner":F
    :goto_7
    const/4 v1, 0x0

    cmpl-float v2, v18, v1

    if-ltz v2, :cond_10

    .line 1756
    iget v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float v1, v1, v12

    if-gez v1, :cond_e

    iget v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v1, v1

    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float/2addr v1, v2

    :goto_8
    float-to-double v1, v1

    goto :goto_9

    :cond_e
    iget v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    goto :goto_8

    .line 1757
    .local v1, "M":D
    :goto_9
    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScreenHeightPixels:I

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v4, v17

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1757
    .end local v17    # "thisView":Landroid/view/View;
    .local v4, "thisView":Landroid/view/View;
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v13, v3

    .line 1758
    .restart local v13    # "H":D
    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragRate:F

    mul-float v3, v3, v18

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-double v5, v3

    .line 1759
    .local v5, "x":D
    neg-double v10, v5

    cmpl-double v3, v13, v8

    if-nez v3, :cond_f

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto :goto_a

    :cond_f
    move-wide v8, v13

    :goto_a
    div-double/2addr v10, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v8, v10, v8

    mul-double/2addr v8, v1

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 1760
    .restart local v8    # "y":D
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    double-to-int v10, v8

    invoke-interface {v3, v10, v7}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 1761
    .end local v1    # "M":D
    .end local v5    # "x":D
    .end local v8    # "y":D
    .end local v13    # "H":D
    goto :goto_e

    .line 1762
    .end local v4    # "thisView":Landroid/view/View;
    .restart local v17    # "thisView":Landroid/view/View;
    :cond_10
    move-object/from16 v4, v17

    .line 1762
    .end local v17    # "thisView":Landroid/view/View;
    .restart local v4    # "thisView":Landroid/view/View;
    iget v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    cmpg-float v1, v1, v12

    if-gez v1, :cond_11

    iget v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v1, v1

    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    mul-float/2addr v1, v2

    :goto_b
    float-to-double v1, v1

    goto :goto_c

    :cond_11
    iget v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    goto :goto_b

    .line 1763
    .restart local v1    # "M":D
    :goto_c
    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScreenHeightPixels:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v13, v3

    .line 1764
    .restart local v13    # "H":D
    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragRate:F

    mul-float v3, v3, v18

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    neg-float v3, v3

    float-to-double v5, v3

    .line 1765
    .restart local v5    # "x":D
    neg-double v10, v5

    cmpl-double v3, v13, v8

    if-nez v3, :cond_12

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto :goto_d

    :cond_12
    move-wide v8, v13

    :goto_d
    div-double/2addr v10, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v8, v10, v8

    mul-double/2addr v8, v1

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    neg-double v8, v8

    .line 1766
    .restart local v8    # "y":D
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    double-to-int v10, v8

    invoke-interface {v3, v10, v7}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 1768
    .end local v1    # "M":D
    .end local v5    # "x":D
    .end local v8    # "y":D
    .end local v13    # "H":D
    :goto_e
    iget-boolean v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v1, :cond_14

    iget-boolean v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v1, :cond_14

    iget-boolean v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    cmpg-float v1, v18, v1

    if-gez v1, :cond_14

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_14

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_14

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_14

    .line 1772
    iget-boolean v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenLoading:Z

    if-eqz v1, :cond_13

    .line 1773
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1774
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    neg-int v2, v2

    invoke-interface {v1, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    .line 1776
    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setStateDirectLoading(Z)V

    .line 1780
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$5;

    invoke-direct {v2, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$5;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;)V

    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    int-to-long v5, v3

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1795
    :cond_14
    return-void
.end method

.method protected notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V
    .locals 5
    .param p1, "state"    # Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 1180
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 1181
    .local v0, "oldState":Lcom/scwang/smart/refresh/layout/constant/RefreshState;
    if-eq v0, p1, :cond_4

    .line 1182
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 1183
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 1184
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 1185
    .local v1, "refreshHeader":Lcom/scwang/smart/refresh/layout/listener/OnStateChangedListener;
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 1186
    .local v2, "refreshFooter":Lcom/scwang/smart/refresh/layout/listener/OnStateChangedListener;
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    .line 1187
    .local v3, "refreshListener":Lcom/scwang/smart/refresh/layout/listener/OnStateChangedListener;
    if-eqz v1, :cond_0

    .line 1188
    invoke-interface {v1, p0, v0, p1}, Lcom/scwang/smart/refresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Lcom/scwang/smart/refresh/layout/constant/RefreshState;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 1190
    :cond_0
    if-eqz v2, :cond_1

    .line 1191
    invoke-interface {v2, p0, v0, p1}, Lcom/scwang/smart/refresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Lcom/scwang/smart/refresh/layout/constant/RefreshState;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 1193
    :cond_1
    if-eqz v3, :cond_2

    .line 1194
    invoke-interface {v3, p0, v0, p1}, Lcom/scwang/smart/refresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Lcom/scwang/smart/refresh/layout/constant/RefreshState;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 1196
    :cond_2
    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne p1, v4, :cond_3

    .line 1197
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    .line 1199
    .end local v1    # "refreshHeader":Lcom/scwang/smart/refresh/layout/listener/OnStateChangedListener;
    .end local v2    # "refreshFooter":Lcom/scwang/smart/refresh/layout/listener/OnStateChangedListener;
    .end local v3    # "refreshListener":Lcom/scwang/smart/refresh/layout/listener/OnStateChangedListener;
    :cond_3
    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_5

    .line 1203
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 1205
    :cond_5
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .line 382
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->onAttachedToWindow()V

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mAttachedToWindow:Z

    .line 385
    move-object v1, p0

    .line 386
    .local v1, "thisView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_c

    .line 388
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-nez v2, :cond_1

    .line 389
    sget-object v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sHeaderCreator:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshHeaderCreator;

    if-eqz v2, :cond_1

    .line 390
    sget-object v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sHeaderCreator:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshHeaderCreator;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshHeaderCreator;->createRefreshHeader(Landroid/content/Context;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    move-result-object v2

    .line 392
    .local v2, "header":Lcom/scwang/smart/refresh/layout/api/RefreshHeader;
    if-eqz v2, :cond_0

    .line 395
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smart/refresh/layout/api/RefreshHeader;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    .end local v2    # "header":Lcom/scwang/smart/refresh/layout/api/RefreshHeader;
    goto :goto_0

    .line 393
    .restart local v2    # "header":Lcom/scwang/smart/refresh/layout/api/RefreshHeader;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "DefaultRefreshHeaderCreator can not return null"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    .end local v2    # "header":Lcom/scwang/smart/refresh/layout/api/RefreshHeader;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 399
    sget-object v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sFooterCreator:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshFooterCreator;

    if-eqz v0, :cond_6

    .line 400
    sget-object v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sFooterCreator:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshFooterCreator;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshFooterCreator;->createRefreshFooter(Landroid/content/Context;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    move-result-object v0

    .line 402
    .local v0, "footer":Lcom/scwang/smart/refresh/layout/api/RefreshFooter;
    if-eqz v0, :cond_2

    .line 405
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setRefreshFooter(Lcom/scwang/smart/refresh/layout/api/RefreshFooter;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    .line 406
    .end local v0    # "footer":Lcom/scwang/smart/refresh/layout/api/RefreshFooter;
    goto :goto_2

    .line 403
    .restart local v0    # "footer":Lcom/scwang/smart/refresh/layout/api/RefreshFooter;
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "DefaultRefreshFooterCreator can not return null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 408
    .end local v0    # "footer":Lcom/scwang/smart/refresh/layout/api/RefreshFooter;
    :cond_3
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualLoadMore:Z

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move v0, v3

    nop

    :cond_5
    :goto_1
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 411
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-nez v0, :cond_a

    .line 412
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->getChildCount()I

    move-result v2

    .local v2, "len":I
    :goto_3
    if-ge v0, v2, :cond_a

    .line 413
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 414
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v5

    if-eq v4, v5, :cond_9

    :cond_7
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 415
    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v5

    if-eq v4, v5, :cond_9

    .line 416
    :cond_8
    new-instance v5, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-direct {v5, v4}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    .line 412
    .end local v4    # "view":Landroid/view/View;
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 420
    .end local v0    # "i":I
    .end local v2    # "len":I
    :cond_a
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-nez v0, :cond_b

    .line 421
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v2

    .line 422
    .local v2, "padding":I
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 423
    .local v4, "errorView":Landroid/widget/TextView;
    const v5, -0x9a00

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 424
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 425
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 426
    sget v0, Lcom/scwang/smart/refresh/layout/kernel/R$string;->srl_content_empty:I

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 427
    new-instance v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v0, v5, v5}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v4, v3, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 428
    new-instance v0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-direct {v0, v4}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 432
    .end local v2    # "padding":I
    .end local v4    # "errorView":Landroid/widget/TextView;
    :cond_b
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedHeaderViewId:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 433
    .local v0, "fixedHeaderView":Landroid/view/View;
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedFooterViewId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 435
    .local v2, "fixedFooterView":Landroid/view/View;
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;

    invoke-interface {v4, v5}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->setScrollBoundaryDecider(Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;)V

    .line 436
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    iget-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    invoke-interface {v4, v5}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->setEnableLoadMoreWhenContentNotFull(Z)V

    .line 437
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v4, v5, v0, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->setUpComponent(Lcom/scwang/smart/refresh/layout/api/RefreshKernel;Landroid/view/View;Landroid/view/View;)V

    .line 439
    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-eqz v4, :cond_c

    .line 440
    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 441
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    iput v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTranslationViewId:I

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTranslationViewId:I

    invoke-interface {v4, v3, v5, v6}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->moveSpinner(III)V

    .line 446
    .end local v0    # "fixedHeaderView":Landroid/view/View;
    .end local v2    # "fixedFooterView":Landroid/view/View;
    :cond_c
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    if-eqz v0, :cond_e

    .line 447
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_d

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    invoke-interface {v0, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->setPrimaryColors([I)V

    .line 450
    :cond_d
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_e

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    invoke-interface {v0, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->setPrimaryColors([I)V

    .line 456
    :cond_e
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v0, :cond_f

    .line 457
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 459
    :cond_f
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v0

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz v0, :cond_10

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 462
    :cond_10
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v0

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz v0, :cond_11

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 465
    :cond_11
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->vuiViewAttachedToWindow()V

    .line 466
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 7

    .line 718
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->onDetachedFromWindow()V

    .line 719
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mAttachedToWindow:Z

    .line 720
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualLoadMore:Z

    .line 721
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 722
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 723
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 724
    .local v3, "animator":Landroid/animation/Animator;
    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    .line 725
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 726
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 727
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 728
    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 736
    .end local v3    # "animator":Landroid/animation/Animator;
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v3, v4, :cond_1

    .line 737
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3, p0, v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onFinish(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Z)I

    .line 739
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v3, v4, :cond_2

    .line 740
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3, p0, v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onFinish(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Z)I

    .line 742
    :cond_2
    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-eqz v3, :cond_3

    .line 743
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v3, v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 745
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v1, v3, :cond_4

    .line 746
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 748
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 749
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 758
    :cond_5
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    .line 759
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->vuiViewDetachedFromWindow()V

    .line 760
    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    .line 328
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->onFinishInflate()V

    .line 329
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->getChildCount()I

    move-result v0

    .line 330
    .local v0, "count":I
    const/4 v1, 0x3

    if-gt v0, v1, :cond_10

    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, "contentLevel":I
    const/4 v3, -0x1

    .line 336
    .local v3, "indexContent":I
    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    .line 336
    .local v2, "i":I
    .local v5, "contentLevel":I
    :goto_0
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v2, v0, :cond_4

    .line 337
    invoke-super {p0, v2}, Lcom/xiaopeng/xui/widget/XViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 338
    .local v8, "view":Landroid/view/View;
    invoke-static {v8}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->isContentView(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-lt v5, v6, :cond_0

    if-ne v2, v7, :cond_1

    .line 339
    :cond_0
    move v3, v2

    .line 340
    const/4 v5, 0x2

    goto :goto_2

    .line 341
    :cond_1
    instance-of v6, v8, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-nez v6, :cond_3

    if-ge v5, v7, :cond_3

    .line 342
    move v3, v2

    .line 343
    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    move v5, v7

    .line 336
    .end local v8    # "view":Landroid/view/View;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    .end local v2    # "i":I
    :cond_4
    const/4 v2, -0x1

    .line 348
    .local v2, "indexHeader":I
    const/4 v8, -0x1

    .line 349
    .local v8, "indexFooter":I
    if-ltz v3, :cond_6

    .line 350
    new-instance v9, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-super {p0, v3}, Lcom/xiaopeng/xui/widget/XViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v9, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    .line 351
    if-ne v3, v7, :cond_5

    .line 352
    const/4 v2, 0x0

    .line 353
    if-ne v0, v1, :cond_6

    .line 354
    const/4 v8, 0x2

    goto :goto_3

    .line 356
    :cond_5
    if-ne v0, v6, :cond_6

    .line 357
    const/4 v8, 0x1

    .line 361
    :cond_6
    :goto_3
    move v1, v4

    .line 361
    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_f

    .line 362
    invoke-super {p0, v1}, Lcom/xiaopeng/xui/widget/XViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 363
    .local v6, "view":Landroid/view/View;
    if-eq v1, v2, :cond_c

    const/4 v9, -0x1

    if-eq v1, v8, :cond_7

    if-ne v2, v9, :cond_7

    iget-object v10, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-nez v10, :cond_7

    instance-of v10, v6, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v10, :cond_7

    goto :goto_8

    .line 365
    :cond_7
    if-eq v1, v8, :cond_8

    if-ne v8, v9, :cond_e

    instance-of v9, v6, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v9, :cond_e

    .line 366
    :cond_8
    iget-boolean v9, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v9, :cond_a

    iget-boolean v9, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualLoadMore:Z

    if-nez v9, :cond_9

    goto :goto_5

    :cond_9
    move v9, v4

    goto :goto_6

    :cond_a
    :goto_5
    move v9, v7

    :goto_6
    iput-boolean v9, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 367
    instance-of v9, v6, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v9, :cond_b

    move-object v9, v6

    check-cast v9, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    goto :goto_7

    :cond_b
    new-instance v9, Lcom/scwang/smart/refresh/layout/wrapper/RefreshFooterWrapper;

    invoke-direct {v9, v6}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshFooterWrapper;-><init>(Landroid/view/View;)V

    :goto_7
    iput-object v9, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 367
    .end local v6    # "view":Landroid/view/View;
    goto :goto_a

    .line 364
    .restart local v6    # "view":Landroid/view/View;
    :cond_c
    :goto_8
    instance-of v9, v6, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v9, :cond_d

    move-object v9, v6

    check-cast v9, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    goto :goto_9

    :cond_d
    new-instance v9, Lcom/scwang/smart/refresh/layout/wrapper/RefreshHeaderWrapper;

    invoke-direct {v9, v6}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshHeaderWrapper;-><init>(Landroid/view/View;)V

    :goto_9
    iput-object v9, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 361
    .end local v6    # "view":Landroid/view/View;
    :cond_e
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 371
    .end local v1    # "i":I
    :cond_f
    return-void

    .line 331
    .end local v2    # "indexHeader":I
    .end local v3    # "indexContent":I
    .end local v5    # "contentLevel":I
    .end local v8    # "indexFooter":I
    :cond_10
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "\u6700\u591a\u53ea\u652f\u63013\u4e2a\u5b50View\uff0cMost only support three sub view"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object/from16 v0, p0

    .line 627
    move-object v1, v0

    .line 628
    .local v1, "thisView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 629
    .local v2, "paddingLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 630
    .local v3, "paddingTop":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 632
    .local v4, "paddingBottom":I
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-super/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->getChildCount()I

    move-result v6

    .local v6, "len":I
    :goto_0
    if-ge v5, v6, :cond_16

    .line 633
    invoke-super {v0, v5}, Lcom/xiaopeng/xui/widget/XViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 635
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_15

    const-string v8, "GONE"

    sget v9, Lcom/scwang/smart/refresh/layout/kernel/R$id;->srl_tag:I

    invoke-virtual {v7, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 636
    nop

    .line 632
    move-object/from16 v20, v1

    move/from16 v18, v2

    goto/16 :goto_f

    .line 639
    :cond_0
    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v8}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v8

    if-ne v8, v7, :cond_5

    .line 640
    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v8, :cond_1

    iget-boolean v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v8}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 641
    .local v8, "isPreviewMode":Z
    :goto_1
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v11}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v11

    .line 642
    .local v11, "contentView":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 643
    .local v12, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v13, :cond_2

    move-object v13, v12

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_2
    sget-object v13, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 644
    .local v13, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_2
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v14, v2

    .line 645
    .local v14, "left":I
    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v15, v3

    .line 646
    .local v15, "top":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v9, v14, v16

    .line 647
    .local v9, "right":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v15, v16

    .line 648
    .local v16, "bottom":I
    if-eqz v8, :cond_3

    iget-boolean v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    move/from16 v18, v2

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .end local v2    # "paddingLeft":I
    .local v18, "paddingLeft":I
    invoke-virtual {v0, v10, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 649
    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    add-int/2addr v15, v2

    .line 650
    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    add-int v16, v16, v2

    goto :goto_3

    .line 653
    .end local v18    # "paddingLeft":I
    .restart local v2    # "paddingLeft":I
    :cond_3
    move/from16 v18, v2

    .end local v16    # "bottom":I
    .local v2, "bottom":I
    .restart local v18    # "paddingLeft":I
    :cond_4
    :goto_3
    move/from16 v2, v16

    invoke-virtual {v11, v14, v15, v9, v2}, Landroid/view/View;->layout(IIII)V

    .end local v2    # "bottom":I
    .end local v8    # "isPreviewMode":Z
    .end local v9    # "right":I
    .end local v11    # "contentView":Landroid/view/View;
    .end local v12    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v13    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "left":I
    .end local v15    # "top":I
    goto :goto_4

    .line 655
    .end local v18    # "paddingLeft":I
    .local v2, "paddingLeft":I
    :cond_5
    move/from16 v18, v2

    .end local v2    # "paddingLeft":I
    .restart local v18    # "paddingLeft":I
    :goto_4
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, v7, :cond_a

    .line 656
    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    .line 657
    .local v2, "isPreviewMode":Z
    :goto_5
    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v8}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v8

    .line 658
    .local v8, "headerView":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 659
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_7

    move-object v10, v9

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_6

    :cond_7
    sget-object v10, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 660
    .local v10, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_6
    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 661
    .local v11, "left":I
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderInsetStart:I

    add-int/2addr v12, v13

    .line 662
    .local v12, "top":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v11

    .line 663
    .local v13, "right":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v12

    .line 664
    .local v14, "bottom":I
    if-nez v2, :cond_8

    .line 665
    iget-object v15, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v15}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v15

    move/from16 v19, v2

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    .end local v2    # "isPreviewMode":Z
    .local v19, "isPreviewMode":Z
    if-ne v15, v2, :cond_9

    .line 666
    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    sub-int/2addr v12, v2

    .line 667
    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    sub-int/2addr v14, v2

    goto :goto_7

    .line 675
    .end local v19    # "isPreviewMode":Z
    .restart local v2    # "isPreviewMode":Z
    :cond_8
    move/from16 v19, v2

    .end local v2    # "isPreviewMode":Z
    .restart local v19    # "isPreviewMode":Z
    :cond_9
    :goto_7
    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 677
    .end local v8    # "headerView":Landroid/view/View;
    .end local v9    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11    # "left":I
    .end local v12    # "top":I
    .end local v13    # "right":I
    .end local v14    # "bottom":I
    .end local v19    # "isPreviewMode":Z
    :cond_a
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, v7, :cond_14

    .line 678
    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v2, :cond_b

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v17, 0x1

    goto :goto_8

    :cond_b
    const/16 v17, 0x0

    :goto_8
    move/from16 v2, v17

    .line 679
    .restart local v2    # "isPreviewMode":Z
    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v8}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v8

    .line 680
    .local v8, "footerView":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 681
    .restart local v9    # "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_c

    move-object v10, v9

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_9

    :cond_c
    sget-object v10, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 682
    .restart local v10    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_9
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v11}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v11

    .line 683
    .local v11, "style":Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 684
    .local v12, "left":I
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    iget v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterInsetStart:I

    sub-int/2addr v13, v14

    .line 685
    .local v13, "top":I
    iget-boolean v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v14, :cond_e

    iget-boolean v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v14, :cond_e

    iget-boolean v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v14, :cond_e

    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v14, :cond_e

    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 686
    invoke-interface {v14}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v14

    sget-object v15, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v14, v15, :cond_e

    iget-boolean v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 687
    invoke-virtual {v0, v14}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 688
    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v14}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v14

    .line 689
    .local v14, "contentView":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 690
    .local v15, "clp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v20, v1

    instance-of v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v1    # "thisView":Landroid/view/View;
    .local v20, "thisView":Landroid/view/View;
    if-eqz v1, :cond_d

    move-object v1, v15

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    .line 691
    .local v1, "topMargin":I
    :goto_a
    add-int v16, v3, v3

    add-int v16, v16, v1

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v13, v16, v17

    .end local v1    # "topMargin":I
    .end local v14    # "contentView":Landroid/view/View;
    .end local v15    # "clp":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_b

    .line 694
    .end local v20    # "thisView":Landroid/view/View;
    .local v1, "thisView":Landroid/view/View;
    :cond_e
    move-object/from16 v20, v1

    .end local v1    # "thisView":Landroid/view/View;
    .restart local v20    # "thisView":Landroid/view/View;
    :goto_b
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v11, v1, :cond_f

    .line 695
    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterInsetStart:I

    sub-int v13, v1, v14

    goto :goto_e

    .line 696
    :cond_f
    if-nez v2, :cond_12

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedFront:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-eq v11, v1, :cond_12

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v11, v1, :cond_10

    goto :goto_d

    .line 700
    :cond_10
    iget-boolean v1, v11, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v1, :cond_13

    iget v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v1, :cond_13

    .line 701
    iget-boolean v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    neg-int v1, v1

    goto :goto_c

    :cond_11
    const/4 v1, 0x0

    :goto_c
    const/4 v14, 0x0

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v13, v1

    goto :goto_e

    .line 699
    :cond_12
    :goto_d
    iget v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    sub-int/2addr v13, v1

    .line 704
    :cond_13
    :goto_e
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v12

    .line 705
    .local v1, "right":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v13

    .line 706
    .local v14, "bottom":I
    invoke-virtual {v8, v12, v13, v1, v14}, Landroid/view/View;->layout(IIII)V

    .end local v1    # "right":I
    .end local v2    # "isPreviewMode":Z
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "footerView":Landroid/view/View;
    .end local v9    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11    # "style":Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;
    .end local v12    # "left":I
    .end local v13    # "top":I
    .end local v14    # "bottom":I
    goto :goto_f

    .line 632
    .end local v20    # "thisView":Landroid/view/View;
    .local v1, "thisView":Landroid/view/View;
    :cond_14
    move-object/from16 v20, v1

    .end local v1    # "thisView":Landroid/view/View;
    .restart local v20    # "thisView":Landroid/view/View;
    goto :goto_f

    .end local v18    # "paddingLeft":I
    .end local v20    # "thisView":Landroid/view/View;
    .restart local v1    # "thisView":Landroid/view/View;
    .local v2, "paddingLeft":I
    :cond_15
    move-object/from16 v20, v1

    move/from16 v18, v2

    .end local v1    # "thisView":Landroid/view/View;
    .end local v2    # "paddingLeft":I
    .restart local v18    # "paddingLeft":I
    .restart local v20    # "thisView":Landroid/view/View;
    :goto_f
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v18

    move-object/from16 v1, v20

    goto/16 :goto_0

    .line 709
    .end local v5    # "i":I
    .end local v6    # "len":I
    .end local v18    # "paddingLeft":I
    .end local v20    # "thisView":Landroid/view/View;
    .restart local v1    # "thisView":Landroid/view/View;
    .restart local v2    # "paddingLeft":I
    :cond_16
    move-object/from16 v20, v1

    move/from16 v18, v2

    .end local v1    # "thisView":Landroid/view/View;
    .end local v2    # "paddingLeft":I
    .restart local v18    # "paddingLeft":I
    .restart local v20    # "thisView":Landroid/view/View;
    return-void
.end method

.method protected onMeasure(II)V
    .locals 31
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 478
    move/from16 v2, p2

    const/4 v3, 0x0

    .line 479
    .local v3, "minimumWidth":I
    const/4 v4, 0x0

    .line 480
    .local v4, "minimumHeight":I
    move-object v5, v0

    .line 481
    .local v5, "thisView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 483
    .local v6, "needPreview":Z
    :goto_0
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-super/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->getChildCount()I

    move-result v10

    .local v10, "len":I
    :goto_1
    if-ge v9, v10, :cond_28

    .line 484
    invoke-super {v0, v9}, Lcom/xiaopeng/xui/widget/XViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 486
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_27

    const-string v12, "GONE"

    sget v13, Lcom/scwang/smart/refresh/layout/kernel/R$id;->srl_tag:I

    invoke-virtual {v11, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 487
    nop

    .line 483
    move/from16 v30, v6

    move/from16 v19, v10

    goto/16 :goto_19

    .line 490
    :cond_1
    iget-object v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v12, :cond_11

    iget-object v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v12}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v12

    if-ne v12, v11, :cond_11

    .line 491
    iget-object v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v12}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v12

    .line 492
    .local v12, "headerView":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 493
    .local v14, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_2

    move-object v15, v14

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_2
    sget-object v15, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 494
    .local v15, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_2
    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    iget v8, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 495
    .local v7, "widthSpec":I
    iget v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    .line 497
    .local v8, "height":I
    iget-object v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget v13, v13, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->ordinal:I

    move/from16 v17, v8

    sget-object v8, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .end local v8    # "height":I
    .local v17, "height":I
    iget v8, v8, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->ordinal:I

    if-ge v13, v8, :cond_8

    .line 498
    iget v8, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v8, :cond_4

    .line 499
    iget v8, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v13, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v13

    iget v13, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v13

    .line 500
    .end local v17    # "height":I
    .restart local v8    # "height":I
    iget-object v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    move/from16 v18, v8

    sget-object v8, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .end local v8    # "height":I
    .local v18, "height":I
    invoke-virtual {v13, v8}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 501
    iget v8, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v13, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v13

    iget v13, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v13

    iput v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    .line 502
    sget-object v8, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 518
    :cond_3
    move/from16 v19, v10

    move/from16 v21, v18

    goto :goto_5

    .line 504
    .end local v18    # "height":I
    .restart local v17    # "height":I
    :cond_4
    iget v8, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v13, -0x2

    if-ne v8, v13, :cond_8

    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v8}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v8

    sget-object v13, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v8, v13, :cond_6

    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean v8, v8, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v8, :cond_5

    goto :goto_3

    .line 518
    :cond_5
    move/from16 v19, v10

    goto :goto_4

    .line 505
    :cond_6
    :goto_3
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    iget v13, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v8, v13

    iget v13, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v8, v13

    const/4 v13, 0x0

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 506
    .local v8, "maxHeight":I
    move/from16 v19, v10

    const/high16 v13, -0x80000000

    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .end local v10    # "len":I
    .local v19, "len":I
    invoke-virtual {v12, v7, v10}, Landroid/view/View;->measure(II)V

    .line 507
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 508
    .local v10, "measuredHeight":I
    if-lez v10, :cond_9

    .line 509
    const/4 v13, -0x1

    .line 510
    .end local v17    # "height":I
    .local v13, "height":I
    if-eq v10, v8, :cond_7

    move/from16 v20, v8

    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .end local v8    # "maxHeight":I
    .local v20, "maxHeight":I
    move/from16 v21, v13

    sget-object v13, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .end local v13    # "height":I
    .local v21, "height":I
    invoke-virtual {v8, v13}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 511
    iget v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v10

    iget v13, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v13

    iput v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    .line 512
    sget-object v8, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .end local v10    # "measuredHeight":I
    .end local v20    # "maxHeight":I
    goto :goto_5

    .line 518
    .end local v21    # "height":I
    .restart local v13    # "height":I
    :cond_7
    move/from16 v21, v13

    .end local v13    # "height":I
    .restart local v21    # "height":I
    goto :goto_5

    .end local v19    # "len":I
    .end local v21    # "height":I
    .local v10, "len":I
    .restart local v17    # "height":I
    :cond_8
    move/from16 v19, v10

    .end local v10    # "len":I
    .restart local v19    # "len":I
    :cond_9
    :goto_4
    move/from16 v21, v17

    .end local v17    # "height":I
    .restart local v21    # "height":I
    :cond_a
    :goto_5
    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v8}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v8

    sget-object v10, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v8, v10, :cond_c

    .line 519
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 524
    .end local v21    # "height":I
    .local v8, "height":I
    :cond_b
    :goto_6
    move/from16 v8, v21

    goto :goto_8

    .line 520
    .end local v8    # "height":I
    .restart local v21    # "height":I
    :cond_c
    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v8}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v8

    iget-boolean v8, v8, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v8, :cond_b

    if-nez v6, :cond_b

    .line 521
    iget-boolean v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v8}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v8

    if-eqz v8, :cond_d

    iget v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    goto :goto_7

    :cond_d
    const/4 v8, 0x0

    :goto_7
    const/4 v10, 0x0

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v21

    goto :goto_6

    .line 524
    .end local v21    # "height":I
    .restart local v8    # "height":I
    :goto_8
    const/4 v10, -0x1

    if-eq v8, v10, :cond_e

    .line 525
    iget v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v10, v8, v10

    iget v13, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v10, v13

    const/4 v13, 0x0

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v12, v7, v10}, Landroid/view/View;->measure(II)V

    .line 528
    :cond_e
    iget-object v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean v10, v10, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v10, :cond_10

    .line 529
    iget v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    const/high16 v13, 0x41200000    # 10.0f

    cmpg-float v10, v10, v13

    if-gez v10, :cond_f

    iget v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v10, v10

    iget v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float/2addr v10, v13

    goto :goto_9

    :cond_f
    iget v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    .line 530
    .local v10, "maxDragHeight":F
    :goto_9
    iget-object v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v13}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified()Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    move-result-object v13

    iput-object v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 531
    iget-object v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    move/from16 v22, v7

    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .end local v7    # "widthSpec":I
    .local v22, "widthSpec":I
    move/from16 v23, v8

    iget v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    .end local v8    # "height":I
    .local v23, "height":I
    move-object/from16 v24, v14

    float-to-int v14, v10

    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .local v24, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-interface {v13, v7, v8, v14}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onInitialized(Lcom/scwang/smart/refresh/layout/api/RefreshKernel;II)V

    .end local v10    # "maxDragHeight":F
    goto :goto_a

    .line 534
    .end local v22    # "widthSpec":I
    .end local v23    # "height":I
    .end local v24    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v7    # "widthSpec":I
    .restart local v8    # "height":I
    .restart local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_10
    move/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v24, v14

    .end local v7    # "widthSpec":I
    .end local v8    # "height":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v22    # "widthSpec":I
    .restart local v23    # "height":I
    .restart local v24    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_a
    if-eqz v6, :cond_12

    iget-boolean v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v7}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 535
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v3, v7

    .line 536
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v4, v7

    .end local v12    # "headerView":Landroid/view/View;
    .end local v15    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v22    # "widthSpec":I
    .end local v23    # "height":I
    .end local v24    # "lp":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_b

    .line 540
    .end local v19    # "len":I
    .local v10, "len":I
    :cond_11
    move/from16 v19, v10

    .end local v10    # "len":I
    .restart local v19    # "len":I
    :cond_12
    :goto_b
    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v7, :cond_20

    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v7}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v7

    if-ne v7, v11, :cond_20

    .line 541
    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v7}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v7

    .line 542
    .local v7, "footerView":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 543
    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_13

    move-object v10, v8

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_c

    :cond_13
    sget-object v10, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 544
    .local v10, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_c
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    iget v13, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v12, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v12

    .line 545
    .local v12, "widthSpec":I
    iget v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    .line 547
    .restart local v13    # "height":I
    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget v14, v14, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->ordinal:I

    sget-object v15, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget v15, v15, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->ordinal:I

    if-ge v14, v15, :cond_19

    .line 548
    iget v14, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v14, :cond_15

    .line 549
    iget v14, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v15

    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v13, v14, v15

    .line 550
    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    sget-object v15, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v14, v15}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 551
    iget v14, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v15

    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v15

    iput v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    .line 552
    sget-object v14, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 568
    :cond_14
    move-object/from16 v25, v8

    goto :goto_e

    .line 554
    :cond_15
    iget v14, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v15, -0x2

    if-ne v14, v15, :cond_19

    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v14}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v14

    sget-object v15, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v14, v15, :cond_16

    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean v14, v14, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v14, :cond_14

    .line 555
    :cond_16
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v14, v15

    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 556
    .local v14, "maxHeight":I
    const/high16 v15, -0x80000000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v7, v12, v15}, Landroid/view/View;->measure(II)V

    .line 557
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 558
    .local v15, "measuredHeight":I
    if-lez v15, :cond_19

    .line 559
    const/4 v13, -0x1

    .line 560
    if-eq v15, v14, :cond_17

    move-object/from16 v25, v8

    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .local v25, "lp":Landroid/view/ViewGroup$LayoutParams;
    move/from16 v26, v13

    sget-object v13, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .end local v13    # "height":I
    .local v26, "height":I
    invoke-virtual {v8, v13}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 561
    iget v8, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v15

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v13

    iput v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    .line 562
    sget-object v8, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .end local v14    # "maxHeight":I
    .end local v15    # "measuredHeight":I
    goto :goto_d

    .line 568
    .end local v25    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v26    # "height":I
    .restart local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v13    # "height":I
    :cond_17
    move-object/from16 v25, v8

    move/from16 v26, v13

    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v13    # "height":I
    .restart local v25    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v26    # "height":I
    :cond_18
    :goto_d
    move/from16 v13, v26

    goto :goto_e

    .end local v25    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v26    # "height":I
    .restart local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v13    # "height":I
    :cond_19
    move-object/from16 v25, v8

    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v25    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_e
    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v8}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v8

    sget-object v14, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v8, v14, :cond_1a

    .line 569
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    goto :goto_10

    .line 570
    :cond_1a
    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v8}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v8

    iget-boolean v8, v8, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v8, :cond_1c

    if-nez v6, :cond_1c

    .line 571
    iget-boolean v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v8}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v8

    if-eqz v8, :cond_1b

    iget v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    neg-int v8, v8

    goto :goto_f

    :cond_1b
    const/4 v8, 0x0

    :goto_f
    const/4 v14, 0x0

    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 574
    :cond_1c
    :goto_10
    const/4 v8, -0x1

    if-eq v13, v8, :cond_1d

    .line 575
    iget v8, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v8, v13, v8

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v8, v14

    const/4 v14, 0x0

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v8, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v12, v8}, Landroid/view/View;->measure(II)V

    goto :goto_11

    .line 578
    :cond_1d
    const/4 v14, 0x0

    :goto_11
    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean v8, v8, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v8, :cond_1f

    .line 579
    iget v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    const/high16 v15, 0x41200000    # 10.0f

    cmpg-float v8, v8, v15

    if-gez v8, :cond_1e

    iget v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v8, v8

    iget v15, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    mul-float/2addr v8, v15

    goto :goto_12

    :cond_1e
    iget v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    .line 580
    .local v8, "maxDragHeight":F
    :goto_12
    iget-object v15, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v15}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified()Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    move-result-object v15

    iput-object v15, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 581
    iget-object v15, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    move-object/from16 v27, v10

    iget v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    .end local v10    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .local v27, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    move/from16 v28, v12

    float-to-int v12, v8

    .end local v12    # "widthSpec":I
    .local v28, "widthSpec":I
    invoke-interface {v15, v14, v10, v12}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onInitialized(Lcom/scwang/smart/refresh/layout/api/RefreshKernel;II)V

    .end local v8    # "maxDragHeight":F
    goto :goto_13

    .line 584
    .end local v27    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v28    # "widthSpec":I
    .restart local v10    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v12    # "widthSpec":I
    :cond_1f
    move-object/from16 v27, v10

    move/from16 v28, v12

    .end local v10    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12    # "widthSpec":I
    .restart local v27    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v28    # "widthSpec":I
    :goto_13
    if-eqz v6, :cond_20

    iget-boolean v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v8}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 585
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v3, v8

    .line 586
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v4, v8

    .line 590
    .end local v7    # "footerView":Landroid/view/View;
    .end local v13    # "height":I
    .end local v25    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v27    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v28    # "widthSpec":I
    :cond_20
    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v7, :cond_26

    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v7}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v7

    if-ne v7, v11, :cond_26

    .line 591
    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v7}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v7

    .line 592
    .local v7, "contentView":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 593
    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_21

    move-object v10, v8

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_14

    :cond_21
    sget-object v10, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 594
    .restart local v10    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_14
    iget-object v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v12, :cond_22

    iget-boolean v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v12}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v12

    if-eqz v12, :cond_22

    iget-boolean v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {v0, v12, v13}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v12

    if-eqz v12, :cond_22

    const/4 v12, 0x1

    goto :goto_15

    :cond_22
    const/4 v12, 0x0

    .line 595
    .local v12, "showHeader":Z
    :goto_15
    iget-object v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v13, :cond_23

    iget-boolean v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v13}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v13

    if-eqz v13, :cond_23

    iget-boolean v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {v0, v13, v14}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v13

    if-eqz v13, :cond_23

    const/4 v13, 0x1

    goto :goto_16

    :cond_23
    const/4 v13, 0x0

    .line 596
    .local v13, "showFooter":Z
    :goto_16
    nop

    .line 597
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    add-int/2addr v14, v15

    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v14, v15

    iget v15, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 596
    invoke-static {v1, v14, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v14

    .line 598
    .local v14, "widthSpec":I
    nop

    .line 599
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v29, v11

    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .end local v11    # "child":Landroid/view/View;
    .local v29, "child":Landroid/view/View;
    add-int/2addr v15, v11

    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v11

    .line 600
    if-eqz v6, :cond_24

    if-eqz v12, :cond_24

    iget v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    goto :goto_17

    :cond_24
    const/4 v11, 0x0

    :goto_17
    add-int/2addr v15, v11

    .line 601
    if-eqz v6, :cond_25

    if-eqz v13, :cond_25

    iget v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    goto :goto_18

    :cond_25
    const/4 v11, 0x0

    :goto_18
    add-int/2addr v15, v11

    iget v11, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 598
    invoke-static {v2, v15, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 602
    .local v11, "heightSpec":I
    invoke-virtual {v7, v14, v11}, Landroid/view/View;->measure(II)V

    .line 603
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    move/from16 v30, v6

    iget v6, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .end local v6    # "needPreview":Z
    .local v30, "needPreview":Z
    add-int/2addr v15, v6

    iget v6, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v6

    add-int/2addr v3, v15

    .line 604
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v15

    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v15

    add-int/2addr v4, v6

    .end local v7    # "contentView":Landroid/view/View;
    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11    # "heightSpec":I
    .end local v12    # "showHeader":Z
    .end local v13    # "showFooter":Z
    .end local v14    # "widthSpec":I
    .end local v29    # "child":Landroid/view/View;
    goto :goto_19

    .line 483
    .end local v30    # "needPreview":Z
    .restart local v6    # "needPreview":Z
    :cond_26
    move/from16 v30, v6

    .end local v6    # "needPreview":Z
    .restart local v30    # "needPreview":Z
    goto :goto_19

    .end local v19    # "len":I
    .end local v30    # "needPreview":Z
    .restart local v6    # "needPreview":Z
    .local v10, "len":I
    :cond_27
    move/from16 v30, v6

    move/from16 v19, v10

    .end local v6    # "needPreview":Z
    .end local v10    # "len":I
    .restart local v19    # "len":I
    .restart local v30    # "needPreview":Z
    :goto_19
    add-int/lit8 v9, v9, 0x1

    move/from16 v10, v19

    move/from16 v6, v30

    goto/16 :goto_1

    .line 607
    .end local v9    # "i":I
    .end local v19    # "len":I
    .end local v30    # "needPreview":Z
    .restart local v6    # "needPreview":Z
    :cond_28
    move/from16 v30, v6

    .end local v6    # "needPreview":Z
    .restart local v30    # "needPreview":Z
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 608
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 609
    nop

    .line 610
    invoke-super/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v1}, Landroid/view/View;->resolveSize(II)I

    move-result v6

    .line 611
    invoke-super/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->getSuggestedMinimumHeight()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v7

    .line 609
    invoke-super {v0, v6, v7}, Lcom/xiaopeng/xui/widget/XViewGroup;->setMeasuredDimension(II)V

    .line 613
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iput v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    .line 614
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 1950
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 1945
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_2

    :cond_0
    neg-float v0, p3

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->startFlingIfNeed(F)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 4
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1881
    const/4 v0, 0x0

    .line 1885
    .local v0, "consumedY":I
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    mul-int/2addr v1, p3

    if-lez v1, :cond_1

    .line 1886
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 1887
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    .line 1888
    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    goto :goto_0

    .line 1890
    :cond_0
    move v0, p3

    .line 1891
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    sub-int/2addr v1, p3

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    .line 1893
    :goto_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->moveSpinnerInfinitely(F)V

    goto :goto_1

    .line 1894
    :cond_1
    if-lez p3, :cond_2

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    if-eqz v1, :cond_2

    .line 1895
    move v0, p3

    .line 1896
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    sub-int/2addr v1, p3

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    .line 1897
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->moveSpinnerInfinitely(F)V

    .line 1901
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    sub-int v2, p3, v0

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, p4, v3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    .line 1902
    const/4 v1, 0x1

    aget v2, p4, v1

    add-int/2addr v2, v0

    aput v2, p4, v1

    .line 1904
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 1909
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mParentOffsetInWindow:[I

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    .line 1916
    .local v0, "scrolled":Z
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mParentOffsetInWindow:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v1, p5

    .line 1917
    .local v1, "dy":I
    if-gez v1, :cond_1

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;->canRefresh(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    if-lez v1, :cond_7

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz v3, :cond_7

    :cond_2
    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    .line 1918
    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;->canLoadMore(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1919
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v3, v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-eqz v3, :cond_6

    .line 1924
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    if-lez v1, :cond_5

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    :goto_0
    invoke-interface {v3, v4}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 1925
    if-nez v0, :cond_6

    .line 1926
    move-object v3, p0

    .line 1927
    .local v3, "thisView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 1928
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_6

    .line 1930
    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1934
    .end local v3    # "thisView":Landroid/view/View;
    .end local v4    # "parent":Landroid/view/ViewParent;
    :cond_6
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->moveSpinnerInfinitely(F)V

    .line 1937
    :cond_7
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    if-eqz v2, :cond_8

    if-gez p3, :cond_8

    .line 1938
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    .line 1941
    :cond_8
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "target"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "axes"    # I

    .line 1867
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 1869
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    and-int/lit8 v1, p3, 0x2

    invoke-virtual {v0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 1871
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    .line 1872
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedInProgress:Z

    .line 1874
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->interceptAnimatorByAction(I)Z

    .line 1875
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "target"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "nestedScrollAxes"    # I

    .line 1858
    move-object v0, p0

    .line 1859
    .local v0, "thisView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isNestedScrollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1860
    .local v1, "accepted":Z
    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v4, :cond_2

    :cond_1
    move v2, v3

    nop

    :cond_2
    move v1, v2

    .line 1861
    return v1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1955
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 1956
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedInProgress:Z

    .line 1959
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    .line 1960
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->overSpinner()V

    .line 1962
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 1963
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I

    .line 4064
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 4065
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->onVuiVisibilityChanged(I)V

    .line 4066
    return-void
.end method

.method protected overSpinner()V
    .locals 4

    .line 1638
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_3

    .line 1639
    move-object v0, p0

    .line 1640
    .local v0, "thisView":Landroid/view/View;
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mCurrentVelocity:I

    const/16 v2, -0x3e8

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    .line 1641
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1642
    .local v1, "animator":Landroid/animation/ValueAnimator;
    if-eqz v1, :cond_0

    .line 1643
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFloorDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1645
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_2

    .line 1646
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->finishTwoLevel()Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 1648
    .end local v0    # "thisView":Landroid/view/View;
    :cond_2
    :goto_0
    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 1649
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    .line 1655
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_6

    .line 1656
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    if-le v0, v1, :cond_5

    .line 1657
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_2

    .line 1658
    :cond_5
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v0, :cond_11

    .line 1659
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_2

    .line 1661
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_7

    .line 1662
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto/16 :goto_2

    .line 1663
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_8

    .line 1664
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto/16 :goto_2

    .line 1665
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_9

    .line 1666
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto/16 :goto_2

    .line 1667
    :cond_9
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_a

    .line 1668
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto :goto_2

    .line 1669
    :cond_a
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_b

    .line 1670
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto :goto_2

    .line 1671
    :cond_b
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_c

    .line 1672
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_11

    .line 1673
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 1675
    :cond_c
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_d

    .line 1676
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_11

    .line 1677
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 1679
    :cond_d
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_e

    goto :goto_2

    .line 1685
    :cond_e
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-eqz v0, :cond_11

    .line 1686
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 1650
    :cond_f
    :goto_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    if-ge v0, v1, :cond_10

    .line 1651
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 1652
    :cond_10
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-lez v0, :cond_11

    .line 1653
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    .line 1688
    :cond_11
    :goto_2
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .param p1, "disallowIntercept"    # Z

    .line 1086
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getScrollableView()Landroid/view/View;

    move-result-object v0

    .line 1087
    .local v0, "target":Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    instance-of v1, v0, Landroid/widget/AbsListView;

    if-nez v1, :cond_1

    .line 1088
    :cond_0
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1089
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableDisallowIntercept:Z

    .line 1090
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1092
    :cond_1
    return-void
.end method

.method public resetNoMoreData()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1

    .line 2925
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setNoMoreData(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public setDisableContentWhenLoading(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "disable"    # Z

    .line 2562
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenLoading:Z

    .line 2563
    return-object p0
.end method

.method public setDisableContentWhenRefresh(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "disable"    # Z

    .line 2550
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenRefresh:Z

    .line 2551
    return-object p0
.end method

.method public setDragRate(F)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "rate"    # F

    .line 2206
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragRate:F

    .line 2207
    return-object p0
.end method

.method public setEnableAutoLoadMore(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "enabled"    # Z

    .line 2354
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableAutoLoadMore:Z

    .line 2355
    return-object p0
.end method

.method public setEnableClipFooterWhenFixedBehind(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "enabled"    # Z

    .line 2465
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    .line 2466
    return-object p0
.end method

.method public setEnableClipHeaderWhenFixedBehind(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "enabled"    # Z

    .line 2453
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    .line 2454
    return-object p0
.end method

.method public setEnableFooterFollowWhenNoMoreData(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "enabled"    # Z

    .line 2441
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    .line 2442
    return-object p0
.end method

.method public setEnableFooterTranslationContent(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1
    .param p1, "enabled"    # Z

    .line 2341
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterTranslationContent:Z

    .line 2342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualFooterTranslationContent:Z

    .line 2343
    return-object p0
.end method

.method public setEnableHeaderTranslationContent(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1
    .param p1, "enabled"    # Z

    .line 2328
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    .line 2329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualHeaderTranslationContent:Z

    .line 2330
    return-object p0
.end method

.method public setEnableLoadMore(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1
    .param p1, "enabled"    # Z

    .line 2304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualLoadMore:Z

    .line 2305
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 2306
    return-object p0
.end method

.method public setEnableLoadMoreWhenContentNotFull(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1
    .param p1, "enabled"    # Z

    .line 2414
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    .line 2415
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v0, :cond_0

    .line 2416
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v0, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->setEnableLoadMoreWhenContentNotFull(Z)V

    .line 2418
    :cond_0
    return-object p0
.end method

.method public setEnableNestedScroll(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "enabled"    # Z

    .line 2477
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 2478
    return-object p0
.end method

.method public setEnableOverScrollBounce(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "enabled"    # Z

    .line 2366
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollBounce:Z

    .line 2367
    return-object p0
.end method

.method public setEnableOverScrollDrag(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "enabled"    # Z

    .line 2429
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    .line 2430
    return-object p0
.end method

.method public setEnablePureScrollMode(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "enabled"    # Z

    .line 2378
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePureScrollMode:Z

    .line 2379
    return-object p0
.end method

.method public setEnableRefresh(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "enabled"    # Z

    .line 2316
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    .line 2317
    return-object p0
.end method

.method public setEnableScrollContentWhenLoaded(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "enabled"    # Z

    .line 2390
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    .line 2391
    return-object p0
.end method

.method public setEnableScrollContentWhenRefreshed(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "enabled"    # Z

    .line 2402
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    .line 2403
    return-object p0
.end method

.method public setFixedFooterViewId(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "id"    # I

    .line 2497
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedFooterViewId:I

    .line 2498
    return-object p0
.end method

.method public setFixedHeaderViewId(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "id"    # I

    .line 2487
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedHeaderViewId:I

    .line 2488
    return-object p0
.end method

.method public setFooterHeight(F)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1
    .param p1, "heightDp"    # F

    .line 2103
    invoke-static {p1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setFooterHeightPx(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public setFooterHeightPx(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 10
    .param p1, "height"    # I

    .line 2113
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    if-ne p1, v0, :cond_0

    .line 2114
    return-object p0

    .line 2116
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->CodeExact:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v0, v1}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2117
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    .line 2118
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mAttachedToWindow:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-eqz v0, :cond_5

    .line 2119
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v0

    .line 2120
    .local v0, "style":Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-eq v0, v1, :cond_3

    iget-boolean v1, v0, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-nez v1, :cond_3

    .line 2128
    move-object v1, p0

    .line 2129
    .local v1, "thisView":Landroid/view/View;
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v2

    .line 2130
    .local v2, "footerView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2131
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2132
    .local v4, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2133
    .local v5, "widthSpec":I
    iget v7, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    iget v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v7, v8

    iget v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 2134
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2135
    .local v6, "left":I
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v7, v9

    iget v9, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterInsetStart:I

    sub-int/2addr v7, v9

    sget-object v9, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-eq v0, v9, :cond_2

    iget v8, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    nop

    :cond_2
    sub-int/2addr v7, v8

    .line 2136
    .local v7, "top":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 2138
    .end local v1    # "thisView":Landroid/view/View;
    .end local v2    # "footerView":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "widthSpec":I
    .end local v6    # "left":I
    .end local v7    # "top":I
    :cond_3
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    mul-float/2addr v1, v2

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    .line 2139
    .local v1, "maxDragHeight":F
    :goto_1
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->CodeExact:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 2140
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    float-to-int v5, v1

    invoke-interface {v2, v3, v4, v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onInitialized(Lcom/scwang/smart/refresh/layout/api/RefreshKernel;II)V

    .line 2141
    .end local v0    # "style":Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;
    .end local v1    # "maxDragHeight":F
    goto :goto_2

    .line 2142
    :cond_5
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->CodeExactUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 2145
    :cond_6
    :goto_2
    return-object p0
.end method

.method public setFooterInsetStart(F)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1
    .param p1, "insetDp"    # F

    .line 2181
    invoke-static {p1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterInsetStart:I

    .line 2182
    return-object p0
.end method

.method public setFooterInsetStartPx(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "insetPx"    # I

    .line 2193
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterInsetStart:I

    .line 2194
    return-object p0
.end method

.method public setFooterMaxDragRate(F)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 5
    .param p1, "rate"    # F

    .line 2238
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    .line 2239
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 2240
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    .line 2241
    .local v0, "maxDragHeight":F
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    float-to-int v4, v0

    invoke-interface {v1, v2, v3, v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onInitialized(Lcom/scwang/smart/refresh/layout/api/RefreshKernel;II)V

    .line 2242
    .end local v0    # "maxDragHeight":F
    goto :goto_1

    .line 2243
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v0}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 2245
    :goto_1
    return-object p0
.end method

.method public setFooterTranslationViewId(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "id"    # I

    .line 2517
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTranslationViewId:I

    .line 2518
    return-object p0
.end method

.method public setFooterTriggerRate(F)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "rate"    # F

    .line 2268
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    .line 2269
    return-object p0
.end method

.method public setHeaderHeight(F)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1
    .param p1, "heightDp"    # F

    .line 2051
    invoke-static {p1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setHeaderHeightPx(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderHeightPx(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 9
    .param p1, "height"    # I

    .line 2061
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    if-ne p1, v0, :cond_0

    .line 2062
    return-object p0

    .line 2064
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->CodeExact:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v0, v1}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2065
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    .line 2066
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mAttachedToWindow:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-eqz v0, :cond_5

    .line 2067
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v0

    .line 2068
    .local v0, "style":Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-eq v0, v1, :cond_3

    iget-boolean v1, v0, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-nez v1, :cond_3

    .line 2076
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v1

    .line 2077
    .local v1, "headerView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2078
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2079
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2080
    .local v4, "widthSpec":I
    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/view/View;->measure(II)V

    .line 2081
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2082
    .local v5, "left":I
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderInsetStart:I

    add-int/2addr v6, v8

    sget-object v8, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v0, v8, :cond_2

    iget v7, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    nop

    :cond_2
    sub-int/2addr v6, v7

    .line 2083
    .local v6, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 2085
    .end local v1    # "headerView":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "widthSpec":I
    .end local v5    # "left":I
    .end local v6    # "top":I
    :cond_3
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float/2addr v1, v2

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    :goto_1
    float-to-int v1, v1

    .line 2086
    .local v1, "maxDragHeight":I
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->CodeExact:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 2087
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v2, v3, v4, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onInitialized(Lcom/scwang/smart/refresh/layout/api/RefreshKernel;II)V

    .line 2088
    .end local v0    # "style":Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;
    .end local v1    # "maxDragHeight":I
    goto :goto_2

    .line 2089
    :cond_5
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->CodeExactUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 2092
    :cond_6
    :goto_2
    return-object p0
.end method

.method public setHeaderInsetStart(F)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1
    .param p1, "insetDp"    # F

    .line 2156
    invoke-static {p1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderInsetStart:I

    .line 2157
    return-object p0
.end method

.method public setHeaderInsetStartPx(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "insetPx"    # I

    .line 2168
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderInsetStart:I

    .line 2169
    return-object p0
.end method

.method public setHeaderMaxDragRate(F)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 4
    .param p1, "rate"    # F

    .line 2219
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    .line 2220
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 2221
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    :goto_0
    float-to-int v0, v0

    .line 2222
    .local v0, "maxDragHeight":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v1, v2, v3, v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onInitialized(Lcom/scwang/smart/refresh/layout/api/RefreshKernel;II)V

    .line 2223
    .end local v0    # "maxDragHeight":I
    goto :goto_1

    .line 2224
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v0}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 2226
    :goto_1
    return-object p0
.end method

.method public setHeaderTranslationViewId(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "id"    # I

    .line 2507
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTranslationViewId:I

    .line 2508
    return-object p0
.end method

.method public setHeaderTriggerRate(F)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "rate"    # F

    .line 2256
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    .line 2257
    return-object p0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1969
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableNestedScrolling:Z

    .line 1971
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 1972
    return-void
.end method

.method public setNoMoreData(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 2
    .param p1, "noMoreData"    # Z

    .line 2891
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 2892
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishRefreshWithNoMoreData()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    goto/16 :goto_0

    .line 2893
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 2894
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishLoadMoreWithNoMoreData()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    goto :goto_0

    .line 2895
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eq v0, p1, :cond_3

    .line 2896
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    .line 2897
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v0, v0, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v0, :cond_3

    .line 2898
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    check-cast v0, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v0, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;->setNoMoreData(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    .line 2900
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 2901
    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v0

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 2902
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 2903
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2904
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 2907
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    .line 2908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Footer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " NoMoreData is not supported.(\u4e0d\u652f\u6301NoMoreData\uff0c\u8bf7\u4f7f\u7528[ClassicsFooter]\u6216\u8005[\u81ea\u5b9a\u4e49Footer\u5e76\u5b9e\u73b0setNoMoreData\u65b9\u6cd5\u4e14\u8fd4\u56detrue])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2909
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2910
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2915
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    return-object p0
.end method

.method public setOnLoadMoreListener(Lcom/scwang/smart/refresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1
    .param p1, "listener"    # Lcom/scwang/smart/refresh/layout/listener/OnLoadMoreListener;

    .line 2798
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLoadMoreListener:Lcom/scwang/smart/refresh/layout/listener/OnLoadMoreListener;

    .line 2799
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualLoadMore:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 2800
    return-object p0
.end method

.method public setOnMultiListener(Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "listener"    # Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    .line 2827
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    .line 2828
    return-object p0
.end method

.method public setOnRefreshListener(Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "listener"    # Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;

    .line 2786
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshListener:Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;

    .line 2787
    return-object p0
.end method

.method public setOnRefreshLoadMoreListener(Lcom/scwang/smart/refresh/layout/listener/OnRefreshLoadMoreListener;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1
    .param p1, "listener"    # Lcom/scwang/smart/refresh/layout/listener/OnRefreshLoadMoreListener;

    .line 2811
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshListener:Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;

    .line 2812
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLoadMoreListener:Lcom/scwang/smart/refresh/layout/listener/OnLoadMoreListener;

    .line 2813
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualLoadMore:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 2814
    return-object p0
.end method

.method public varargs setPrimaryColors([I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1
    .param p1, "primaryColors"    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 2839
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_0

    .line 2840
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v0, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->setPrimaryColors([I)V

    .line 2842
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_1

    .line 2843
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v0, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->setPrimaryColors([I)V

    .line 2845
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    .line 2846
    return-object p0
.end method

.method public varargs setPrimaryColorsId([I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 5
    .param p1, "primaryColorId"    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 2857
    move-object v0, p0

    .line 2858
    .local v0, "thisView":Landroid/view/View;
    array-length v1, p1

    new-array v1, v1, [I

    .line 2859
    .local v1, "colors":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 2860
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    aget v4, p1, v2

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 2859
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2862
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setPrimaryColors([I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    .line 2863
    return-object p0
.end method

.method public setReboundDuration(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "duration"    # I

    .line 2292
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    .line 2293
    return-object p0
.end method

.method public setReboundInterpolator(Landroid/view/animation/Interpolator;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2280
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    .line 2281
    return-object p0
.end method

.method public setRefreshContent(Landroid/view/View;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1
    .param p1, "content"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2681
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setRefreshContent(Landroid/view/View;II)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public setRefreshContent(Landroid/view/View;II)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 8
    .param p1, "content"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 2696
    move-object v0, p0

    .line 2697
    .local v0, "thisView":Landroid/view/View;
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v1, :cond_0

    .line 2698
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/xiaopeng/xui/widget/XViewGroup;->removeView(Landroid/view/View;)V

    .line 2700
    :cond_0
    move-object v1, p0

    .line 2705
    .local v1, "thisGroup":Landroid/view/ViewGroup;
    const/4 v2, -0x1

    if-nez p2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, p2

    :goto_0
    move p2, v3

    .line 2706
    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move v2, p3

    :goto_1
    move p3, v2

    .line 2707
    new-instance v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    invoke-direct {v2, p2, p3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;-><init>(II)V

    .line 2708
    .local v2, "lp":Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2709
    .local v3, "olp":Ljava/lang/Object;
    instance-of v4, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    if-eqz v4, :cond_3

    .line 2710
    move-object v2, v3

    check-cast v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    .line 2713
    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-super {p0, p1, v4, v2}, Lcom/xiaopeng/xui/widget/XViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2715
    new-instance v4, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-direct {v4, p1}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    .line 2716
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mAttachedToWindow:Z

    if-eqz v4, :cond_4

    .line 2717
    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedHeaderViewId:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2718
    .local v4, "fixedHeaderView":Landroid/view/View;
    iget v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedFooterViewId:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2720
    .local v5, "fixedFooterView":Landroid/view/View;
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;

    invoke-interface {v6, v7}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->setScrollBoundaryDecider(Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;)V

    .line 2721
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    iget-boolean v7, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    invoke-interface {v6, v7}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->setEnableLoadMoreWhenContentNotFull(Z)V

    .line 2722
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v6, v7, v4, v5}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->setUpComponent(Lcom/scwang/smart/refresh/layout/api/RefreshKernel;Landroid/view/View;Landroid/view/View;)V

    .line 2725
    .end local v4    # "fixedHeaderView":Landroid/view/View;
    .end local v5    # "fixedFooterView":Landroid/view/View;
    :cond_4
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v4

    iget-boolean v4, v4, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz v4, :cond_5

    .line 2726
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v4

    invoke-super {p0, v4}, Lcom/xiaopeng/xui/widget/XViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 2728
    :cond_5
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v4

    iget-boolean v4, v4, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz v4, :cond_6

    .line 2729
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v4

    invoke-super {p0, v4}, Lcom/xiaopeng/xui/widget/XViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 2731
    :cond_6
    return-object p0
.end method

.method public setRefreshFooter(Lcom/scwang/smart/refresh/layout/api/RefreshFooter;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1
    .param p1, "footer"    # Lcom/scwang/smart/refresh/layout/api/RefreshFooter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2626
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setRefreshFooter(Lcom/scwang/smart/refresh/layout/api/RefreshFooter;II)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public setRefreshFooter(Lcom/scwang/smart/refresh/layout/api/RefreshFooter;II)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 5
    .param p1, "footer"    # Lcom/scwang/smart/refresh/layout/api/RefreshFooter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 2641
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_0

    .line 2642
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;->removeView(Landroid/view/View;)V

    .line 2644
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 2645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    .line 2646
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterBackgroundColor:I

    .line 2647
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    .line 2648
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNeedTouchEventWhenLoading:Z

    .line 2649
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 2650
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualLoadMore:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 2654
    if-nez p2, :cond_3

    const/4 v1, -0x1

    goto :goto_2

    :cond_3
    move v1, p2

    :goto_2
    move p2, v1

    .line 2655
    if-nez p3, :cond_4

    const/4 v1, -0x2

    goto :goto_3

    :cond_4
    move v1, p3

    :goto_3
    move p3, v1

    .line 2656
    new-instance v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;-><init>(II)V

    .line 2657
    .local v1, "lp":Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;
    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2658
    .local v2, "olp":Ljava/lang/Object;
    instance-of v3, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    if-eqz v3, :cond_5

    .line 2659
    move-object v1, v2

    check-cast v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    .line 2661
    :cond_5
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v3

    iget-boolean v3, v3, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz v3, :cond_6

    .line 2662
    move-object v0, p0

    .line 2663
    .local v0, "thisGroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-super {p0, v3, v4, v1}, Lcom/xiaopeng/xui/widget/XViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2664
    .end local v0    # "thisGroup":Landroid/view/ViewGroup;
    goto :goto_4

    .line 2665
    :cond_6
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v3

    invoke-super {p0, v3, v0, v1}, Lcom/xiaopeng/xui/widget/XViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2667
    :goto_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_7

    .line 2668
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    invoke-interface {v0, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->setPrimaryColors([I)V

    .line 2670
    :cond_7
    return-object p0
.end method

.method public setRefreshHeader(Lcom/scwang/smart/refresh/layout/api/RefreshHeader;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1
    .param p1, "header"    # Lcom/scwang/smart/refresh/layout/api/RefreshHeader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2574
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smart/refresh/layout/api/RefreshHeader;II)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public setRefreshHeader(Lcom/scwang/smart/refresh/layout/api/RefreshHeader;II)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 5
    .param p1, "header"    # Lcom/scwang/smart/refresh/layout/api/RefreshHeader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 2589
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_0

    .line 2590
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;->removeView(Landroid/view/View;)V

    .line 2592
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 2593
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderBackgroundColor:I

    .line 2594
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderNeedTouchEventWhenRefreshing:Z

    .line 2595
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 2599
    if-nez p2, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    move v1, p2

    :goto_0
    move p2, v1

    .line 2600
    if-nez p3, :cond_2

    const/4 v1, -0x2

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    move p3, v1

    .line 2601
    new-instance v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;-><init>(II)V

    .line 2602
    .local v1, "lp":Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;
    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2603
    .local v2, "olp":Ljava/lang/Object;
    instance-of v3, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    if-eqz v3, :cond_3

    .line 2604
    move-object v1, v2

    check-cast v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    .line 2606
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v3

    iget-boolean v3, v3, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz v3, :cond_4

    .line 2607
    move-object v0, p0

    .line 2608
    .local v0, "thisGroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-super {p0, v3, v4, v1}, Lcom/xiaopeng/xui/widget/XViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2609
    .end local v0    # "thisGroup":Landroid/view/ViewGroup;
    goto :goto_2

    .line 2610
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v3

    invoke-super {p0, v3, v0, v1}, Lcom/xiaopeng/xui/widget/XViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2612
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_5

    .line 2613
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    invoke-interface {v0, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->setPrimaryColors([I)V

    .line 2615
    :cond_5
    return-object p0
.end method

.method public setScrollBoundaryDecider(Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1
    .param p1, "boundary"    # Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;

    .line 2876
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;

    .line 2877
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v0, :cond_0

    .line 2878
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v0, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->setScrollBoundaryDecider(Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;)V

    .line 2880
    :cond_0
    return-object p0
.end method

.method protected setStateDirectLoading(Z)V
    .locals 6
    .param p1, "triggerLoadMoreEvent"    # Z

    .line 1212
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_6

    .line 1213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastOpenTime:J

    .line 1226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    .line 1227
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 1228
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLoadMoreListener:Lcom/scwang/smart/refresh/layout/listener/OnLoadMoreListener;

    if-eqz v0, :cond_0

    .line 1229
    if-eqz p1, :cond_1

    .line 1230
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLoadMoreListener:Lcom/scwang/smart/refresh/layout/listener/OnLoadMoreListener;

    invoke-interface {v0, p0}, Lcom/scwang/smart/refresh/layout/listener/OnLoadMoreListener;->onLoadMore(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    goto :goto_0

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-nez v0, :cond_1

    .line 1233
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishLoadMore(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    .line 1235
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    const/high16 v1, 0x41200000    # 10.0f

    if-eqz v0, :cond_3

    .line 1236
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    mul-float/2addr v0, v2

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    .line 1237
    .local v0, "maxDragHeight":F
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    float-to-int v4, v0

    invoke-interface {v2, p0, v3, v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onStartAnimator(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V

    .line 1239
    .end local v0    # "maxDragHeight":F
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v0, v0, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v0, :cond_6

    .line 1240
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    .line 1241
    .local v0, "listener":Lcom/scwang/smart/refresh/layout/listener/OnLoadMoreListener;
    if-eqz p1, :cond_4

    .line 1242
    invoke-interface {v0, p0}, Lcom/scwang/smart/refresh/layout/listener/OnLoadMoreListener;->onLoadMore(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    .line 1244
    :cond_4
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    cmpg-float v1, v2, v1

    if-gez v1, :cond_5

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    mul-float/2addr v1, v2

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    .line 1245
    .local v1, "maxDragHeight":F
    :goto_2
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    check-cast v3, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    float-to-int v5, v1

    invoke-interface {v2, v3, v4, v5}, Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;->onFooterStartAnimator(Lcom/scwang/smart/refresh/layout/api/RefreshFooter;II)V

    .line 1248
    .end local v0    # "listener":Lcom/scwang/smart/refresh/layout/listener/OnLoadMoreListener;
    .end local v1    # "maxDragHeight":F
    :cond_6
    return-void
.end method

.method protected setStateLoading(Z)V
    .locals 7
    .param p1, "notify"    # Z

    .line 1255
    new-instance v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$1;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Z)V

    .line 1264
    .local v0, "listener":Landroid/animation/AnimatorListenerAdapter;
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 1265
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    neg-int v2, v2

    invoke-interface {v1, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1266
    .local v1, "animator":Landroid/animation/ValueAnimator;
    if-eqz v1, :cond_0

    .line 1267
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1269
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    const/high16 v3, 0x41200000    # 10.0f

    if-eqz v2, :cond_2

    .line 1272
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v2, v2

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    mul-float/2addr v2, v4

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    .line 1273
    .local v2, "maxDragHeight":F
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    float-to-int v6, v2

    invoke-interface {v4, p0, v5, v6}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onReleased(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V

    .line 1275
    .end local v2    # "maxDragHeight":F
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v2, v2, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v2, :cond_4

    .line 1277
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    mul-float/2addr v2, v3

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    .line 1278
    .restart local v2    # "maxDragHeight":F
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    check-cast v4, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    float-to-int v6, v2

    invoke-interface {v3, v4, v5, v6}, Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;->onFooterReleased(Lcom/scwang/smart/refresh/layout/api/RefreshFooter;II)V

    .line 1280
    .end local v2    # "maxDragHeight":F
    :cond_4
    if-nez v1, :cond_5

    .line 1282
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1284
    :cond_5
    return-void
.end method

.method protected setStateRefreshing(Z)V
    .locals 6
    .param p1, "notify"    # Z

    .line 1291
    new-instance v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Z)V

    .line 1319
    .local v0, "listener":Landroid/animation/AnimatorListenerAdapter;
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 1320
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v1, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1321
    .local v1, "animator":Landroid/animation/ValueAnimator;
    if-eqz v1, :cond_0

    .line 1322
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1324
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    const/high16 v3, 0x41200000    # 10.0f

    if-eqz v2, :cond_2

    .line 1327
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v2, v2

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float/2addr v2, v4

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    :goto_0
    float-to-int v2, v2

    .line 1328
    .local v2, "maxDragHeight":I
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v4, p0, v5, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onReleased(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V

    .line 1330
    .end local v2    # "maxDragHeight":I
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v2, v2, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v2, :cond_4

    .line 1332
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float/2addr v2, v3

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    :goto_1
    float-to-int v2, v2

    .line 1333
    .restart local v2    # "maxDragHeight":I
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    check-cast v4, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v3, v4, v5, v2}, Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;->onHeaderReleased(Lcom/scwang/smart/refresh/layout/api/RefreshHeader;II)V

    .line 1335
    .end local v2    # "maxDragHeight":I
    :cond_4
    if-nez v1, :cond_5

    .line 1337
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1339
    :cond_5
    return-void
.end method

.method protected setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V
    .locals 2
    .param p1, "state"    # Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 1360
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    iget-boolean v1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    if-eq v0, v1, :cond_0

    .line 1361
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, p1, :cond_1

    .line 1364
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 1366
    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 4058
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->setVisibility(I)V

    .line 4059
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setVuiVisibility(Landroid/view/View;I)V

    .line 4060
    return-void
.end method

.method protected startFlingIfNeed(F)Z
    .locals 13
    .param p1, "flingVelocity"    # F

    .line 1100
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mCurrentVelocity:I

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    move v1, p1

    .line 1113
    .local v1, "velocity":F
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mMinimumVelocity:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_9

    .line 1114
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    cmpg-float v2, v2, v0

    if-gez v2, :cond_3

    .line 1121
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    const/4 v5, 0x1

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v2, v4, :cond_2

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v2, :cond_1

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1124
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isReleaseToOpening:Z

    if-eqz v2, :cond_3

    .line 1125
    return v5

    .line 1122
    :cond_2
    :goto_1
    new-instance v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$FlingRunnable;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$FlingRunnable;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;F)V

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$FlingRunnable;->start()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1123
    return v5

    .line 1128
    :cond_3
    cmpg-float v2, v1, v0

    if-gez v2, :cond_6

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v2, :cond_8

    :cond_4
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v2, v4, :cond_5

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v2, :cond_8

    :cond_5
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    cmpl-float v0, v1, v0

    if-lez v0, :cond_9

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    if-nez v0, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v2, :cond_9

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gtz v0, :cond_9

    .line 1137
    :cond_8
    iput-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVerticalPermit:Z

    .line 1138
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    neg-float v0, v1

    float-to-int v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, -0x7fffffff

    const v12, 0x7fffffff

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1139
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1140
    move-object v0, p0

    .line 1141
    .local v0, "thisView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1144
    .end local v0    # "thisView":Landroid/view/View;
    :cond_9
    return v3
.end method
