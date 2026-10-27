.class public Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;
.super Lcom/xiaopeng/xui/widget/XViewGroup;
.source "XSmartRefreshLayout.java"

# interfaces
.implements Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
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

    .line 216
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    sput-object v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x12c

    .line 88
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFloorDuration:I

    const/16 v0, 0x15e

    .line 89
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    const v0, 0x3f666666    # 0.9f

    .line 95
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragRate:F

    const/16 v0, 0x6e

    .line 96
    iput-char v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragDirection:C

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedHeaderViewId:I

    .line 101
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedFooterViewId:I

    .line 102
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTranslationViewId:I

    .line 103
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTranslationViewId:I

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    .line 116
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    const/4 v1, 0x1

    .line 117
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

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 151
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

    const/high16 v3, 0x40a00000    # 5.0f

    .line 166
    iput v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    .line 167
    iput v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 168
    iput v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    .line 169
    iput v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    const v3, 0x3e2aaaab

    .line 171
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

    const-wide/16 v3, 0x0

    .line 197
    iput-wide v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastOpenTime:J

    .line 199
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderBackgroundColor:I

    .line 200
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterBackgroundColor:I

    .line 207
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    .line 840
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVerticalPermit:Z

    const/4 v3, 0x0

    .line 871
    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 227
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 229
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

    const/high16 v3, 0x42c80000    # 100.0f

    .line 239
    invoke-static {v3}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    .line 240
    invoke-static {v3}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    .line 242
    sget-object v3, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout:[I

    invoke-virtual {p1, p2, v3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 246
    sget v3, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_android_clipToPadding:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    invoke-super {p0, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;->setClipToPadding(Z)V

    .line 249
    :cond_0
    sget v3, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_android_clipChildren:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 250
    invoke-super {p0, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;->setClipChildren(Z)V

    .line 253
    :cond_1
    sget-object v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sRefreshInitializer:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshInitializer;

    if-eqz v3, :cond_2

    .line 254
    invoke-interface {v3, p1, p0}, Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshInitializer;->initialize(Landroid/content/Context;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    .line 257
    :cond_2
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlDragRate:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragRate:F

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragRate:F

    .line 258
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlHeaderMaxDragRate:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    .line 259
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlFooterMaxDragRate:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    .line 260
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlHeaderTriggerRate:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    .line 261
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlFooterTriggerRate:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    .line 262
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableRefresh:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    .line 263
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlReboundDuration:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    .line 264
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableLoadMore:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 265
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlHeaderHeight:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    .line 266
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlFooterHeight:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    .line 267
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlHeaderInsetStart:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderInsetStart:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderInsetStart:I

    .line 268
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlFooterInsetStart:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterInsetStart:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterInsetStart:I

    .line 269
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlDisableContentWhenRefresh:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenRefresh:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenRefresh:Z

    .line 270
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlDisableContentWhenLoading:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenLoading:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenLoading:Z

    .line 271
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableHeaderTranslationContent:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    .line 272
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableFooterTranslationContent:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterTranslationContent:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterTranslationContent:Z

    .line 273
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnablePreviewInEditMode:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePreviewInEditMode:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePreviewInEditMode:Z

    .line 274
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableAutoLoadMore:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableAutoLoadMore:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableAutoLoadMore:Z

    .line 275
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableOverScrollBounce:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollBounce:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollBounce:Z

    .line 276
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnablePureScrollMode:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePureScrollMode:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePureScrollMode:Z

    .line 277
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableScrollContentWhenLoaded:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    .line 278
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableScrollContentWhenRefreshed:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    .line 279
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableLoadMoreWhenContentNotFull:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    .line 280
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableFooterFollowWhenLoadFinished:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    .line 281
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableFooterFollowWhenNoMoreData:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    .line 282
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableClipHeaderWhenFixedBehind:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    .line 283
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableClipFooterWhenFixedBehind:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    .line 284
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableOverScrollDrag:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    .line 285
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlFixedHeaderViewId:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedHeaderViewId:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedHeaderViewId:I

    .line 286
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlFixedFooterViewId:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedFooterViewId:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedFooterViewId:I

    .line 287
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlHeaderTranslationViewId:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTranslationViewId:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTranslationViewId:I

    .line 288
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlFooterTranslationViewId:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTranslationViewId:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTranslationViewId:I

    .line 289
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableNestedScrolling:I

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableNestedScrolling:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableNestedScrolling:Z

    .line 290
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v3, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 292
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualLoadMore:Z

    if-nez p1, :cond_4

    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableLoadMore:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v0

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualLoadMore:Z

    .line 293
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualHeaderTranslationContent:Z

    if-nez p1, :cond_6

    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableHeaderTranslationContent:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move p1, v0

    goto :goto_3

    :cond_6
    :goto_2
    move p1, v1

    :goto_3
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualHeaderTranslationContent:Z

    .line 294
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualFooterTranslationContent:Z

    if-nez p1, :cond_8

    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlEnableFooterTranslationContent:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    move p1, v0

    goto :goto_5

    :cond_8
    :goto_4
    move p1, v1

    :goto_5
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualFooterTranslationContent:Z

    .line 295
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlHeaderHeight:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    goto :goto_6

    :cond_9
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    :goto_6
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 296
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlFooterHeight:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    :goto_7
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 298
    sget p1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlAccentColor:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 299
    sget v3, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_srlPrimaryColor:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    if-eqz v3, :cond_c

    if-eqz p1, :cond_b

    new-array v2, v2, [I

    aput v3, v2, v0

    aput p1, v2, v1

    .line 302
    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    goto :goto_8

    :cond_b
    new-array p1, v1, [I

    aput v3, p1, v0

    .line 304
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    goto :goto_8

    :cond_c
    if-eqz p1, :cond_d

    new-array v2, v2, [I

    aput v0, v2, v0

    aput p1, v2, v1

    .line 307
    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    .line 310
    :cond_d
    :goto_8
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePureScrollMode:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualLoadMore:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-nez p1, :cond_e

    .line 311
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 314
    :cond_e
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$101(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$201(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$301(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$401(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$501(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$601(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static setDefaultRefreshFooterCreator(Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshFooterCreator;)V
    .locals 0

    .line 3533
    sput-object p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sFooterCreator:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshFooterCreator;

    return-void
.end method

.method public static setDefaultRefreshHeaderCreator(Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshHeaderCreator;)V
    .locals 0

    .line 3525
    sput-object p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sHeaderCreator:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshHeaderCreator;

    return-void
.end method

.method public static setDefaultRefreshInitializer(Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshInitializer;)V
    .locals 0

    .line 3541
    sput-object p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sRefreshInitializer:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshInitializer;

    return-void
.end method


# virtual methods
.method protected animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
    .locals 4

    .line 1535
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    .line 1536
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    .line 1537
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1538
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1539
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 1541
    :cond_0
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1542
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p4

    .line 1543
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1544
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1545
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;

    invoke-direct {p3, p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1575
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;

    invoke-direct {p3, p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1607
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1609
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1610
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    return-object p1

    :cond_1
    return-object v1
.end method

.method protected animSpinnerBounce(F)V
    .locals 3

    .line 1620
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    .line 1621
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

    :cond_1
    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    .line 1623
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

    .line 3439
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->autoLoadMore(IIFZ)Z

    move-result p1

    return p1
.end method

.method public autoLoadMore(IIFZ)Z
    .locals 2

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
    sget-object p2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    if-lez p1, :cond_0

    .line 3510
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long p3, p1

    invoke-virtual {p2, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3512
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
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

    .line 3336
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->autoRefresh(IIFZ)Z

    move-result p1

    return p1
.end method

.method public autoRefresh(IIFZ)Z
    .locals 2

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
    sget-object p2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    if-lez p1, :cond_0

    .line 3409
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long p3, p1

    invoke-virtual {p2, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3411
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
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

    :goto_0
    return-object p0
.end method

.method public computeScroll()V
    .locals 3

    .line 849
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 850
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 851
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_1

    .line 852
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->canRefresh()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-lez v0, :cond_6

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    .line 853
    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 854
    :cond_3
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVerticalPermit:Z

    if-eqz v2, :cond_5

    if-lez v0, :cond_4

    .line 856
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    .line 857
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animSpinnerBounce(F)V

    .line 859
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 861
    :cond_6
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVerticalPermit:Z

    .line 863
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 885
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v2, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v6, v2, :cond_0

    move v3, v11

    goto :goto_0

    :cond_0
    move v3, v10

    :goto_0
    if-eqz v3, :cond_1

    .line 887
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    .line 891
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v7, 0x0

    move v9, v7

    move v12, v9

    move v8, v10

    :goto_2
    if-ge v8, v5, :cond_3

    if-ne v4, v8, :cond_2

    goto :goto_3

    .line 894
    :cond_2
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    add-float/2addr v9, v13

    .line 895
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v12, v13

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    add-int/lit8 v5, v5, -0x1

    :cond_4
    int-to-float v3, v5

    div-float/2addr v9, v3

    div-float v8, v12, v3

    if-eq v6, v2, :cond_5

    const/4 v2, 0x5

    if-ne v6, v2, :cond_6

    .line 900
    :cond_5
    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_6

    .line 902
    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    sub-float v3, v8, v3

    add-float/2addr v2, v3

    iput v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    .line 904
    :cond_6
    iput v9, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    .line 905
    iput v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    .line 914
    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedInProgress:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_a

    .line 915
    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    .line 916
    invoke-super/range {p0 .. p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v6, v3, :cond_9

    .line 918
    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    if-ne v2, v3, :cond_9

    .line 919
    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    float-to-int v2, v2

    .line 920
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 921
    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move v11, v3

    :goto_4
    int-to-float v5, v11

    div-float/2addr v4, v5

    .line 922
    iget-boolean v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-lez v5, :cond_8

    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->isSupportHorizontalDrag()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 923
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v5, v4, v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onHorizontalDrag(FII)V

    goto :goto_5

    .line 924
    :cond_8
    iget-boolean v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v5, :cond_9

    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->isSupportHorizontalDrag()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 925
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v5, v4, v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onHorizontalDrag(FII)V

    :cond_9
    :goto_5
    return v1

    .line 930
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_37

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    if-nez v2, :cond_b

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v2, :cond_b

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz v2, :cond_37

    :cond_b
    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderNeedTouchEventWhenRefreshing:Z

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v2, :cond_c

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    if-eqz v2, :cond_d

    :cond_c
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    if-nez v2, :cond_37

    :cond_d
    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNeedTouchEventWhenLoading:Z

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v2, :cond_e

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    if-eqz v2, :cond_f

    :cond_e
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v2, :cond_f

    goto/16 :goto_e

    .line 937
    :cond_f
    invoke-virtual {v0, v6}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->interceptAnimatorByAction(I)Z

    move-result v2

    if-nez v2, :cond_36

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v2, :cond_36

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v2, v4, :cond_10

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenLoading:Z

    if-nez v2, :cond_36

    :cond_10
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v2, v4, :cond_11

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenRefresh:Z

    if-eqz v2, :cond_11

    goto/16 :goto_d

    :cond_11
    const/16 v2, 0x68

    if-eqz v6, :cond_33

    const/4 v4, 0x0

    if-eq v6, v11, :cond_2f

    const/4 v5, 0x3

    if-eq v6, v3, :cond_12

    if-eq v6, v5, :cond_30

    goto/16 :goto_c

    .line 977
    :cond_12
    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchX:F

    sub-float/2addr v9, v3

    .line 978
    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    sub-float v3, v8, v3

    .line 979
    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 980
    iget-boolean v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    if-nez v6, :cond_1f

    iget-boolean v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableDisallowIntercept:Z

    if-nez v6, :cond_1f

    iget-char v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragDirection:C

    if-eq v6, v2, :cond_1f

    iget-object v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v12, :cond_1f

    const/16 v12, 0x76

    if-eq v6, v12, :cond_14

    .line 981
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v6, v6, v13

    if-ltz v6, :cond_13

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpg-float v6, v6, v13

    if-gez v6, :cond_13

    goto :goto_6

    .line 1004
    :cond_13
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v6, v6, v13

    if-ltz v6, :cond_1f

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v6, v6, v13

    if-lez v6, :cond_1f

    iget-char v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragDirection:C

    if-eq v6, v12, :cond_1f

    .line 1005
    iput-char v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragDirection:C

    goto/16 :goto_a

    .line 982
    :cond_14
    :goto_6
    iput-char v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragDirection:C

    cmpl-float v2, v3, v7

    if-lez v2, :cond_17

    .line 983
    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-ltz v2, :cond_16

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v2, :cond_15

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    if-eqz v2, :cond_17

    :cond_15
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->canRefresh()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 984
    :cond_16
    iput-boolean v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    .line 985
    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    sub-float v2, v8, v2

    iput v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    goto :goto_7

    :cond_17
    cmpg-float v2, v3, v7

    if-gez v2, :cond_1b

    .line 986
    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gtz v2, :cond_1a

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v2, :cond_18

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v2, :cond_1b

    :cond_18
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v2, v6, :cond_19

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    if-nez v2, :cond_1a

    :cond_19
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 987
    :cond_1a
    iput-boolean v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    .line 988
    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    add-float/2addr v2, v8

    iput v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    .line 990
    :cond_1b
    :goto_7
    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_1f

    .line 991
    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    sub-float v3, v8, v2

    .line 992
    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    if-eqz v2, :cond_1c

    .line 993
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 994
    invoke-super/range {p0 .. p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 996
    :cond_1c
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gtz v6, :cond_1e

    if-nez v6, :cond_1d

    cmpl-float v6, v3, v7

    if-lez v6, :cond_1d

    goto :goto_8

    :cond_1d
    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    goto :goto_9

    :cond_1e
    :goto_8
    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    :goto_9
    invoke-interface {v2, v6}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 997
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 998
    instance-of v6, v2, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1f

    .line 1001
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1008
    :cond_1f
    :goto_a
    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_2e

    float-to-int v2, v3

    .line 1009
    iget v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSpinner:I

    add-int/2addr v2, v6

    .line 1010
    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v6, v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v6, :cond_20

    if-ltz v2, :cond_21

    iget v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastSpinner:I

    if-ltz v6, :cond_21

    :cond_20
    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v6, v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v6, :cond_2d

    if-gtz v2, :cond_21

    iget v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastSpinner:I

    if-lez v6, :cond_2d

    .line 1011
    :cond_21
    iput v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastSpinner:I

    .line 1012
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    .line 1013
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-nez v1, :cond_22

    const/16 v16, 0x0

    .line 1014
    iget v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchX:F

    add-float v17, v1, v9

    iget v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide/from16 v14, v20

    move/from16 v18, v1

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 1015
    invoke-super {v0, v1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_22
    const/16 v16, 0x2

    .line 1017
    iget v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchX:F

    add-float v17, v1, v9

    iget v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    int-to-float v6, v2

    add-float v18, v1, v6

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide/from16 v14, v20

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1018
    invoke-super {v0, v1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1019
    iget-boolean v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    if-eqz v6, :cond_23

    iget v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_23

    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v3, :cond_23

    .line 1020
    iput-boolean v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    :cond_23
    if-lez v2, :cond_25

    .line 1022
    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v3, :cond_24

    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    if-eqz v3, :cond_25

    :cond_24
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->canRefresh()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1023
    iput v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    iput v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    .line 1024
    iput v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSpinner:I

    .line 1025
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto :goto_b

    :cond_25
    if-gez v2, :cond_27

    .line 1026
    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v3, :cond_26

    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v3, :cond_27

    :cond_26
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1027
    iput v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    iput v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    .line 1028
    iput v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSpinner:I

    .line 1029
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto :goto_b

    :cond_27
    move v10, v2

    .line 1031
    :goto_b
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v2, :cond_28

    if-ltz v10, :cond_29

    :cond_28
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v2, :cond_2b

    if-lez v10, :cond_2b

    .line 1032
    :cond_29
    iget v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-eqz v1, :cond_2a

    .line 1033
    invoke-virtual {v0, v7}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->moveSpinnerInfinitely(F)V

    :cond_2a
    return v11

    .line 1036
    :cond_2b
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_2c

    .line 1037
    iput-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 1038
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1039
    invoke-super {v0, v1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1041
    :cond_2c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    move v2, v10

    :cond_2d
    int-to-float v1, v2

    .line 1043
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->moveSpinnerInfinitely(F)V

    return v11

    .line 1045
    :cond_2e
    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    if-eqz v2, :cond_32

    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_32

    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v2, :cond_32

    .line 1046
    iput-boolean v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    goto :goto_c

    .line 1050
    :cond_2f
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1051
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mMaximumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1052
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mCurrentVelocity:I

    .line 1053
    invoke-virtual {v0, v7}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->startFlingIfNeed(F)Z

    .line 1055
    :cond_30
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    const/16 v2, 0x6e

    .line 1056
    iput-char v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragDirection:C

    .line 1057
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_31

    .line 1058
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1059
    iput-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 1060
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 1061
    iget v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchX:F

    const/4 v9, 0x0

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1062
    invoke-super {v0, v2}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1063
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1065
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->overSpinner()V

    .line 1066
    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_32

    .line 1067
    iput-boolean v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    return v11

    .line 1073
    :cond_32
    :goto_c
    invoke-super/range {p0 .. p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 953
    :cond_33
    iput v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mCurrentVelocity:I

    .line 954
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 955
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v11}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 959
    iput v9, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchX:F

    .line 960
    iput v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    .line 961
    iput v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastSpinner:I

    .line 962
    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    iput v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSpinner:I

    .line 963
    iput-boolean v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    .line 964
    iput-boolean v10, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableDisallowIntercept:Z

    .line 966
    invoke-super/range {p0 .. p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    .line 967
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v3, v4, :cond_34

    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTwoLevelBottomPullUpToCloseRate:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_34

    .line 968
    iput-char v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragDirection:C

    .line 969
    iget-boolean v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    return v1

    .line 971
    :cond_34
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v2, :cond_35

    .line 973
    invoke-interface {v2, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->onActionDown(Landroid/view/MotionEvent;)V

    :cond_35
    return v11

    :cond_36
    :goto_d
    return v10

    .line 934
    :cond_37
    :goto_e
    invoke-super/range {p0 .. p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    .line 773
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 774
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_8

    .line 775
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_8

    .line 779
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    add-int/2addr v1, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 780
    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_4

    .line 781
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 782
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v3

    iget-boolean v3, v3, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v3, :cond_2

    .line 783
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_1

    .line 784
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v3, v4, :cond_3

    .line 785
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    add-int/2addr v1, v3

    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 787
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v6, v3

    int-to-float v7, v1

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 795
    :cond_4
    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-eq v3, v4, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v3

    iget-boolean v3, v3, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v3, :cond_8

    .line 796
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 797
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 798
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 799
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_7
    :goto_2
    return v2

    .line 804
    :cond_8
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_10

    .line 805
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-nez v1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_4

    :cond_9
    if-eqz v0, :cond_10

    .line 809
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    add-int/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 810
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_c

    .line 811
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 812
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v1

    iget-boolean v1, v1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v1, :cond_a

    .line 813
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_3

    .line 814
    :cond_a
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_b

    .line 815
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    add-int/2addr v0, v1

    :cond_b
    :goto_3
    const/4 v2, 0x0

    int-to-float v3, v0

    .line 817
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 825
    :cond_c
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-eq v1, v2, :cond_e

    :cond_d
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v1

    iget-boolean v1, v1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v1, :cond_10

    .line 826
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 827
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 828
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 829
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_f
    :goto_4
    return v2

    .line 835
    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public finishLoadMore()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x1

    .line 2945
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishLoadMore(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishLoadMore(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3104
    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public finishLoadMore(IZZ)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 p1, p1, 0x10

    shr-int/lit8 p1, p1, 0x10

    .line 3131
    new-instance v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;IZZ)V

    if-lez p1, :cond_0

    .line 3261
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3263
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-object p0
.end method

.method public finishLoadMore(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 4

    .line 3115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    long-to-int v0, v0

    const/16 v1, 0x12c

    rsub-int v0, v0, 0x12c

    .line 3116
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0, p1, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public finishLoadMoreWithNoMoreData()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 4

    .line 3275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x12c

    rsub-int v0, v0, 0x12c

    const/4 v2, 0x0

    .line 3276
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishRefresh()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x1

    .line 2935
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishRefresh(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishRefresh(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 2

    .line 2956
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 p1, p1, 0x10

    shr-int/lit8 p1, p1, 0x10

    .line 2988
    new-instance v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;ILjava/lang/Boolean;Z)V

    if-lez p1, :cond_0

    .line 3078
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3080
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-object p0
.end method

.method public finishRefresh(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2968
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v1, v3

    long-to-int p1, v1

    const/16 v1, 0x12c

    rsub-int p1, p1, 0x12c

    .line 2969
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    const/4 v0, 0x1

    .line 2970
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 2972
    invoke-virtual {p0, v0, v0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public finishRefreshWithNoMoreData()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 4

    .line 3092
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x12c

    rsub-int v0, v0, 0x12c

    const/4 v2, 0x0

    .line 3093
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1816
    new-instance v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 0

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
    .locals 2

    .line 2742
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v1, v0, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRefreshHeader()Lcom/scwang/smart/refresh/layout/api/RefreshHeader;
    .locals 2

    .line 2753
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v1, v0, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getState()Lcom/scwang/smart/refresh/layout/constant/RefreshState;
    .locals 1

    .line 2764
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    return-object v0
.end method

.method protected interceptAnimatorByAction(I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_5

    .line 1154
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1155
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne p1, v2, :cond_0

    goto :goto_1

    .line 1158
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne p1, v2, :cond_1

    .line 1159
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {p1, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto :goto_0

    .line 1160
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne p1, v2, :cond_2

    .line 1161
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {p1, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 1163
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1164
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1165
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    .line 1167
    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1169
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method protected isEnableRefreshOrLoadMore(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1388
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePureScrollMode:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z
    .locals 0

    if-nez p1, :cond_1

    .line 1378
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePureScrollMode:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object p1

    sget-object p2, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
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
    .locals 16

    move-object/from16 v0, p0

    .line 1696
    iget-boolean v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedInProgress:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    if-nez v1, :cond_0

    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    .line 1697
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    .line 1724
    :goto_0
    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScreenHeightPixels:I

    mul-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    sget v3, Lcom/scwang/smart/refresh/layout/kernel/R$id;->srl_tag:I

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    iget v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScreenHeightPixels:I

    int-to-float v6, v5

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v6, v7

    cmpg-float v3, v3, v6

    if-gez v3, :cond_1

    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    int-to-float v5, v5

    const/high16 v6, 0x41800000    # 16.0f

    div-float/2addr v5, v6

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    const-string/jumbo v3, "\u4f60\u8fd9\u4e48\u6b7b\u62c9\uff0c\u81e3\u59be\u505a\u4e0d\u5230\u554a\uff01"

    .line 1726
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1727
    sget v5, Lcom/scwang/smart/refresh/layout/kernel/R$id;->srl_tag:I

    invoke-virtual {v0, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1729
    :cond_1
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    const/4 v6, 0x1

    if-ne v3, v5, :cond_2

    cmpl-float v3, v1, v2

    if-lez v3, :cond_2

    .line 1730
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    float-to-int v5, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v3, v5, v6}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto/16 :goto_4

    .line 1731
    :cond_2
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    const/high16 v11, 0x41200000    # 10.0f

    if-ne v3, v5, :cond_6

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_6

    .line 1732
    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v5, v3

    cmpg-float v5, v1, v5

    if-gez v5, :cond_3

    .line 1733
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    float-to-int v5, v1

    invoke-interface {v3, v5, v6}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto/16 :goto_4

    .line 1735
    :cond_3
    iget v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float v11, v5, v11

    if-gez v11, :cond_4

    int-to-float v11, v3

    mul-float/2addr v5, v11

    :cond_4
    int-to-float v3, v3

    sub-float/2addr v5, v3

    float-to-double v14, v5

    .line 1737
    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScreenHeightPixels:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    sub-int/2addr v3, v5

    int-to-double v12, v3

    int-to-float v3, v5

    sub-float v3, v1, v3

    .line 1738
    iget v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragRate:F

    mul-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-double v4, v3

    neg-double v2, v4

    cmpl-double v7, v12, v7

    if-nez v7, :cond_5

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :cond_5
    div-double/2addr v2, v12

    .line 1739
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v12, v7, v2

    mul-double/2addr v14, v12

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1740
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    double-to-int v2, v2

    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    add-int/2addr v2, v3

    invoke-interface {v4, v2, v6}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto/16 :goto_4

    :cond_6
    cmpg-float v3, v1, v2

    if-gez v3, :cond_c

    .line 1742
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v2, v3, :cond_8

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 1743
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v2, :cond_c

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_c

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 1744
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1745
    :cond_8
    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    neg-int v3, v2

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_9

    .line 1746
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    float-to-int v3, v1

    invoke-interface {v2, v3, v6}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto/16 :goto_4

    .line 1748
    :cond_9
    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    cmpg-float v4, v3, v11

    if-gez v4, :cond_a

    int-to-float v4, v2

    mul-float/2addr v3, v4

    :cond_a
    int-to-float v2, v2

    sub-float/2addr v3, v2

    float-to-double v2, v3

    .line 1750
    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScreenHeightPixels:I

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    sub-int/2addr v4, v5

    int-to-double v11, v4

    int-to-float v4, v5

    add-float/2addr v4, v1

    .line 1751
    iget v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragRate:F

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    neg-float v4, v4

    float-to-double v4, v4

    neg-double v13, v4

    cmpl-double v7, v11, v7

    if-nez v7, :cond_b

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    :cond_b
    div-double/2addr v13, v11

    .line 1752
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v12, v9, v7

    mul-double/2addr v2, v12

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    neg-double v2, v2

    .line 1753
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    double-to-int v2, v2

    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    sub-int/2addr v2, v3

    invoke-interface {v4, v2, v6}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto/16 :goto_4

    :cond_c
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_f

    .line 1756
    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float v3, v2, v11

    if-gez v3, :cond_d

    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-double v2, v3

    goto :goto_1

    :cond_d
    float-to-double v2, v2

    .line 1757
    :goto_1
    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScreenHeightPixels:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    .line 1758
    iget v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragRate:F

    mul-float/2addr v11, v1

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    float-to-double v11, v11

    neg-double v13, v11

    cmpl-double v7, v4, v7

    if-nez v7, :cond_e

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :cond_e
    div-double/2addr v13, v4

    .line 1759
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v4, v7, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1760
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    double-to-int v2, v2

    invoke-interface {v4, v2, v6}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto :goto_4

    .line 1762
    :cond_f
    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    cmpg-float v3, v2, v11

    if-gez v3, :cond_10

    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-double v2, v3

    goto :goto_2

    :cond_10
    float-to-double v2, v2

    .line 1763
    :goto_2
    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScreenHeightPixels:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    .line 1764
    iget v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragRate:F

    mul-float/2addr v11, v1

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    neg-float v11, v11

    float-to-double v11, v11

    neg-double v13, v11

    cmpl-double v7, v4, v7

    if-nez v7, :cond_11

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_11
    move-wide v7, v4

    :goto_3
    div-double/2addr v13, v7

    .line 1765
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v4, v7, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    neg-double v2, v2

    .line 1766
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    double-to-int v2, v2

    invoke-interface {v4, v2, v6}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 1768
    :goto_4
    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v2, :cond_13

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_13

    iget-boolean v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_13

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_13

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_13

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_13

    .line 1772
    iget-boolean v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenLoading:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    .line 1773
    iput-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1774
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    neg-int v2, v2

    invoke-interface {v1, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_12
    const/4 v1, 0x0

    .line 1776
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setStateDirectLoading(Z)V

    .line 1780
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$5;

    invoke-direct {v2, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$5;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;)V

    iget v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    return-void
.end method

.method protected notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V
    .locals 4

    .line 1180
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, p1, :cond_3

    .line 1182
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 1183
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 1184
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 1185
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 1186
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-eqz v1, :cond_0

    .line 1188
    invoke-interface {v1, p0, v0, p1}, Lcom/scwang/smart/refresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Lcom/scwang/smart/refresh/layout/constant/RefreshState;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 1191
    invoke-interface {v2, p0, v0, p1}, Lcom/scwang/smart/refresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Lcom/scwang/smart/refresh/layout/constant/RefreshState;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 1194
    invoke-interface {v3, p0, v0, p1}, Lcom/scwang/smart/refresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Lcom/scwang/smart/refresh/layout/constant/RefreshState;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 1196
    :cond_2
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    .line 1197
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    goto :goto_0

    .line 1199
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_4

    .line 1203
    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    :cond_4
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 382
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mAttachedToWindow:Z

    .line 386
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_c

    .line 388
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-nez v1, :cond_1

    .line 389
    sget-object v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sHeaderCreator:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshHeaderCreator;

    if-eqz v1, :cond_1

    .line 390
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshHeaderCreator;->createRefreshHeader(Landroid/content/Context;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smart/refresh/layout/api/RefreshHeader;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    goto :goto_0

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DefaultRefreshHeaderCreator can not return null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 399
    sget-object v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sFooterCreator:Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshFooterCreator;

    if-eqz v0, :cond_6

    .line 400
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshFooterCreator;->createRefreshFooter(Landroid/content/Context;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 405
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setRefreshFooter(Lcom/scwang/smart/refresh/layout/api/RefreshFooter;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    goto :goto_2

    .line 403
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DefaultRefreshFooterCreator can not return null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_3
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualLoadMore:Z

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :cond_5
    :goto_1
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 411
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-nez v0, :cond_a

    .line 412
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->getChildCount()I

    move-result v0

    move v1, v2

    :goto_3
    if-ge v1, v0, :cond_a

    .line 413
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 414
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_9

    :cond_7
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v4, :cond_8

    .line 415
    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_9

    .line 416
    :cond_8
    new-instance v4, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-direct {v4, v3}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 420
    :cond_a
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-nez v0, :cond_b

    const/high16 v0, 0x41a00000    # 20.0f

    .line 421
    invoke-static {v0}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v1

    .line 422
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, -0x9a00

    .line 423
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x11

    .line 424
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 425
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 426
    sget v0, Lcom/scwang/smart/refresh/layout/kernel/R$string;->srl_content_empty:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 427
    new-instance v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v3, v2, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 428
    new-instance v0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-direct {v0, v3}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    .line 429
    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 432
    :cond_b
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedHeaderViewId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 433
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedFooterViewId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 435
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;

    invoke-interface {v3, v4}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->setScrollBoundaryDecider(Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;)V

    .line 436
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    invoke-interface {v3, v4}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->setEnableLoadMoreWhenContentNotFull(Z)V

    .line 437
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v3, v4, v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->setUpComponent(Lcom/scwang/smart/refresh/layout/api/RefreshKernel;Landroid/view/View;Landroid/view/View;)V

    .line 439
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-eqz v0, :cond_c

    .line 440
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTranslationViewId:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTranslationViewId:I

    invoke-interface {v0, v2, v1, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->moveSpinner(III)V

    .line 446
    :cond_c
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    if-eqz v0, :cond_e

    .line 447
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v1, :cond_d

    .line 448
    invoke-interface {v1, v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->setPrimaryColors([I)V

    .line 450
    :cond_d
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_e

    .line 451
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->setPrimaryColors([I)V

    .line 456
    :cond_e
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v0, :cond_f

    .line 457
    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 459
    :cond_f
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_10

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

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .line 718
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 719
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mAttachedToWindow:Z

    const/4 v1, 0x1

    .line 720
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualLoadMore:Z

    const/4 v2, 0x0

    .line 721
    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 722
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 724
    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    .line 725
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 726
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 727
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 728
    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 736
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
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 758
    :cond_5
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    .line 759
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    .line 328
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->onFinishInflate()V

    .line 329
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_11

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    move v6, v4

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v0, :cond_4

    .line 337
    invoke-super {p0, v4}, Lcom/xiaopeng/xui/widget/XViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 338
    invoke-static {v9}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->isContentView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-lt v6, v7, :cond_0

    if-ne v4, v8, :cond_1

    :cond_0
    move v5, v4

    move v6, v7

    goto :goto_2

    .line 341
    :cond_1
    instance-of v7, v9, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-nez v7, :cond_3

    if-ge v6, v8, :cond_3

    if-lez v4, :cond_2

    move v6, v8

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    move v5, v4

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-ltz v5, :cond_7

    .line 350
    new-instance v4, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-super {p0, v5}, Lcom/xiaopeng/xui/widget/XViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-ne v5, v8, :cond_6

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    move v7, v2

    :goto_3
    move v1, v3

    goto :goto_4

    :cond_6
    if-ne v0, v7, :cond_7

    move v1, v2

    move v7, v8

    goto :goto_4

    :cond_7
    move v1, v2

    move v7, v1

    :goto_4
    move v4, v3

    :goto_5
    if-ge v4, v0, :cond_10

    .line 362
    invoke-super {p0, v4}, Lcom/xiaopeng/xui/widget/XViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v4, v1, :cond_d

    if-eq v4, v7, :cond_8

    if-ne v1, v2, :cond_8

    .line 363
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-nez v6, :cond_8

    instance-of v6, v5, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v6, :cond_8

    goto :goto_9

    :cond_8
    if-eq v4, v7, :cond_9

    if-ne v7, v2, :cond_f

    .line 365
    instance-of v6, v5, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v6, :cond_f

    .line 366
    :cond_9
    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualLoadMore:Z

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    move v6, v3

    goto :goto_7

    :cond_b
    :goto_6
    move v6, v8

    :goto_7
    iput-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 367
    instance-of v6, v5, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v6, :cond_c

    check-cast v5, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    goto :goto_8

    :cond_c
    new-instance v6, Lcom/scwang/smart/refresh/layout/wrapper/RefreshFooterWrapper;

    invoke-direct {v6, v5}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshFooterWrapper;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_8
    iput-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    goto :goto_b

    .line 364
    :cond_d
    :goto_9
    instance-of v6, v5, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v6, :cond_e

    check-cast v5, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    goto :goto_a

    :cond_e
    new-instance v6, Lcom/scwang/smart/refresh/layout/wrapper/RefreshHeaderWrapper;

    invoke-direct {v6, v5}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshHeaderWrapper;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_a
    iput-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    :cond_f
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_10
    return-void

    .line 331
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u6700\u591a\u53ea\u652f\u63013\u4e2a\u5b50View\uff0cMost only support three sub view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 628
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 629
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 630
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 632
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    move p5, p4

    :goto_0
    if-ge p5, p3, :cond_13

    .line 633
    invoke-super {p0, p5}, Lcom/xiaopeng/xui/widget/XViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 635
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_12

    sget v1, Lcom/scwang/smart/refresh/layout/kernel/R$id;->srl_tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "GONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_c

    .line 639
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_4

    .line 640
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, p4

    .line 641
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v3

    .line 642
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 643
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 644
    :goto_2
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, p1

    .line 645
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, p2

    .line 646
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 647
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-eqz v1, :cond_3

    .line 648
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {p0, v1, v8}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 649
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    add-int/2addr v4, v1

    add-int/2addr v7, v1

    .line 653
    :cond_3
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 655
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_8

    .line 656
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, p4

    .line 657
    :goto_3
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v3

    .line 658
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 659
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_6

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_4

    :cond_6
    sget-object v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 660
    :goto_4
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 661
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderInsetStart:I

    add-int/2addr v4, v6

    .line 662
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 663
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-nez v1, :cond_7

    .line 665
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v8, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v1, v8, :cond_7

    .line 666
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    sub-int/2addr v4, v1

    sub-int/2addr v7, v1

    .line 675
    :cond_7
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 677
    :cond_8
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_12

    .line 678
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move v2, p4

    .line 679
    :goto_5
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v0

    .line 680
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 681
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_a

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_6

    :cond_a
    sget-object v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 682
    :goto_6
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v3

    .line 683
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 684
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterInsetStart:I

    sub-int/2addr v5, v6

    .line 685
    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 686
    invoke-interface {v6}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v6

    sget-object v7, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v6, v7, :cond_c

    iget-boolean v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 687
    invoke-virtual {p0, v6}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 688
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v5

    .line 689
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 690
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_b

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_7

    :cond_b
    move v6, p4

    :goto_7
    add-int v7, p2, p2

    add-int/2addr v7, v6

    .line 691
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v7

    .line 694
    :cond_c
    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v3, v6, :cond_d

    .line 695
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterInsetStart:I

    sub-int v5, v1, v2

    goto :goto_b

    :cond_d
    if-nez v2, :cond_10

    .line 696
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedFront:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-eq v3, v1, :cond_10

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v3, v1, :cond_e

    goto :goto_9

    .line 700
    :cond_e
    iget-boolean v1, v3, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v1, :cond_11

    .line 701
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    neg-int v1, v1

    goto :goto_8

    :cond_f
    move v1, p4

    :goto_8
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_a

    .line 699
    :cond_10
    :goto_9
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    :goto_a
    sub-int/2addr v5, v1

    .line 704
    :cond_11
    :goto_b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v4

    .line 705
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v5

    .line 706
    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_12
    :goto_c
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 481
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 483
    :goto_0
    invoke-super/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v7, v6, :cond_22

    .line 484
    invoke-super {v0, v7}, Lcom/xiaopeng/xui/widget/XViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 486
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_21

    sget v11, Lcom/scwang/smart/refresh/layout/kernel/R$id;->srl_tag:I

    invoke-virtual {v10, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "GONE"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_12

    .line 490
    :cond_1
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v11, :cond_e

    invoke-interface {v11}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v11

    if-ne v11, v10, :cond_e

    .line 491
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v11}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v11

    .line 492
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 493
    instance-of v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v14, :cond_2

    move-object v14, v12

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_2
    sget-object v14, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 494
    :goto_2
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v13, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v13

    iget v13, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v4, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 495
    iget v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    .line 497
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget v5, v5, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->ordinal:I

    sget-object v15, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget v15, v15, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->ordinal:I

    if-ge v5, v15, :cond_7

    .line 498
    iget v5, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_4

    .line 499
    iget v5, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v13, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v13

    iget v13, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v13

    .line 500
    iget-object v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    sget-object v15, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v13, v15}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 501
    iget v12, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v13, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    iget v13, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iput v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    .line 502
    sget-object v12, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    :cond_3
    move v13, v5

    goto :goto_3

    .line 504
    :cond_4
    iget v5, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v12, -0x2

    if-ne v5, v12, :cond_7

    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v5

    sget-object v12, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v5, v12, :cond_5

    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean v5, v5, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v5, :cond_7

    .line 505
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v12, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v12

    iget v12, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v12

    const/4 v12, 0x0

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v12, -0x80000000

    .line 506
    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v11, v4, v15}, Landroid/view/View;->measure(II)V

    .line 507
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    if-lez v12, :cond_7

    if-eq v12, v5, :cond_6

    .line 510
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    sget-object v13, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v5, v13}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 511
    iget v5, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v5

    iget v5, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v5

    iput v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    .line 512
    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    :cond_6
    const/4 v13, -0x1

    .line 518
    :cond_7
    :goto_3
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v5

    sget-object v12, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v5, v12, :cond_8

    .line 519
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    const/4 v5, -0x1

    const/4 v12, 0x0

    goto :goto_6

    .line 520
    :cond_8
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v5

    iget-boolean v5, v5, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v5, :cond_a

    if-nez v3, :cond_a

    .line 521
    iget-boolean v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    :goto_4
    const/4 v12, 0x0

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_5

    :cond_a
    const/4 v12, 0x0

    :goto_5
    const/4 v5, -0x1

    :goto_6
    if-eq v13, v5, :cond_b

    .line 525
    iget v5, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v13, v5

    iget v5, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v13, v5

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v11, v4, v5}, Landroid/view/View;->measure(II)V

    .line 528
    :cond_b
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean v4, v4, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v4, :cond_d

    .line 529
    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    const/high16 v5, 0x41200000    # 10.0f

    cmpg-float v12, v4, v5

    if-gez v12, :cond_c

    iget v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    .line 530
    :cond_c
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v5}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified()Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    move-result-object v5

    iput-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 531
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget-object v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    float-to-int v4, v4

    invoke-interface {v5, v12, v13, v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onInitialized(Lcom/scwang/smart/refresh/layout/api/RefreshKernel;II)V

    :cond_d
    if-eqz v3, :cond_e

    .line 534
    iget-boolean v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 535
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v8, v4

    .line 536
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v9, v4

    .line 540
    :cond_e
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v4, :cond_1a

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v4, v10, :cond_1a

    .line 541
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v4

    .line 542
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 543
    instance-of v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v11, :cond_f

    move-object v11, v5

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_7

    :cond_f
    sget-object v11, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 544
    :goto_7
    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    iget v13, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v12, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v12

    .line 545
    iget v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    .line 547
    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget v14, v14, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->ordinal:I

    sget-object v15, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget v15, v15, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->ordinal:I

    if-ge v14, v15, :cond_13

    .line 548
    iget v14, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v14, :cond_10

    .line 549
    iget v13, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v14

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    .line 550
    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    sget-object v15, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v14, v15}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 551
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v14

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v14

    iput v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    .line 552
    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    goto :goto_8

    .line 554
    :cond_10
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v14, -0x2

    if-ne v5, v14, :cond_13

    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v5

    sget-object v14, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v5, v14, :cond_11

    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean v5, v5, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v5, :cond_13

    .line 555
    :cond_11
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v14

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v14

    const/4 v14, 0x0

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v14, -0x80000000

    .line 556
    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v4, v12, v14}, Landroid/view/View;->measure(II)V

    .line 557
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-lez v14, :cond_13

    if-eq v14, v5, :cond_12

    .line 560
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    sget-object v13, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v5, v13}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 561
    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v5

    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v5

    iput v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    .line 562
    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    :cond_12
    const/4 v5, -0x1

    goto :goto_9

    :cond_13
    :goto_8
    move v5, v13

    .line 568
    :goto_9
    iget-object v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v13}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v13

    sget-object v14, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v13, v14, :cond_15

    .line 569
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    :cond_14
    const/4 v13, 0x0

    goto :goto_b

    .line 570
    :cond_15
    iget-object v13, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v13}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v13

    iget-boolean v13, v13, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v13, :cond_14

    if-nez v3, :cond_14

    .line 571
    iget-boolean v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_16

    iget v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    neg-int v5, v5

    goto :goto_a

    :cond_16
    const/4 v5, 0x0

    :goto_a
    const/4 v13, 0x0

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_b
    const/4 v14, -0x1

    if-eq v5, v14, :cond_17

    .line 575
    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v14

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v11

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v12, v5}, Landroid/view/View;->measure(II)V

    .line 578
    :cond_17
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean v5, v5, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v5, :cond_19

    .line 579
    iget v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    const/high16 v11, 0x41200000    # 10.0f

    cmpg-float v11, v5, v11

    if-gez v11, :cond_18

    iget v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v11, v11

    mul-float/2addr v5, v11

    .line 580
    :cond_18
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v11}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified()Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    move-result-object v11

    iput-object v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 581
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget-object v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    float-to-int v5, v5

    invoke-interface {v11, v12, v14, v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onInitialized(Lcom/scwang/smart/refresh/layout/api/RefreshKernel;II)V

    :cond_19
    if-eqz v3, :cond_1b

    .line 584
    iget-boolean v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 585
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v8, v5

    .line 586
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v9, v4

    goto :goto_c

    :cond_1a
    const/4 v13, 0x0

    .line 590
    :cond_1b
    :goto_c
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v4, :cond_21

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v4, v10, :cond_21

    .line 591
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v4

    .line 592
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 593
    instance-of v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_1c

    move-object v10, v5

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_d

    :cond_1c
    sget-object v10, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 594
    :goto_d
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v11, :cond_1d

    iget-boolean v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v11}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v11

    if-eqz v11, :cond_1d

    iget-boolean v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {v0, v11, v12}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v11

    if-eqz v11, :cond_1d

    const/4 v12, 0x1

    goto :goto_e

    :cond_1d
    move v12, v13

    .line 595
    :goto_e
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v11, :cond_1e

    iget-boolean v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v11}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v11

    if-eqz v11, :cond_1e

    iget-boolean v11, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {v0, v11, v14}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v11

    if-eqz v11, :cond_1e

    const/4 v11, 0x1

    goto :goto_f

    :cond_1e
    move v11, v13

    .line 597
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    add-int/2addr v14, v15

    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v14, v15

    iget v15, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 596
    invoke-static {v1, v14, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v14

    .line 599
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    add-int v15, v15, v16

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v15, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v13

    if-eqz v3, :cond_1f

    if-eqz v12, :cond_1f

    iget v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    goto :goto_10

    :cond_1f
    const/4 v12, 0x0

    :goto_10
    add-int/2addr v15, v12

    if-eqz v3, :cond_20

    if-eqz v11, :cond_20

    iget v12, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    goto :goto_11

    :cond_20
    const/4 v12, 0x0

    :goto_11
    add-int/2addr v15, v12

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 598
    invoke-static {v2, v15, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 602
    invoke-virtual {v4, v14, v5}, Landroid/view/View;->measure(II)V

    .line 603
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v11

    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v11

    add-int/2addr v8, v5

    .line 604
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    add-int/2addr v9, v4

    :cond_21
    :goto_12
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 607
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v8, v3

    .line 608
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v9, v3

    .line 610
    invoke-super/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    .line 611
    invoke-super/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    .line 609
    invoke-super {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XViewGroup;->setMeasuredDimension(II)V

    .line 613
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 1950
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 1945
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_2

    :cond_0
    neg-float p1, p3

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->startFlingIfNeed(F)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2

    .line 1885
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    mul-int v0, p3, p1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 1886
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 1887
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    .line 1888
    iput v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    move v1, p1

    goto :goto_0

    .line 1891
    :cond_0
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    move v1, p3

    .line 1893
    :goto_0
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->moveSpinnerInfinitely(F)V

    goto :goto_1

    :cond_1
    if-lez p3, :cond_2

    .line 1894
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    if-eqz v0, :cond_2

    sub-int/2addr p1, p3

    .line 1896
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float p1, p1

    .line 1897
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->moveSpinnerInfinitely(F)V

    move v1, p3

    .line 1901
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    sub-int/2addr p3, v1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    const/4 p1, 0x1

    .line 1902
    aget p2, p4, p1

    add-int/2addr p2, v1

    aput p2, p4, p1

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    .line 1909
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mParentOffsetInWindow:[I

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    .line 1916
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mParentOffsetInWindow:[I

    const/4 p4, 0x1

    aget p2, p2, p4

    add-int/2addr p5, p2

    if-gez p5, :cond_1

    .line 1917
    iget-boolean p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz p2, :cond_1

    :cond_0
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;->canRefresh(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_1
    if-lez p5, :cond_7

    iget-boolean p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz p2, :cond_7

    :cond_2
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    .line 1918
    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;->canLoadMore(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1919
    :cond_3
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p2, p2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-eqz p2, :cond_6

    .line 1924
    :cond_4
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    if-lez p5, :cond_5

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    :goto_0
    invoke-interface {p2, v0}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    if-nez p1, :cond_6

    .line 1927
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1930
    invoke-interface {p1, p4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1934
    :cond_6
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    sub-int/2addr p1, p5

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->moveSpinnerInfinitely(F)V

    .line 1937
    :cond_7
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    if-eqz p1, :cond_8

    if-gez p3, :cond_8

    const/4 p1, 0x0

    .line 1938
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    :cond_8
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 1867
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 1869
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    and-int/lit8 p2, p3, 0x2

    invoke-virtual {p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 1871
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    const/4 p1, 0x1

    .line 1872
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedInProgress:Z

    const/4 p1, 0x0

    .line 1874
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->interceptAnimatorByAction(I)Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .line 1859
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isNestedScrollingEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 1860
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    :cond_2
    :goto_1
    return p2
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    .line 1955
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1956
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedInProgress:Z

    .line 1959
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    .line 1960
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->overSpinner()V

    .line 1962
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 4064
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 4065
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->onVuiVisibilityChanged(I)V

    return-void
.end method

.method protected overSpinner()V
    .locals 4

    .line 1638
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1

    .line 1640
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mCurrentVelocity:I

    const/16 v1, -0x3e8

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1643
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFloorDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    .line 1645
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_f

    .line 1646
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->finishTwoLevel()Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto/16 :goto_1

    .line 1648
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 1649
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 1655
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_4

    .line 1656
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    if-le v0, v1, :cond_3

    .line 1657
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :cond_3
    if-gez v0, :cond_f

    .line 1659
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    .line 1661
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_5

    .line 1662
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto/16 :goto_1

    .line 1663
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_6

    .line 1664
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto/16 :goto_1

    .line 1665
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_7

    .line 1666
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto/16 :goto_1

    .line 1667
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_8

    .line 1668
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto :goto_1

    .line 1669
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_9

    .line 1670
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto :goto_1

    .line 1671
    :cond_9
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_a

    .line 1672
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_f

    .line 1673
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 1675
    :cond_a
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_b

    .line 1676
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_f

    .line 1677
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 1679
    :cond_b
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_c

    goto :goto_1

    .line 1685
    :cond_c
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-eqz v0, :cond_f

    .line 1686
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 1650
    :cond_d
    :goto_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    neg-int v3, v1

    if-ge v0, v3, :cond_e

    .line 1651
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    neg-int v1, v1

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_e
    if-lez v0, :cond_f

    .line 1653
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_f
    :goto_1
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .line 1086
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getScrollableView()Landroid/view/View;

    move-result-object v0

    .line 1087
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    instance-of v1, v0, Landroid/widget/AbsListView;

    if-nez v1, :cond_1

    .line 1088
    :cond_0
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1089
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableDisallowIntercept:Z

    .line 1090
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return-void
.end method

.method public resetNoMoreData()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x0

    .line 2925
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setNoMoreData(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public setDisableContentWhenLoading(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2562
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenLoading:Z

    return-object p0
.end method

.method public setDisableContentWhenRefresh(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2550
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDisableContentWhenRefresh:Z

    return-object p0
.end method

.method public setDragRate(F)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2206
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mDragRate:F

    return-object p0
.end method

.method public setEnableAutoLoadMore(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2354
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableAutoLoadMore:Z

    return-object p0
.end method

.method public setEnableClipFooterWhenFixedBehind(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2465
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    return-object p0
.end method

.method public setEnableClipHeaderWhenFixedBehind(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2453
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    return-object p0
.end method

.method public setEnableFooterFollowWhenNoMoreData(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2441
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    return-object p0
.end method

.method public setEnableFooterTranslationContent(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2341
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterTranslationContent:Z

    const/4 p1, 0x1

    .line 2342
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualFooterTranslationContent:Z

    return-object p0
.end method

.method public setEnableHeaderTranslationContent(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2328
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    const/4 p1, 0x1

    .line 2329
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualHeaderTranslationContent:Z

    return-object p0
.end method

.method public setEnableLoadMore(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x1

    .line 2304
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualLoadMore:Z

    .line 2305
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    return-object p0
.end method

.method public setEnableLoadMoreWhenContentNotFull(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1

    .line 2414
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    .line 2415
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v0, :cond_0

    .line 2416
    invoke-interface {v0, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->setEnableLoadMoreWhenContentNotFull(Z)V

    :cond_0
    return-object p0
.end method

.method public setEnableNestedScroll(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2477
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setNestedScrollingEnabled(Z)V

    return-object p0
.end method

.method public setEnableOverScrollBounce(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2366
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollBounce:Z

    return-object p0
.end method

.method public setEnableOverScrollDrag(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2429
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    return-object p0
.end method

.method public setEnablePureScrollMode(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2378
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnablePureScrollMode:Z

    return-object p0
.end method

.method public setEnableRefresh(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2316
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    return-object p0
.end method

.method public setEnableScrollContentWhenLoaded(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2390
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    return-object p0
.end method

.method public setEnableScrollContentWhenRefreshed(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2402
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    return-object p0
.end method

.method public setFixedFooterViewId(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2497
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedFooterViewId:I

    return-object p0
.end method

.method public setFixedHeaderViewId(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2487
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedHeaderViewId:I

    return-object p0
.end method

.method public setFooterHeight(F)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2103
    invoke-static {p1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setFooterHeightPx(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public setFooterHeightPx(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 6

    .line 2113
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    if-ne p1, v0, :cond_0

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
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mAttachedToWindow:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-eqz p1, :cond_5

    .line 2119
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object p1

    .line 2120
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-eq p1, v0, :cond_3

    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-nez v0, :cond_3

    .line 2129
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v0

    .line 2130
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2131
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2132
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2133
    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 2134
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2135
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterInsetStart:I

    sub-int/2addr v1, v3

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-eq p1, v3, :cond_2

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    :cond_2
    sub-int/2addr v1, v5

    .line 2136
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/view/View;->layout(IIII)V

    .line 2138
    :cond_3
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 2139
    :cond_4
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->CodeExact:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 2140
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    float-to-int p1, p1

    invoke-interface {v0, v1, v2, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onInitialized(Lcom/scwang/smart/refresh/layout/api/RefreshKernel;II)V

    goto :goto_1

    .line 2142
    :cond_5
    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->CodeExactUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    :cond_6
    :goto_1
    return-object p0
.end method

.method public setFooterInsetStart(F)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2181
    invoke-static {p1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterInsetStart:I

    return-object p0
.end method

.method public setFooterInsetStartPx(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2193
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterInsetStart:I

    return-object p0
.end method

.method public setFooterMaxDragRate(F)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 3

    .line 2238
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    .line 2239
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mAttachedToWindow:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 2240
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    .line 2241
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    float-to-int p1, p1

    invoke-interface {v0, v1, v2, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onInitialized(Lcom/scwang/smart/refresh/layout/api/RefreshKernel;II)V

    goto :goto_0

    .line 2243
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {p1}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    :goto_0
    return-object p0
.end method

.method public setFooterTranslationViewId(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2517
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTranslationViewId:I

    return-object p0
.end method

.method public setFooterTriggerRate(F)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2268
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    return-object p0
.end method

.method public setHeaderHeight(F)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2051
    invoke-static {p1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setHeaderHeightPx(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public setHeaderHeightPx(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 6

    .line 2061
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    if-ne p1, v0, :cond_0

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
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mAttachedToWindow:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-eqz p1, :cond_5

    .line 2067
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object p1

    .line 2068
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-eq p1, v0, :cond_3

    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-nez v0, :cond_3

    .line 2076
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v0

    .line 2077
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2078
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2079
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2080
    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 2081
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2082
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderInsetStart:I

    add-int/2addr v1, v3

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne p1, v3, :cond_2

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    :cond_2
    sub-int/2addr v1, v5

    .line 2083
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/view/View;->layout(IIII)V

    .line 2085
    :cond_3
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    :cond_4
    float-to-int p1, p1

    .line 2086
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->CodeExact:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 2087
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v0, v1, v2, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onInitialized(Lcom/scwang/smart/refresh/layout/api/RefreshKernel;II)V

    goto :goto_1

    .line 2089
    :cond_5
    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->CodeExactUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    :cond_6
    :goto_1
    return-object p0
.end method

.method public setHeaderInsetStart(F)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2156
    invoke-static {p1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderInsetStart:I

    return-object p0
.end method

.method public setHeaderInsetStartPx(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2168
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderInsetStart:I

    return-object p0
.end method

.method public setHeaderMaxDragRate(F)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 3

    .line 2219
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    .line 2220
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mAttachedToWindow:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 2221
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    :cond_0
    float-to-int p1, p1

    .line 2222
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v0, v1, v2, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onInitialized(Lcom/scwang/smart/refresh/layout/api/RefreshKernel;II)V

    goto :goto_0

    .line 2224
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {p1}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    :goto_0
    return-object p0
.end method

.method public setHeaderTranslationViewId(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2507
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTranslationViewId:I

    return-object p0
.end method

.method public setHeaderTriggerRate(F)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2256
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    return-object p0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1969
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableNestedScrolling:Z

    .line 1971
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setNoMoreData(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 2

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

    goto/16 :goto_0

    .line 2895
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eq v0, p1, :cond_3

    .line 2896
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    .line 2897
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v1, v0, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_3

    .line 2898
    check-cast v0, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v0, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;->setNoMoreData(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 2899
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    .line 2900
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 2901
    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object p1

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 2902
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 2903
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2904
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 2907
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    .line 2908
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Footer:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " NoMoreData is not supported.(\u4e0d\u652f\u6301NoMoreData\uff0c\u8bf7\u4f7f\u7528[ClassicsFooter]\u6216\u8005[\u81ea\u5b9a\u4e49Footer\u5e76\u5b9e\u73b0setNoMoreData\u65b9\u6cd5\u4e14\u8fd4\u56detrue])"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2909
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2910
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-object p0
.end method

.method public setOnLoadMoreListener(Lcom/scwang/smart/refresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1

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
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    return-object p0
.end method

.method public setOnMultiListener(Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2827
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    return-object p0
.end method

.method public setOnRefreshListener(Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2786
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshListener:Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;

    return-object p0
.end method

.method public setOnRefreshLoadMoreListener(Lcom/scwang/smart/refresh/layout/listener/OnRefreshLoadMoreListener;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1

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
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    return-object p0
.end method

.method public varargs setPrimaryColors([I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1

    .line 2839
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_0

    .line 2840
    invoke-interface {v0, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->setPrimaryColors([I)V

    .line 2842
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_1

    .line 2843
    invoke-interface {v0, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->setPrimaryColors([I)V

    .line 2845
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    return-object p0
.end method

.method public varargs setPrimaryColorsId([I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 4

    .line 2858
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2859
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2860
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    aget v3, p1, v1

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2862
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setPrimaryColors([I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    return-object p0
.end method

.method public setReboundDuration(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2292
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    return-object p0
.end method

.method public setReboundInterpolator(Landroid/view/animation/Interpolator;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 0

    .line 2280
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setRefreshContent(Landroid/view/View;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x0

    .line 2681
    invoke-virtual {p0, p1, v0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setRefreshContent(Landroid/view/View;II)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public setRefreshContent(Landroid/view/View;II)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1

    .line 2697
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v0, :cond_0

    .line 2698
    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, -0x1

    if-nez p2, :cond_1

    move p2, v0

    :cond_1
    if-nez p3, :cond_2

    move p3, v0

    .line 2707
    :cond_2
    new-instance v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;-><init>(II)V

    .line 2708
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 2709
    instance-of p3, p2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    if-eqz p3, :cond_3

    .line 2710
    move-object v0, p2

    check-cast v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    .line 2713
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-super {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2715
    new-instance p2, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-direct {p2, p1}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    .line 2716
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mAttachedToWindow:Z

    if-eqz p1, :cond_4

    .line 2717
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedHeaderViewId:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 2718
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFixedFooterViewId:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 2720
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;

    invoke-interface {p3, v0}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->setScrollBoundaryDecider(Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;)V

    .line 2721
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    invoke-interface {p3, v0}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->setEnableLoadMoreWhenContentNotFull(Z)V

    .line 2722
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {p3, v0, p1, p2}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->setUpComponent(Lcom/scwang/smart/refresh/layout/api/RefreshKernel;Landroid/view/View;Landroid/view/View;)V

    .line 2725
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object p1

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz p1, :cond_5

    .line 2726
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 2728
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object p1

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz p1, :cond_6

    .line 2729
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_6
    return-object p0
.end method

.method public setRefreshFooter(Lcom/scwang/smart/refresh/layout/api/RefreshFooter;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x0

    .line 2626
    invoke-virtual {p0, p1, v0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setRefreshFooter(Lcom/scwang/smart/refresh/layout/api/RefreshFooter;II)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public setRefreshFooter(Lcom/scwang/smart/refresh/layout/api/RefreshFooter;II)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 2

    .line 2641
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_0

    .line 2642
    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;->removeView(Landroid/view/View;)V

    .line 2644
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    const/4 v0, 0x0

    .line 2645
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

    if-nez p2, :cond_3

    const/4 p2, -0x1

    :cond_3
    if-nez p3, :cond_4

    const/4 p3, -0x2

    .line 2656
    :cond_4
    new-instance v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;-><init>(II)V

    .line 2657
    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 2658
    instance-of p2, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    if-eqz p2, :cond_5

    .line 2659
    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    .line 2661
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object p1

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz p1, :cond_6

    .line 2663
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-super {p0, p1, p2, v1}, Lcom/xiaopeng/xui/widget/XViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 2665
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1, v0, v1}, Lcom/xiaopeng/xui/widget/XViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2667
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz p2, :cond_7

    .line 2668
    invoke-interface {p2, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->setPrimaryColors([I)V

    :cond_7
    return-object p0
.end method

.method public setRefreshHeader(Lcom/scwang/smart/refresh/layout/api/RefreshHeader;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x0

    .line 2574
    invoke-virtual {p0, p1, v0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smart/refresh/layout/api/RefreshHeader;II)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public setRefreshHeader(Lcom/scwang/smart/refresh/layout/api/RefreshHeader;II)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 2

    .line 2589
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_0

    .line 2590
    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;->removeView(Landroid/view/View;)V

    .line 2592
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    const/4 v0, 0x0

    .line 2593
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderBackgroundColor:I

    .line 2594
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderNeedTouchEventWhenRefreshing:Z

    .line 2595
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    if-nez p2, :cond_1

    const/4 p2, -0x1

    :cond_1
    if-nez p3, :cond_2

    const/4 p3, -0x2

    .line 2601
    :cond_2
    new-instance v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;-><init>(II)V

    .line 2602
    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 2603
    instance-of p2, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    if-eqz p2, :cond_3

    .line 2604
    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;

    .line 2606
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object p1

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz p1, :cond_4

    .line 2608
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-super {p0, p1, p2, v1}, Lcom/xiaopeng/xui/widget/XViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2610
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1, v0, v1}, Lcom/xiaopeng/xui/widget/XViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2612
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPrimaryColors:[I

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz p2, :cond_5

    .line 2613
    invoke-interface {p2, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->setPrimaryColors([I)V

    :cond_5
    return-object p0
.end method

.method public setScrollBoundaryDecider(Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1

    .line 2876
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;

    .line 2877
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v0, :cond_0

    .line 2878
    invoke-interface {v0, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->setScrollBoundaryDecider(Lcom/scwang/smart/refresh/layout/listener/ScrollBoundaryDecider;)V

    :cond_0
    return-object p0
.end method

.method protected setStateDirectLoading(Z)V
    .locals 4

    .line 1212
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_6

    .line 1213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastOpenTime:J

    const/4 v0, 0x1

    .line 1226
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    .line 1227
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 1228
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLoadMoreListener:Lcom/scwang/smart/refresh/layout/listener/OnLoadMoreListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 1230
    invoke-interface {v0, p0}, Lcom/scwang/smart/refresh/layout/listener/OnLoadMoreListener;->onLoadMore(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    goto :goto_0

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-nez v0, :cond_1

    const/16 v0, 0x7d0

    .line 1233
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishLoadMore(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    .line 1235
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    const/high16 v1, 0x41200000    # 10.0f

    if-eqz v0, :cond_3

    .line 1236
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    cmpg-float v3, v2, v1

    if-gez v3, :cond_2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 1237
    :cond_2
    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    float-to-int v2, v2

    invoke-interface {v0, p0, v3, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onStartAnimator(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V

    .line 1239
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v2, v2, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v2, :cond_6

    if-eqz p1, :cond_4

    .line 1242
    invoke-interface {v0, p0}, Lcom/scwang/smart/refresh/layout/listener/OnLoadMoreListener;->onLoadMore(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    .line 1244
    :cond_4
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    cmpg-float v0, p1, v1

    if-gez v0, :cond_5

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 1245
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    check-cast v1, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    float-to-int p1, p1

    invoke-interface {v0, v1, v2, p1}, Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;->onFooterStartAnimator(Lcom/scwang/smart/refresh/layout/api/RefreshFooter;II)V

    :cond_6
    return-void
.end method

.method protected setStateLoading(Z)V
    .locals 5

    .line 1255
    new-instance v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$1;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Z)V

    .line 1264
    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 1265
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    invoke-interface {p1, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1267
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1269
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    const/high16 v2, 0x41200000    # 10.0f

    if-eqz v1, :cond_2

    .line 1272
    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    cmpg-float v4, v3, v2

    if-gez v4, :cond_1

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    .line 1273
    :cond_1
    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    float-to-int v3, v3

    invoke-interface {v1, p0, v4, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onReleased(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V

    .line 1275
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v4, v3, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v4, :cond_4

    .line 1277
    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    cmpg-float v2, v4, v2

    if-gez v2, :cond_3

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v2, v2

    mul-float/2addr v4, v2

    .line 1278
    :cond_3
    check-cast v3, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    float-to-int v4, v4

    invoke-interface {v1, v3, v2, v4}, Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;->onFooterReleased(Lcom/scwang/smart/refresh/layout/api/RefreshFooter;II)V

    :cond_4
    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 1282
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_5
    return-void
.end method

.method protected setStateRefreshing(Z)V
    .locals 5

    .line 1291
    new-instance v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Z)V

    .line 1319
    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 1320
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {p1, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1322
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1324
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    const/high16 v2, 0x41200000    # 10.0f

    if-eqz v1, :cond_2

    .line 1327
    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float v4, v3, v2

    if-gez v4, :cond_1

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    :cond_1
    float-to-int v3, v3

    .line 1328
    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v1, p0, v4, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onReleased(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V

    .line 1330
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v4, v3, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v4, :cond_4

    .line 1332
    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float v2, v4, v2

    if-gez v2, :cond_3

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v2, v2

    mul-float/2addr v4, v2

    :cond_3
    float-to-int v2, v4

    .line 1333
    check-cast v3, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v1, v3, v4, v2}, Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;->onHeaderReleased(Lcom/scwang/smart/refresh/layout/api/RefreshHeader;II)V

    :cond_4
    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 1337
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_5
    return-void
.end method

.method protected setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V
    .locals 2

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

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 4058
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->setVisibility(I)V

    .line 4059
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method

.method protected startFlingIfNeed(F)Z
    .locals 12

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 1100
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mCurrentVelocity:I

    int-to-float p1, p1

    .line 1113
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_9

    .line 1114
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_3

    .line 1121
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v1, :cond_1

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1124
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v1, v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isReleaseToOpening:Z

    if-eqz v1, :cond_3

    return v4

    .line 1122
    :cond_2
    :goto_0
    new-instance v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$FlingRunnable;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$FlingRunnable;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;F)V

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$FlingRunnable;->start()Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    return v4

    :cond_3
    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    .line 1128
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v1, :cond_8

    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v1, :cond_8

    :cond_5
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_6
    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    if-nez v0, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gtz v0, :cond_9

    .line 1137
    :cond_8
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mVerticalPermit:Z

    .line 1138
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    neg-float p1, p1

    float-to-int v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, -0x7fffffff

    const v11, 0x7fffffff

    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1139
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1141
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return v2
.end method
