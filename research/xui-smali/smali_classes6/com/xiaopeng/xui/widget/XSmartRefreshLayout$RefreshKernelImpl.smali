.class public Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;
.super Ljava/lang/Object;
.source "XSmartRefreshLayout.java"

# interfaces
.implements Lcom/scwang/smart/refresh/layout/api/RefreshKernel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefreshKernelImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    .line 3572
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animSpinner(I)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "endSpinner"    # I

    .line 3918
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public finishTwoLevel()Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 3

    .line 3731
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1

    .line 3732
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevelFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 3733
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3734
    invoke-virtual {p0, v1, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 3735
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3737
    :cond_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFloorDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3740
    :cond_1
    :goto_0
    return-object p0
.end method

.method public getRefreshContent()Lcom/scwang/smart/refresh/layout/api/RefreshContent;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3583
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    return-object v0
.end method

.method public getRefreshLayout()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3577
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    return-object v0
.end method

.method public moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 18
    .param p1, "spinner"    # I
    .param p2, "isDragging"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3757
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-ne v2, v1, :cond_2

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 3758
    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->isSupportHorizontalDrag()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 3759
    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->isSupportHorizontalDrag()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3760
    :cond_1
    return-object v0

    .line 3762
    :cond_2
    iget-object v9, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    .line 3763
    .local v9, "thisView":Landroid/view/View;
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v10, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    .line 3764
    .local v10, "oldSpinner":I
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput v1, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    .line 3767
    const/high16 v11, 0x41200000    # 10.0f

    if-eqz p2, :cond_9

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-eqz v2, :cond_9

    .line 3768
    :cond_3
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    cmpg-float v3, v3, v11

    if-gez v3, :cond_4

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    mul-float/2addr v3, v4

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    :goto_0
    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 3769
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v2, v3, :cond_9

    .line 3770
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto :goto_2

    .line 3772
    :cond_5
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    cmpg-float v3, v3, v11

    if-gez v3, :cond_6

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    mul-float/2addr v3, v4

    goto :goto_1

    :cond_6
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    :goto_1
    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_7

    .line 3773
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto :goto_2

    .line 3774
    :cond_7
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-gez v2, :cond_8

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_8

    .line 3775
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto :goto_2

    .line 3776
    :cond_8
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-lez v2, :cond_9

    .line 3777
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 3780
    :cond_9
    :goto_2
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    const/4 v13, 0x0

    if-eqz v2, :cond_17

    .line 3781
    const/4 v2, 0x0

    .line 3782
    .local v2, "tSpinner":I
    const/4 v3, 0x0

    .line 3786
    .local v3, "changed":Z
    if-ltz v1, :cond_b

    .line 3787
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v6, v6, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3788
    const/4 v3, 0x1

    .line 3789
    move v2, v1

    goto :goto_3

    .line 3790
    :cond_a
    if-gez v10, :cond_b

    .line 3791
    const/4 v3, 0x1

    .line 3792
    const/4 v2, 0x0

    .line 3798
    :cond_b
    :goto_3
    if-gtz v1, :cond_d

    .line 3799
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v6, v6, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3800
    const/4 v3, 0x1

    .line 3801
    move v2, v1

    goto :goto_4

    .line 3802
    :cond_c
    if-lez v10, :cond_d

    .line 3803
    const/4 v3, 0x1

    .line 3804
    const/4 v2, 0x0

    .line 3807
    :cond_d
    :goto_4
    if-eqz v3, :cond_17

    .line 3808
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTranslationViewId:I

    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v6, v6, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTranslationViewId:I

    invoke-interface {v4, v2, v5, v6}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->moveSpinner(III)V

    .line 3809
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v4, v4, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 3810
    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v4

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v4, v5, :cond_e

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 3811
    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3812
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v4

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 3814
    :cond_e
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v4

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v4, v5, :cond_f

    const/4 v4, 0x1

    goto :goto_5

    :cond_f
    move v4, v13

    .line 3815
    .local v4, "header":Z
    :goto_5
    if-nez v4, :cond_11

    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v5, :cond_10

    goto :goto_6

    :cond_10
    move v5, v13

    goto :goto_7

    :cond_11
    :goto_6
    const/4 v5, 0x1

    :goto_7
    move v4, v5

    .line 3816
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    if-eqz v5, :cond_12

    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v5, :cond_12

    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v5

    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v5, v6, :cond_12

    const/4 v5, 0x1

    goto :goto_8

    :cond_12
    move v5, v13

    .line 3817
    .local v5, "footer":Z
    :goto_8
    if-nez v5, :cond_14

    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v6, v6, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v6, :cond_13

    goto :goto_9

    :cond_13
    move v6, v13

    goto :goto_a

    :cond_14
    :goto_9
    const/4 v6, 0x1

    :goto_a
    move v5, v6

    .line 3818
    if-eqz v4, :cond_15

    if-gez v2, :cond_16

    if-gtz v10, :cond_16

    :cond_15
    if-eqz v5, :cond_17

    if-lez v2, :cond_16

    if-gez v10, :cond_17

    .line 3819
    :cond_16
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 3823
    .end local v2    # "tSpinner":I
    .end local v3    # "changed":Z
    .end local v4    # "header":Z
    .end local v5    # "footer":Z
    :cond_17
    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    if-gez v1, :cond_19

    if-lez v10, :cond_18

    goto :goto_b

    .line 3869
    :cond_18
    move v14, v8

    goto/16 :goto_14

    .line 3823
    :cond_19
    :goto_b
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v2, :cond_18

    .line 3825
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 3826
    .local v7, "offset":I
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v6, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    .line 3827
    .local v6, "headerHeight":I
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float v2, v2, v11

    if-gez v2, :cond_1a

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float/2addr v2, v3

    goto :goto_c

    :cond_1a
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    :goto_c
    float-to-int v5, v2

    .line 3828
    .local v5, "maxDragHeight":I
    int-to-float v2, v7

    mul-float/2addr v2, v14

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    cmpg-float v3, v3, v11

    if-gez v3, :cond_1b

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    goto :goto_d

    :cond_1b
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    :goto_d
    div-float v15, v2, v3

    .line 3830
    .local v15, "percent":F
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v2, v3, :cond_1c

    if-nez p2, :cond_1c

    goto :goto_e

    .line 3864
    :cond_1c
    move v11, v5

    move v12, v6

    move v13, v7

    goto/16 :goto_13

    .line 3831
    :cond_1d
    :goto_e
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-eq v10, v2, :cond_21

    .line 3832
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v2

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v2, v3, :cond_1e

    .line 3833
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 3834
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 3835
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_10

    .line 3837
    :cond_1e
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v2

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v2, :cond_20

    .line 3845
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v2

    .line 3846
    .local v2, "headerView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3847
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_1f

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_f

    :cond_1f
    sget-object v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3848
    .local v4, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_f
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v12, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 3849
    .local v12, "widthSpec":I
    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v14, v14, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v14, v11

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v14, v11

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v11, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v2, v12, v11}, Landroid/view/View;->measure(II)V

    .line 3850
    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3851
    .local v11, "left":I
    iget v14, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v8, v8, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderInsetStart:I

    add-int/2addr v14, v8

    .line 3852
    .local v14, "top":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v11

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v13, v14, v16

    invoke-virtual {v2, v11, v14, v8, v13}, Landroid/view/View;->layout(IIII)V

    .line 3854
    .end local v2    # "headerView":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11    # "left":I
    .end local v12    # "widthSpec":I
    .end local v14    # "top":I
    :cond_20
    :goto_10
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    move/from16 v3, p2

    move v4, v15

    move v11, v5

    move v5, v7

    .end local v5    # "maxDragHeight":I
    .local v11, "maxDragHeight":I
    move v12, v6

    .end local v6    # "headerHeight":I
    .local v12, "headerHeight":I
    move v13, v7

    move v7, v11

    .end local v7    # "offset":I
    .local v13, "offset":I
    invoke-interface/range {v2 .. v7}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onMoving(ZFIII)V

    goto :goto_11

    .line 3856
    .end local v11    # "maxDragHeight":I
    .end local v12    # "headerHeight":I
    .end local v13    # "offset":I
    .restart local v5    # "maxDragHeight":I
    .restart local v6    # "headerHeight":I
    .restart local v7    # "offset":I
    :cond_21
    move v11, v5

    move v12, v6

    move v13, v7

    .end local v5    # "maxDragHeight":I
    .end local v6    # "headerHeight":I
    .end local v7    # "offset":I
    .restart local v11    # "maxDragHeight":I
    .restart local v12    # "headerHeight":I
    .restart local v13    # "offset":I
    :goto_11
    if-eqz p2, :cond_23

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->isSupportHorizontalDrag()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 3857
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    float-to-int v2, v2

    .line 3858
    .local v2, "offsetX":I
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 3859
    .local v3, "offsetMax":I
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    if-nez v3, :cond_22

    const/4 v5, 0x1

    goto :goto_12

    :cond_22
    move v5, v3

    :goto_12
    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3860
    .local v4, "percentX":F
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v5, v4, v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onHorizontalDrag(FII)V

    .line 3864
    .end local v2    # "offsetX":I
    .end local v3    # "offsetMax":I
    .end local v4    # "percentX":F
    :cond_23
    :goto_13
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-eq v10, v2, :cond_24

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-eqz v2, :cond_24

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v2, v2, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v2, :cond_24

    .line 3865
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    check-cast v3, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    move/from16 v4, p2

    move v5, v15

    move v6, v13

    move v7, v12

    const/high16 v14, 0x40000000    # 2.0f

    move v8, v11

    invoke-interface/range {v2 .. v8}, Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;->onHeaderMoving(Lcom/scwang/smart/refresh/layout/api/RefreshHeader;ZFIII)V

    .end local v11    # "maxDragHeight":I
    .end local v12    # "headerHeight":I
    .end local v13    # "offset":I
    .end local v15    # "percent":F
    goto :goto_14

    .line 3869
    :cond_24
    const/high16 v14, 0x40000000    # 2.0f

    :goto_14
    if-lez v1, :cond_25

    if-gez v10, :cond_2f

    :cond_25
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v2, :cond_2f

    .line 3871
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    neg-int v11, v3

    .line 3872
    .local v11, "offset":I
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v12, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    .line 3873
    .local v12, "footerHeight":I
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_26

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    mul-float/2addr v2, v3

    goto :goto_15

    :cond_26
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    :goto_15
    float-to-int v13, v2

    .line 3874
    .local v13, "maxDragHeight":I
    int-to-float v2, v11

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_27

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    goto :goto_16

    :cond_27
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    :goto_16
    div-float v15, v2, v3

    .line 3876
    .restart local v15    # "percent":F
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v2, v3, :cond_2e

    if-nez p2, :cond_2e

    .line 3877
    :cond_28
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-eq v10, v2, :cond_2c

    .line 3878
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v2

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v2, v3, :cond_29

    .line 3879
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 3880
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v2, :cond_2b

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_2b

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 3881
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_18

    .line 3883
    :cond_29
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v2

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v2, :cond_2b

    .line 3891
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v2

    .line 3892
    .local v2, "footerView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3893
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_2a

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_17

    :cond_2a
    sget-object v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3894
    .local v4, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_17
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 3895
    .local v5, "widthSpec":I
    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v6, v6, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    neg-int v6, v6

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 3896
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3897
    .local v6, "left":I
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v8, v8, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterInsetStart:I

    sub-int/2addr v7, v8

    .line 3898
    .local v7, "bottom":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v6

    invoke-virtual {v2, v6, v8, v14, v7}, Landroid/view/View;->layout(IIII)V

    .line 3900
    .end local v2    # "footerView":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "widthSpec":I
    .end local v6    # "left":I
    .end local v7    # "bottom":I
    :cond_2b
    :goto_18
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    move/from16 v3, p2

    move v4, v15

    move v5, v11

    move v6, v12

    move v7, v13

    invoke-interface/range {v2 .. v7}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onMoving(ZFIII)V

    .line 3902
    :cond_2c
    if-eqz p2, :cond_2e

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->isSupportHorizontalDrag()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 3903
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    float-to-int v2, v2

    .line 3904
    .local v2, "offsetX":I
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 3905
    .local v3, "offsetMax":I
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    if-nez v3, :cond_2d

    const/4 v5, 0x1

    goto :goto_19

    :cond_2d
    move v5, v3

    :goto_19
    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3906
    .local v4, "percentX":F
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v5, v4, v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onHorizontalDrag(FII)V

    .line 3910
    .end local v2    # "offsetX":I
    .end local v3    # "offsetMax":I
    .end local v4    # "percentX":F
    :cond_2e
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-eq v10, v2, :cond_2f

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-eqz v2, :cond_2f

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v2, v2, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v2, :cond_2f

    .line 3911
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    check-cast v3, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    move/from16 v4, p2

    move v5, v15

    move v6, v11

    move v7, v12

    move v8, v13

    invoke-interface/range {v2 .. v8}, Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;->onFooterMoving(Lcom/scwang/smart/refresh/layout/api/RefreshFooter;ZFIII)V

    .line 3914
    .end local v11    # "offset":I
    .end local v12    # "footerHeight":I
    .end local v13    # "maxDragHeight":I
    .end local v15    # "percent":F
    :cond_2f
    return-object v0
.end method

.method public onAutoLoadMoreAnimationEnd(Landroid/animation/Animator;Z)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "animationOnly"    # Z

    .line 4009
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 4010
    return-object p0

    .line 4012
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 4013
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_2

    .line 4014
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_1

    .line 4015
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 4017
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setStateLoading(Z)V

    goto :goto_0

    .line 4022
    :cond_2
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 4024
    :goto_0
    return-object p0
.end method

.method public onAutoRefreshAnimationEnd(Landroid/animation/Animator;Z)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "animationOnly"    # Z

    .line 3989
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3990
    return-object p0

    .line 3992
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 3993
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_2

    .line 3994
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_1

    .line 3995
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 3997
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setStateRefreshing(Z)V

    goto :goto_0

    .line 4002
    :cond_2
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 4004
    :goto_0
    return-object p0
.end method

.method public requestDefaultTranslationContentFor(Lcom/scwang/smart/refresh/layout/api/RefreshComponent;Z)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 2
    .param p1, "internal"    # Lcom/scwang/smart/refresh/layout/api/RefreshComponent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "translation"    # Z

    .line 3949
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3950
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualHeaderTranslationContent:Z

    if-nez v0, :cond_1

    .line 3951
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-boolean v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualHeaderTranslationContent:Z

    .line 3952
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-boolean p2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    goto :goto_0

    .line 3954
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3955
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualFooterTranslationContent:Z

    if-nez v0, :cond_1

    .line 3956
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-boolean v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualFooterTranslationContent:Z

    .line 3957
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-boolean p2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterTranslationContent:Z

    .line 3960
    :cond_1
    :goto_0
    return-object p0
.end method

.method public requestDrawBackgroundFor(Lcom/scwang/smart/refresh/layout/api/RefreshComponent;I)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 2
    .param p1, "internal"    # Lcom/scwang/smart/refresh/layout/api/RefreshComponent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "backgroundColor"    # I

    .line 3926
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3927
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    .line 3929
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3930
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput p2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderBackgroundColor:I

    goto :goto_0

    .line 3931
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3932
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput p2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterBackgroundColor:I

    .line 3934
    :cond_2
    :goto_0
    return-object p0
.end method

.method public requestFloorBottomPullUpToCloseRate(F)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 1
    .param p1, "rate"    # F

    .line 3983
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput p1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTwoLevelBottomPullUpToCloseRate:F

    .line 3984
    return-object p0
.end method

.method public requestFloorDuration(I)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 1
    .param p1, "duration"    # I

    .line 3977
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput p1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFloorDuration:I

    .line 3978
    return-object p0
.end method

.method public requestNeedTouchEventFor(Lcom/scwang/smart/refresh/layout/api/RefreshComponent;Z)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 1
    .param p1, "internal"    # Lcom/scwang/smart/refresh/layout/api/RefreshComponent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "request"    # Z

    .line 3939
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3940
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-boolean p2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderNeedTouchEventWhenRefreshing:Z

    goto :goto_0

    .line 3941
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3942
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-boolean p2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNeedTouchEventWhenLoading:Z

    .line 3944
    :cond_1
    :goto_0
    return-object p0
.end method

.method public requestRemeasureHeightFor(Lcom/scwang/smart/refresh/layout/api/RefreshComponent;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 2
    .param p1, "internal"    # Lcom/scwang/smart/refresh/layout/api/RefreshComponent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3964
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3965
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-eqz v0, :cond_1

    .line 3966
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v1}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    goto :goto_0

    .line 3968
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3969
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-eqz v0, :cond_1

    .line 3970
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v1}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    .line 3973
    :cond_1
    :goto_0
    return-object p0
.end method

.method public setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 2
    .param p1, "state"    # Lcom/scwang/smart/refresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3589
    sget-object v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$10;->$SwitchMap$com$scwang$smart$refresh$layout$constant$RefreshState:[I

    invoke-virtual {p1}, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 3674
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3671
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setStateLoading(Z)V

    .line 3672
    goto/16 :goto_0

    .line 3668
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setStateRefreshing(Z)V

    .line 3669
    goto/16 :goto_0

    .line 3660
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3661
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3663
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3665
    goto/16 :goto_0

    .line 3652
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3653
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3655
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3657
    goto/16 :goto_0

    .line 3644
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3645
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3647
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3649
    goto/16 :goto_0

    .line 3637
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-nez v0, :cond_4

    .line 3638
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3640
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3642
    goto/16 :goto_0

    .line 3630
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3631
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3633
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3635
    goto/16 :goto_0

    .line 3621
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-nez v0, :cond_7

    .line 3622
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3624
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto/16 :goto_0

    .line 3626
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3628
    goto/16 :goto_0

    .line 3612
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3613
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3615
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto/16 :goto_0

    .line 3617
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3619
    goto/16 :goto_0

    .line 3605
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-nez v0, :cond_a

    .line 3606
    :cond_9
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3608
    :cond_a
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3610
    goto :goto_0

    .line 3598
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3599
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3601
    :cond_b
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3603
    goto :goto_0

    .line 3591
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-nez v0, :cond_c

    .line 3592
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3593
    :cond_c
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-eqz v0, :cond_d

    .line 3594
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    .line 3698
    :cond_d
    :goto_0
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startTwoLevel(Z)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 5
    .param p1, "open"    # Z

    .line 3703
    if-eqz p1, :cond_1

    .line 3704
    new-instance v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl$1;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;)V

    .line 3713
    .local v0, "listener":Landroid/animation/AnimatorListenerAdapter;
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    .line 3714
    .local v1, "thisView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 3715
    .local v2, "animator":Landroid/animation/ValueAnimator;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-ne v2, v3, :cond_0

    .line 3716
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFloorDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3717
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 3719
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 3721
    .end local v0    # "listener":Landroid/animation/AnimatorListenerAdapter;
    .end local v1    # "thisView":Landroid/view/View;
    .end local v2    # "animator":Landroid/animation/ValueAnimator;
    :goto_0
    goto :goto_1

    .line 3722
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3723
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3726
    :cond_2
    :goto_1
    return-object p0
.end method
