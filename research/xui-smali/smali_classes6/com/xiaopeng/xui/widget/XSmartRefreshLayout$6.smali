.class Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;
.super Ljava/lang/Object;
.source "XSmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

.field final synthetic val$more:I

.field final synthetic val$noMoreData:Ljava/lang/Boolean;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;ILjava/lang/Boolean;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    .line 2988
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->val$more:I

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->val$noMoreData:Ljava/lang/Boolean;

    iput-boolean p4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2989
    const/4 p2, 0x0

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->count:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 2992
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->count:I

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 2993
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v2, :cond_0

    .line 2995
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iput-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    goto/16 :goto_0

    .line 2996
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v2, :cond_3

    .line 3004
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3005
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3006
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 3015
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3016
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3018
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3021
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v0, :cond_4

    .line 3022
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->count:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->count:I

    .line 3023
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->val$more:I

    int-to-long v4, v2

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3025
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3026
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->val$noMoreData:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v2, :cond_4

    .line 3027
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setNoMoreData(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    .line 3030
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->val$noMoreData:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_e

    .line 3031
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setNoMoreData(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    goto/16 :goto_1

    .line 3034
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->val$success:Z

    invoke-interface {v0, v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onFinish(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Z)I

    move-result v0

    .line 3035
    .local v0, "startDelay":I
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v2, v2, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v2, :cond_6

    .line 3036
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    check-cast v3, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->val$success:Z

    invoke-interface {v2, v3, v4}, Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;->onHeaderFinish(Lcom/scwang/smart/refresh/layout/api/RefreshHeader;Z)V

    .line 3039
    :cond_6
    const v2, 0x7fffffff

    if-ge v0, v2, :cond_e

    .line 3041
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v2, :cond_9

    .line 3042
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 3043
    .local v11, "time":J
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_8

    .line 3044
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    iput v3, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    .line 3045
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput v1, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSpinner:I

    .line 3046
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-boolean v1, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    .line 3047
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v8, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSlop:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v9, v3, v4

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v5, v11

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->access$101(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 3048
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v7, 0x2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v8, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    int-to-float v4, v4

    add-float v9, v3, v4

    move-wide v3, v11

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->access$201(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 3050
    :cond_8
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v2, :cond_9

    .line 3051
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput v1, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    .line 3052
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v8, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v9, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v5, v11

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->access$301(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 3053
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-boolean v1, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedInProgress:Z

    .line 3054
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput v1, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSpinner:I

    .line 3057
    .end local v11    # "time":J
    :cond_9
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-lez v2, :cond_c

    .line 3058
    const/4 v2, 0x0

    .line 3059
    .local v2, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    invoke-virtual {v3, v1, v0, v4, v5}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 3060
    .local v1, "valueAnimator":Landroid/animation/ValueAnimator;
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    if-eqz v3, :cond_a

    .line 3061
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    invoke-interface {v3, v4}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->scrollContentWhenFinished(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    .line 3063
    :cond_a
    if-eqz v1, :cond_b

    if-eqz v2, :cond_b

    .line 3064
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3066
    .end local v1    # "valueAnimator":Landroid/animation/ValueAnimator;
    .end local v2    # "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_b
    goto :goto_1

    :cond_c
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v2, :cond_d

    .line 3067
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 3069
    :cond_d
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v2, v1, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 3071
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v1, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 3075
    .end local v0    # "startDelay":I
    :cond_e
    :goto_1
    return-void
.end method
