.class Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;
.super Ljava/lang/Object;
.source "XSmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lamm;
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

    .line 2988
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->val$more:I

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->val$noMoreData:Ljava/lang/Boolean;

    iput-boolean p4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2989
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->count:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 2992
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->count:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 2993
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    sget-object v3, Lamo;->None:Lamo;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lamo;

    sget-object v3, Lamo;->Refreshing:Lamo;

    if-ne v0, v3, :cond_0

    .line 2995
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lamo;->None:Lamo;

    iput-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lamo;

    goto/16 :goto_0

    .line 2996
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    iget-boolean v0, v0, Lamo;->isHeader:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    iget-boolean v0, v0, Lamo;->isDragging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    sget-object v3, Lamo;->RefreshReleased:Lamo;

    if-ne v0, v3, :cond_3

    .line 3004
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3005
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3006
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 3015
    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    invoke-interface {v0, v2}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3016
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lamo;->None:Lamo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    goto :goto_0

    .line 3018
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lamo;->PullDownCanceled:Lamo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    goto :goto_0

    .line 3021
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    sget-object v1, Lamo;->Refreshing:Lamo;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lami;

    if-eqz v0, :cond_4

    .line 3022
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->count:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->count:I

    .line 3023
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->val$more:I

    int-to-long v5, v1

    invoke-virtual {v0, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3025
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lamo;->RefreshFinish:Lamo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    .line 3026
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->val$noMoreData:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    .line 3027
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setNoMoreData(Z)Lamm;

    .line 3030
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->val$noMoreData:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_d

    .line 3031
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setNoMoreData(Z)Lamm;

    goto/16 :goto_1

    .line 3034
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->val$success:Z

    invoke-interface {v0, v3, v4}, Lamh;->a(Lamm;Z)I

    move-result v0

    .line 3035
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lamw;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    instance-of v3, v3, Lamk;

    if-eqz v3, :cond_6

    .line 3036
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lamw;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    check-cast v4, Lamk;

    iget-boolean v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->val$success:Z

    invoke-interface {v3, v4, v5}, Lamw;->a(Lamk;Z)V

    :cond_6
    const v3, 0x7fffffff

    if-ge v0, v3, :cond_d

    .line 3041
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v3, :cond_9

    .line 3042
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 3043
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v3, :cond_8

    .line 3044
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    iput v4, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    .line 3045
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput v2, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSpinner:I

    .line 3046
    iput-boolean v2, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    const/4 v8, 0x0

    .line 3047
    iget v9, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSlop:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v10, v4, v5

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->access$101(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 3048
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v8, 0x2

    iget v9, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    int-to-float v5, v5

    add-float v10, v4, v5

    move-wide v4, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->access$201(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 3050
    :cond_8
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v3, :cond_9

    .line 3051
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput v2, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    const/4 v8, 0x1

    .line 3052
    iget v9, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v10, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->access$301(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 3053
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-boolean v2, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedInProgress:Z

    .line 3054
    iput v2, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSpinner:I

    .line 3057
    :cond_9
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-lez v3, :cond_b

    .line 3059
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v4, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    invoke-virtual {v3, v2, v0, v4, v5}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3060
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    if-eqz v2, :cond_a

    .line 3061
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lami;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    invoke-interface {v1, v2}, Lami;->a(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    :cond_a
    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    .line 3064
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 3066
    :cond_b
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v1, :cond_c

    .line 3067
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 3069
    :cond_c
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    invoke-interface {v0, v2, v2}, Laml;->moveSpinner(IZ)Laml;

    .line 3071
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    sget-object v1, Lamo;->None:Lamo;

    invoke-interface {v0, v1}, Laml;->setState(Lamo;)Laml;

    :cond_d
    :goto_1
    return-void
.end method
