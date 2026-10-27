.class Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;
.super Ljava/lang/Object;
.source "XSmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

.field final synthetic val$more:I

.field final synthetic val$noMoreData:Z

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;IZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    .line 3131
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->val$more:I

    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->val$noMoreData:Z

    iput-boolean p4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3132
    const/4 p2, 0x0

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->count:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .line 3135
    move-object/from16 v0, p0

    iget v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->count:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_5

    .line 3136
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v1, v6, :cond_0

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v1, v6, :cond_0

    .line 3138
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iput-object v2, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    goto/16 :goto_0

    .line 3139
    :cond_0
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v1, v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v1, v6, :cond_3

    :cond_1
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v1, v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v1, :cond_3

    .line 3146
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3147
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3148
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 3157
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v1, v5}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3158
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3160
    :cond_2
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3163
    :cond_3
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    if-eqz v1, :cond_4

    .line 3164
    iget v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->count:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->count:I

    .line 3165
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    iget v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->val$more:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3167
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3168
    return-void

    .line 3170
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->val$noMoreData:Z

    if-eqz v1, :cond_e

    .line 3171
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-virtual {v1, v4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setNoMoreData(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    goto/16 :goto_5

    .line 3174
    :cond_5
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->val$success:Z

    invoke-interface {v1, v6, v7}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onFinish(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Z)I

    move-result v1

    .line 3175
    .local v1, "startDelay":I
    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v6, v6, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v6, v6, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v6, v6, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v6, :cond_6

    .line 3176
    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v6, v6, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v7, v7, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    check-cast v7, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    iget-boolean v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->val$success:Z

    invoke-interface {v6, v7, v8}, Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;->onFooterFinish(Lcom/scwang/smart/refresh/layout/api/RefreshFooter;Z)V

    .line 3178
    :cond_6
    const v6, 0x7fffffff

    if-ge v1, v6, :cond_e

    .line 3180
    iget-boolean v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->val$noMoreData:Z

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v6, v6, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v6, v6, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v6, :cond_7

    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v6, v6, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    invoke-interface {v6}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    :cond_7
    move v4, v5

    .line 3181
    .local v4, "needHoldFooter":Z
    :goto_1
    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v6, v6, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-eqz v4, :cond_8

    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v7, v7, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v8, v8, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    neg-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_2

    :cond_8
    move v7, v5

    :goto_2
    sub-int/2addr v6, v7

    .line 3183
    .local v6, "offset":I
    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v7, v7, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    if-nez v7, :cond_9

    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v7, v7, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v7, :cond_c

    .line 3184
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 3185
    .local v16, "time":J
    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v7, v7, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v7, :cond_b

    .line 3186
    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v8, v8, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    iput v8, v7, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchY:F

    .line 3187
    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v8, v8, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    sub-int/2addr v8, v6

    iput v8, v7, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSpinner:I

    .line 3188
    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-boolean v5, v7, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mIsBeingDragged:Z

    .line 3189
    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v7, v7, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterTranslationContent:Z

    if-eqz v7, :cond_a

    move v7, v6

    goto :goto_3

    :cond_a
    move v7, v5

    .line 3190
    .local v7, "offsetY":I
    :goto_3
    iget-object v15, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v12, 0x0

    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v13, v8, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v8, v8, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    int-to-float v9, v7

    add-float/2addr v8, v9

    iget-object v9, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v9, v9, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSlop:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float v14, v8, v9

    const/16 v18, 0x0

    move-wide/from16 v8, v16

    move-wide/from16 v10, v16

    move-object v2, v15

    move/from16 v15, v18

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->access$401(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 3191
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v12, 0x2

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v13, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    int-to-float v8, v7

    add-float v14, v3, v8

    const/4 v15, 0x0

    move-wide/from16 v8, v16

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->access$501(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 3193
    .end local v7    # "offsetY":I
    :cond_b
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v2, :cond_c

    .line 3194
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput v5, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTotalUnconsumed:I

    .line 3195
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v12, 0x1

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v13, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v14, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchY:F

    const/4 v15, 0x0

    move-wide/from16 v8, v16

    move-wide/from16 v10, v16

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->access$601(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 3196
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-boolean v5, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mNestedInProgress:Z

    .line 3197
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput v5, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTouchSpinner:I

    .line 3201
    .end local v16    # "time":J
    :cond_c
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;

    invoke-direct {v3, v0, v6}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;I)V

    .line 3255
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v5, :cond_d

    int-to-long v7, v1

    goto :goto_4

    .line 3201
    :cond_d
    const-wide/16 v7, 0x0

    :goto_4
    invoke-virtual {v2, v3, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3258
    .end local v1    # "startDelay":I
    .end local v4    # "needHoldFooter":Z
    .end local v6    # "offset":I
    :cond_e
    :goto_5
    return-void
.end method
