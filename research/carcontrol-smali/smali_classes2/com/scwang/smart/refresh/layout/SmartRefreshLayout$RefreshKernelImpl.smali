.class public Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Lcom/scwang/smart/refresh/layout/api/RefreshKernel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefreshKernelImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;)V
    .locals 0

    .line 3535
    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animSpinner(I)Landroid/animation/ValueAnimator;
    .locals 4

    .line 3881
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mReboundDuration:I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public finishTwoLevel()Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 3

    .line 3694
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1

    .line 3695
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevelFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 3696
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3697
    invoke-virtual {p0, v1, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 3698
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3700
    :cond_0
    invoke-virtual {p0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFloorDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getRefreshContent()Lcom/scwang/smart/refresh/layout/api/RefreshContent;
    .locals 1

    .line 3546
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    return-object v0
.end method

.method public getRefreshLayout()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
    .locals 1

    .line 3540
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    return-object v0
.end method

.method public moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3720
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-ne v2, v1, :cond_2

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 3721
    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->isSupportHorizontalDrag()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 3722
    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->isSupportHorizontalDrag()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-object v0

    .line 3725
    :cond_2
    iget-object v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 3726
    iget v10, v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    .line 3727
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput v1, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    const/high16 v11, 0x41200000    # 10.0f

    if-eqz p2, :cond_9

    .line 3730
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-eqz v2, :cond_9

    .line 3731
    :cond_3
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    cmpg-float v3, v3, v11

    if-gez v3, :cond_4

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    mul-float/2addr v3, v4

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    :goto_0
    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 3732
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v2, v3, :cond_9

    .line 3733
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto :goto_2

    .line 3735
    :cond_5
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    cmpg-float v3, v3, v11

    if-gez v3, :cond_6

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    mul-float/2addr v3, v4

    goto :goto_1

    :cond_6
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    :goto_1
    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_7

    .line 3736
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto :goto_2

    .line 3737
    :cond_7
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v2, :cond_8

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_8

    .line 3738
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto :goto_2

    .line 3739
    :cond_8
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-lez v2, :cond_9

    .line 3740
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 3743
    :cond_9
    :goto_2
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    const/4 v13, 0x0

    if-eqz v2, :cond_17

    if-ltz v1, :cond_b

    .line 3750
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v3, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v4, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {v2, v3, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v1

    :goto_3
    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    if-gez v10, :cond_b

    move v2, v13

    goto :goto_3

    :cond_b
    move v2, v13

    move v3, v2

    :goto_4
    if-gtz v1, :cond_d

    .line 3762
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v5, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v6, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {v4, v5, v6}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v2, v1

    :goto_5
    const/4 v3, 0x1

    goto :goto_6

    :cond_c
    if-lez v10, :cond_d

    move v2, v13

    goto :goto_5

    :cond_d
    :goto_6
    if-eqz v3, :cond_17

    .line 3771
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderTranslationViewId:I

    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v5, v5, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterTranslationViewId:I

    invoke-interface {v3, v2, v4, v5}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->moveSpinner(III)V

    .line 3772
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v3, v3, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    .line 3773
    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v3, v4, :cond_e

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v4, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 3774
    invoke-virtual {v3, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3775
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 3777
    :cond_e
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v3, v4, :cond_f

    const/4 v3, 0x1

    goto :goto_7

    :cond_f
    move v3, v13

    :goto_7
    if-nez v3, :cond_11

    .line 3778
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v3, :cond_10

    goto :goto_8

    :cond_10
    move v3, v13

    goto :goto_9

    :cond_11
    :goto_8
    const/4 v3, 0x1

    .line 3779
    :goto_9
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v4, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    if-eqz v4, :cond_12

    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v4, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v4, :cond_12

    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v4, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v4

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v4, v5, :cond_12

    const/4 v4, 0x1

    goto :goto_a

    :cond_12
    move v4, v13

    :goto_a
    if-nez v4, :cond_14

    .line 3780
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v4, :cond_13

    goto :goto_b

    :cond_13
    move v4, v13

    goto :goto_c

    :cond_14
    :goto_b
    const/4 v4, 0x1

    :goto_c
    if-eqz v3, :cond_15

    if-gez v2, :cond_16

    if-gtz v10, :cond_16

    :cond_15
    if-eqz v4, :cond_17

    if-lez v2, :cond_16

    if-gez v10, :cond_17

    .line 3782
    :cond_16
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    :cond_17
    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x40000000    # 2.0f

    if-gez v1, :cond_18

    if-lez v10, :cond_23

    .line 3786
    :cond_18
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v2, :cond_23

    .line 3788
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 3789
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v7, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    .line 3790
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float v2, v2, v11

    if-gez v2, :cond_19

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float/2addr v2, v3

    goto :goto_d

    :cond_19
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    :goto_d
    float-to-int v6, v2

    int-to-float v2, v8

    mul-float/2addr v2, v14

    .line 3791
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    cmpg-float v3, v3, v11

    if-gez v3, :cond_1a

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    goto :goto_e

    :cond_1a
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    :goto_e
    div-float v16, v2, v3

    .line 3793
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v3, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v2, v3}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v2, v3, :cond_1b

    if-nez p2, :cond_1b

    goto :goto_f

    :cond_1b
    move v12, v6

    move/from16 v17, v7

    goto/16 :goto_14

    .line 3794
    :cond_1c
    :goto_f
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eq v10, v2, :cond_20

    .line 3795
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v2

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v2, v3, :cond_1d

    .line 3796
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 3797
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v3, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v4, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {v2, v3, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 3798
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_11

    .line 3800
    :cond_1d
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v2

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v2, :cond_1f

    .line 3808
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v2

    .line 3809
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3810
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_1e

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_10

    :cond_1e
    sget-object v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3811
    :goto_10
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 3812
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v5, v5, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v12

    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v12

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 3813
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3814
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v5, v5, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderInsetStart:I

    add-int/2addr v3, v5

    .line 3815
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v3

    invoke-virtual {v2, v4, v3, v5, v12}, Landroid/view/View;->layout(IIII)V

    .line 3817
    :cond_1f
    :goto_11
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    move/from16 v3, p2

    move/from16 v4, v16

    move v5, v8

    move v12, v6

    move v6, v7

    move/from16 v17, v7

    move v7, v12

    invoke-interface/range {v2 .. v7}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onMoving(ZFIII)V

    goto :goto_12

    :cond_20
    move v12, v6

    move/from16 v17, v7

    :goto_12
    if-eqz p2, :cond_22

    .line 3819
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->isSupportHorizontalDrag()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3820
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    float-to-int v2, v2

    .line 3821
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 3822
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    if-nez v3, :cond_21

    const/4 v5, 0x1

    goto :goto_13

    :cond_21
    move v5, v3

    :goto_13
    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3823
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v5, v5, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v5, v4, v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onHorizontalDrag(FII)V

    .line 3827
    :cond_22
    :goto_14
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eq v10, v2, :cond_23

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-eqz v2, :cond_23

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v2, v2, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v2, :cond_23

    .line 3828
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    check-cast v3, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    move/from16 v4, p2

    move/from16 v5, v16

    move v6, v8

    move/from16 v7, v17

    move v8, v12

    invoke-interface/range {v2 .. v8}, Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;->onHeaderMoving(Lcom/scwang/smart/refresh/layout/api/RefreshHeader;ZFIII)V

    :cond_23
    if-lez v1, :cond_24

    if-gez v10, :cond_2e

    .line 3832
    :cond_24
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v2, :cond_2e

    .line 3834
    invoke-static {v1, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    neg-int v7, v1

    .line 3835
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v8, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    .line 3836
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    cmpg-float v1, v1, v11

    if-gez v1, :cond_25

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v1, v1

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    mul-float/2addr v1, v2

    goto :goto_15

    :cond_25
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    :goto_15
    float-to-int v12, v1

    int-to-float v1, v7

    mul-float/2addr v1, v14

    .line 3837
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    cmpg-float v2, v2, v11

    if-gez v2, :cond_26

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    goto :goto_16

    :cond_26
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    :goto_16
    div-float v11, v1, v2

    .line 3839
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v2, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v1, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_2d

    if-nez p2, :cond_2d

    .line 3840
    :cond_27
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eq v10, v1, :cond_2b

    .line 3841
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_28

    .line 3842
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 3843
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v2, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {v1, v2, v3}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 3844
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_18

    .line 3846
    :cond_28
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v1

    iget-boolean v1, v1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v1, :cond_2a

    .line 3854
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v1

    .line 3855
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 3856
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_29

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_17

    :cond_29
    sget-object v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3857
    :goto_17
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3858
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    neg-int v4, v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 3859
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3860
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterInsetStart:I

    sub-int/2addr v2, v4

    .line 3861
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->layout(IIII)V

    .line 3863
    :cond_2a
    :goto_18
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    move/from16 v2, p2

    move v3, v11

    move v4, v7

    move v5, v8

    move v6, v12

    invoke-interface/range {v1 .. v6}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onMoving(ZFIII)V

    :cond_2b
    if-eqz p2, :cond_2d

    .line 3865
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->isSupportHorizontalDrag()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 3866
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    float-to-int v1, v1

    .line 3867
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 3868
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    if-nez v2, :cond_2c

    const/4 v4, 0x1

    goto :goto_19

    :cond_2c
    move v4, v2

    :goto_19
    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 3869
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v4, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {v4, v3, v1, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onHorizontalDrag(FII)V

    .line 3873
    :cond_2d
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eq v10, v1, :cond_2e

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v1, v1, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_2e

    .line 3874
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    check-cast v2, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    move/from16 v3, p2

    move v4, v11

    move v5, v7

    move v6, v8

    move v7, v12

    invoke-interface/range {v1 .. v7}, Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;->onFooterMoving(Lcom/scwang/smart/refresh/layout/api/RefreshFooter;ZFIII)V

    :cond_2e
    return-object v0
.end method

.method public onAutoLoadMoreAnimationEnd(Landroid/animation/Animator;Z)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 4

    if-eqz p1, :cond_0

    .line 3972
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-object p0

    .line 3975
    :cond_0
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 3976
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz p1, :cond_2

    .line 3977
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_1

    .line 3978
    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 3980
    :cond_1
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setStateLoading(Z)V

    goto :goto_0

    .line 3985
    :cond_2
    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    :goto_0
    return-object p0
.end method

.method public onAutoRefreshAnimationEnd(Landroid/animation/Animator;Z)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 4

    if-eqz p1, :cond_0

    .line 3952
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-object p0

    .line 3955
    :cond_0
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 3956
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz p1, :cond_2

    .line 3957
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_1

    .line 3958
    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 3960
    :cond_1
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setStateRefreshing(Z)V

    goto :goto_0

    .line 3965
    :cond_2
    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    :goto_0
    return-object p0
.end method

.method public requestDefaultTranslationContentFor(Lcom/scwang/smart/refresh/layout/api/RefreshComponent;Z)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 2

    .line 3912
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3913
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    if-nez p1, :cond_1

    .line 3914
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput-boolean v1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    .line 3915
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput-boolean p2, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    goto :goto_0

    .line 3917
    :cond_0
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3918
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    if-nez p1, :cond_1

    .line 3919
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput-boolean v1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    .line 3920
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput-boolean p2, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public requestDrawBackgroundFor(Lcom/scwang/smart/refresh/layout/api/RefreshComponent;I)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 2

    .line 3889
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3890
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    .line 3892
    :cond_0
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3893
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput p2, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    goto :goto_0

    .line 3894
    :cond_1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3895
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput p2, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    :cond_2
    :goto_0
    return-object p0
.end method

.method public requestFloorBottomPullUpToCloseRate(F)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 1

    .line 3946
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput p1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTwoLevelBottomPullUpToCloseRate:F

    return-object p0
.end method

.method public requestFloorDuration(I)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 1

    .line 3940
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput p1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFloorDuration:I

    return-object p0
.end method

.method public requestNeedTouchEventFor(Lcom/scwang/smart/refresh/layout/api/RefreshComponent;Z)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 1

    .line 3902
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3903
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput-boolean p2, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderNeedTouchEventWhenRefreshing:Z

    goto :goto_0

    .line 3904
    :cond_0
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3905
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput-boolean p2, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNeedTouchEventWhenLoading:Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public requestRemeasureHeightFor(Lcom/scwang/smart/refresh/layout/api/RefreshComponent;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 1

    .line 3927
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3928
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-eqz p1, :cond_1

    .line 3929
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v0}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    move-result-object v0

    iput-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    goto :goto_0

    .line 3931
    :cond_0
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3932
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-eqz p1, :cond_1

    .line 3933
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v0}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    move-result-object v0

    iput-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
    .locals 2

    .line 3552
    sget-object v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smart$refresh$layout$constant$RefreshState:[I

    invoke-virtual {p1}, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 3637
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3634
    :pswitch_0
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setStateLoading(Z)V

    goto/16 :goto_0

    .line 3631
    :pswitch_1
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setStateRefreshing(Z)V

    goto/16 :goto_0

    .line 3623
    :pswitch_2
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3624
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3626
    :cond_0
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3615
    :pswitch_3
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3616
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3618
    :cond_1
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3607
    :pswitch_4
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3608
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3610
    :cond_2
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3600
    :pswitch_5
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-nez p1, :cond_4

    .line 3601
    :cond_3
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3603
    :cond_4
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3593
    :pswitch_6
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3594
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3596
    :cond_5
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3584
    :pswitch_7
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-nez p1, :cond_7

    .line 3585
    :cond_6
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3587
    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto/16 :goto_0

    .line 3589
    :cond_7
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3575
    :pswitch_8
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3576
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3578
    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto/16 :goto_0

    .line 3580
    :cond_8
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3568
    :pswitch_9
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-nez p1, :cond_a

    .line 3569
    :cond_9
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3571
    :cond_a
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3561
    :pswitch_a
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 3562
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3564
    :cond_b
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3554
    :pswitch_b
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_c

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-nez p1, :cond_c

    .line 3555
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3556
    :cond_c
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    .line 3557
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_d
    :goto_0
    const/4 p1, 0x0

    return-object p1

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
    .locals 3

    if-eqz p1, :cond_1

    .line 3667
    new-instance p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl$1;

    invoke-direct {p1, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl$1;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;)V

    .line 3676
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 3677
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3678
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-ne v0, v1, :cond_0

    .line 3679
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFloorDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3680
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3682
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3685
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_2

    .line 3686
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    :cond_2
    :goto_0
    return-object p0
.end method
