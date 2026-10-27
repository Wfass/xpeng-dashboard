.class public Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;
.super Ljava/lang/Object;
.source "XSmartRefreshLayout.java"

# interfaces
.implements Laml;


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

    .line 3572
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animSpinner(I)Landroid/animation/ValueAnimator;
    .locals 4

    .line 3918
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundDuration:I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public finishTwoLevel()Laml;
    .locals 3

    .line 3731
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    sget-object v1, Lamo;->TwoLevel:Lamo;

    if-ne v0, v1, :cond_1

    .line 3732
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    sget-object v1, Lamo;->TwoLevelFinish:Lamo;

    invoke-interface {v0, v1}, Laml;->setState(Lamo;)Laml;

    .line 3733
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3734
    invoke-virtual {p0, v1, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->moveSpinner(IZ)Laml;

    .line 3735
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lamo;->None:Lamo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    goto :goto_0

    .line 3737
    :cond_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFloorDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getRefreshContent()Lami;
    .locals 1

    .line 3583
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lami;

    return-object v0
.end method

.method public getRefreshLayout()Lamm;
    .locals 1

    .line 3577
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    return-object v0
.end method

.method public moveSpinner(IZ)Laml;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3757
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-ne v2, v1, :cond_2

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    .line 3758
    invoke-interface {v2}, Lamh;->a()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    .line 3759
    invoke-interface {v2}, Lamh;->a()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-object v0

    .line 3762
    :cond_2
    iget-object v9, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    .line 3763
    iget v10, v9, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    .line 3764
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput v1, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    const/high16 v11, 0x41200000    # 10.0f

    if-eqz p2, :cond_9

    .line 3767
    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lamo;

    iget-boolean v2, v2, Lamo;->isDragging:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lamo;

    iget-boolean v2, v2, Lamo;->isOpening:Z

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

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    sget-object v3, Lamo;->ReleaseToTwoLevel:Lamo;

    if-eq v2, v3, :cond_9

    .line 3770
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    sget-object v3, Lamo;->ReleaseToRefresh:Lamo;

    invoke-interface {v2, v3}, Laml;->setState(Lamo;)Laml;

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

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    sget-object v3, Lamo;->ReleaseToLoad:Lamo;

    invoke-interface {v2, v3}, Laml;->setState(Lamo;)Laml;

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

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    sget-object v3, Lamo;->PullUpToLoad:Lamo;

    invoke-interface {v2, v3}, Laml;->setState(Lamo;)Laml;

    goto :goto_2

    .line 3776
    :cond_8
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-lez v2, :cond_9

    .line 3777
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    sget-object v3, Lamo;->PullDownToRefresh:Lamo;

    invoke-interface {v2, v3}, Laml;->setState(Lamo;)Laml;

    .line 3780
    :cond_9
    :goto_2
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lami;

    const/4 v13, 0x0

    if-eqz v2, :cond_17

    if-ltz v1, :cond_b

    .line 3787
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v3, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableTranslationContent(ZLamh;)Z

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

    .line 3799
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v5, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v6, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v6, v6, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableTranslationContent(ZLamh;)Z

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

    .line 3808
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lami;

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTranslationViewId:I

    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTranslationViewId:I

    invoke-interface {v3, v2, v4, v5}, Lami;->a(III)V

    .line 3809
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    instance-of v3, v3, Lamj;

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    .line 3810
    invoke-interface {v3}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v3

    sget-object v4, Lamp;->a:Lamp;

    if-ne v3, v4, :cond_e

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v4, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    .line 3811
    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3812
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    invoke-interface {v3}, Lamh;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 3814
    :cond_e
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    invoke-interface {v3}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v3

    sget-object v4, Lamp;->c:Lamp;

    if-ne v3, v4, :cond_f

    const/4 v3, 0x1

    goto :goto_7

    :cond_f
    move v3, v13

    :goto_7
    if-nez v3, :cond_11

    .line 3815
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v3, :cond_10

    goto :goto_8

    :cond_10
    move v3, v13

    goto :goto_9

    :cond_11
    :goto_8
    const/4 v3, 0x1

    .line 3816
    :goto_9
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    if-eqz v4, :cond_12

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    if-eqz v4, :cond_12

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    invoke-interface {v4}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v4

    sget-object v5, Lamp;->c:Lamp;

    if-ne v4, v5, :cond_12

    const/4 v4, 0x1

    goto :goto_a

    :cond_12
    move v4, v13

    :goto_a
    if-nez v4, :cond_14

    .line 3817
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterBackgroundColor:I

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

    .line 3819
    :cond_16
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    :cond_17
    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x40000000    # 2.0f

    if-gez v1, :cond_18

    if-lez v10, :cond_23

    .line 3823
    :cond_18
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    if-eqz v2, :cond_23

    .line 3825
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 3826
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v7, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    .line 3827
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float v2, v2, v11

    if-gez v2, :cond_19

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float/2addr v2, v3

    goto :goto_d

    :cond_19
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    :goto_d
    float-to-int v6, v2

    int-to-float v2, v8

    mul-float/2addr v2, v14

    .line 3828
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    cmpg-float v3, v3, v11

    if-gez v3, :cond_1a

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    goto :goto_e

    :cond_1a
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    :goto_e
    div-float v16, v2, v3

    .line 3830
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v3, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    sget-object v3, Lamo;->RefreshFinish:Lamo;

    if-ne v2, v3, :cond_1b

    if-nez p2, :cond_1b

    goto :goto_f

    :cond_1b
    move v12, v6

    move/from16 v17, v7

    goto/16 :goto_14

    .line 3831
    :cond_1c
    :goto_f
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-eq v10, v2, :cond_20

    .line 3832
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    invoke-interface {v2}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v2

    sget-object v3, Lamp;->a:Lamp;

    if-ne v2, v3, :cond_1d

    .line 3833
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    invoke-interface {v2}, Lamh;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 3834
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v3, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableTranslationContent(ZLamh;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 3835
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_11

    .line 3837
    :cond_1d
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    invoke-interface {v2}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v2

    iget-boolean v2, v2, Lamp;->i:Z

    if-eqz v2, :cond_1f

    .line 3845
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    invoke-interface {v2}, Lamh;->getView()Landroid/view/View;

    move-result-object v2

    .line 3846
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3847
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_1e

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_10

    :cond_1e
    sget-object v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3848
    :goto_10
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 3849
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v12

    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v12

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 3850
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3851
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderInsetStart:I

    add-int/2addr v3, v5

    .line 3852
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v3

    invoke-virtual {v2, v4, v3, v5, v12}, Landroid/view/View;->layout(IIII)V

    .line 3854
    :cond_1f
    :goto_11
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    move/from16 v3, p2

    move/from16 v4, v16

    move v5, v8

    move v12, v6

    move v6, v7

    move/from16 v17, v7

    move v7, v12

    invoke-interface/range {v2 .. v7}, Lamh;->a(ZFIII)V

    goto :goto_12

    :cond_20
    move v12, v6

    move/from16 v17, v7

    :goto_12
    if-eqz p2, :cond_22

    .line 3856
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    invoke-interface {v2}, Lamh;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3857
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    float-to-int v2, v2

    .line 3858
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 3859
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    if-nez v3, :cond_21

    const/4 v5, 0x1

    goto :goto_13

    :cond_21
    move v5, v3

    :goto_13
    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3860
    iget-object v5, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    invoke-interface {v5, v4, v2, v3}, Lamh;->a(FII)V

    .line 3864
    :cond_22
    :goto_14
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-eq v10, v2, :cond_23

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lamw;

    if-eqz v2, :cond_23

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    instance-of v2, v2, Lamk;

    if-eqz v2, :cond_23

    .line 3865
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lamw;

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    check-cast v3, Lamk;

    move/from16 v4, p2

    move/from16 v5, v16

    move v6, v8

    move/from16 v7, v17

    move v8, v12

    invoke-interface/range {v2 .. v8}, Lamw;->a(Lamk;ZFIII)V

    :cond_23
    if-lez v1, :cond_24

    if-gez v10, :cond_2e

    .line 3869
    :cond_24
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    if-eqz v2, :cond_2e

    .line 3871
    invoke-static {v1, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    neg-int v7, v1

    .line 3872
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v8, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    .line 3873
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    cmpg-float v1, v1, v11

    if-gez v1, :cond_25

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v1, v1

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    mul-float/2addr v1, v2

    goto :goto_15

    :cond_25
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterMaxDragRate:F

    :goto_15
    float-to-int v12, v1

    int-to-float v1, v7

    mul-float/2addr v1, v14

    .line 3874
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    cmpg-float v2, v2, v11

    if-gez v2, :cond_26

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    goto :goto_16

    :cond_26
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    :goto_16
    div-float v11, v1, v2

    .line 3876
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v2, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    sget-object v2, Lamo;->LoadFinish:Lamo;

    if-ne v1, v2, :cond_2d

    if-nez p2, :cond_2d

    .line 3877
    :cond_27
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-eq v10, v1, :cond_2b

    .line 3878
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    invoke-interface {v1}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v1

    sget-object v2, Lamp;->a:Lamp;

    if-ne v1, v2, :cond_28

    .line 3879
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    invoke-interface {v1}, Lamh;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 3880
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v2, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableTranslationContent(ZLamh;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 3881
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_18

    .line 3883
    :cond_28
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    invoke-interface {v1}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v1

    iget-boolean v1, v1, Lamp;->i:Z

    if-eqz v1, :cond_2a

    .line 3891
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    invoke-interface {v1}, Lamh;->getView()Landroid/view/View;

    move-result-object v1

    .line 3892
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 3893
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_29

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_17

    :cond_29
    sget-object v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3894
    :goto_17
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3895
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

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

    .line 3896
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3897
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterInsetStart:I

    sub-int/2addr v2, v4

    .line 3898
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->layout(IIII)V

    .line 3900
    :cond_2a
    :goto_18
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    move/from16 v2, p2

    move v3, v11

    move v4, v7

    move v5, v8

    move v6, v12

    invoke-interface/range {v1 .. v6}, Lamh;->a(ZFIII)V

    :cond_2b
    if-eqz p2, :cond_2d

    .line 3902
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    invoke-interface {v1}, Lamh;->a()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 3903
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    float-to-int v1, v1

    .line 3904
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 3905
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    if-nez v2, :cond_2c

    const/4 v4, 0x1

    goto :goto_19

    :cond_2c
    move v4, v2

    :goto_19
    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 3906
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    invoke-interface {v4, v3, v1, v2}, Lamh;->a(FII)V

    .line 3910
    :cond_2d
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-eq v10, v1, :cond_2e

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lamw;

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    instance-of v1, v1, Lamj;

    if-eqz v1, :cond_2e

    .line 3911
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lamw;

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    check-cast v2, Lamj;

    move/from16 v3, p2

    move v4, v11

    move v5, v7

    move v6, v8

    move v7, v12

    invoke-interface/range {v1 .. v7}, Lamw;->a(Lamj;ZFIII)V

    :cond_2e
    return-object v0
.end method

.method public onAutoLoadMoreAnimationEnd(Landroid/animation/Animator;Z)Laml;
    .locals 4

    if-eqz p1, :cond_0

    .line 4009
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-object p0

    .line 4012
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 4013
    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    if-eqz p1, :cond_2

    .line 4014
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    sget-object v0, Lamo;->ReleaseToLoad:Lamo;

    if-eq p1, v0, :cond_1

    .line 4015
    sget-object p1, Lamo;->ReleaseToLoad:Lamo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->setState(Lamo;)Laml;

    .line 4017
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setStateLoading(Z)V

    goto :goto_0

    .line 4022
    :cond_2
    sget-object p1, Lamo;->None:Lamo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->setState(Lamo;)Laml;

    :goto_0
    return-object p0
.end method

.method public onAutoRefreshAnimationEnd(Landroid/animation/Animator;Z)Laml;
    .locals 4

    if-eqz p1, :cond_0

    .line 3989
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-object p0

    .line 3992
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 3993
    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    if-eqz p1, :cond_2

    .line 3994
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    sget-object v0, Lamo;->ReleaseToRefresh:Lamo;

    if-eq p1, v0, :cond_1

    .line 3995
    sget-object p1, Lamo;->ReleaseToRefresh:Lamo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->setState(Lamo;)Laml;

    .line 3997
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setStateRefreshing(Z)V

    goto :goto_0

    .line 4002
    :cond_2
    sget-object p1, Lamo;->None:Lamo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->setState(Lamo;)Laml;

    :goto_0
    return-object p0
.end method

.method public requestDefaultTranslationContentFor(Lamh;Z)Laml;
    .locals 2

    .line 3949
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3950
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualHeaderTranslationContent:Z

    if-nez p1, :cond_1

    .line 3951
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-boolean v1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualHeaderTranslationContent:Z

    .line 3952
    iput-boolean p2, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    goto :goto_0

    .line 3954
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3955
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualFooterTranslationContent:Z

    if-nez p1, :cond_1

    .line 3956
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-boolean v1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mManualFooterTranslationContent:Z

    .line 3957
    iput-boolean p2, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterTranslationContent:Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public requestDrawBackgroundFor(Lamh;I)Laml;
    .locals 2

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

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3930
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput p2, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderBackgroundColor:I

    goto :goto_0

    .line 3931
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3932
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput p2, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterBackgroundColor:I

    :cond_2
    :goto_0
    return-object p0
.end method

.method public requestFloorBottomPullUpToCloseRate(F)Laml;
    .locals 1

    .line 3983
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput p1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mTwoLevelBottomPullUpToCloseRate:F

    return-object p0
.end method

.method public requestFloorDuration(I)Laml;
    .locals 1

    .line 3977
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput p1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFloorDuration:I

    return-object p0
.end method

.method public requestNeedTouchEventFor(Lamh;Z)Laml;
    .locals 1

    .line 3939
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3940
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-boolean p2, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderNeedTouchEventWhenRefreshing:Z

    goto :goto_0

    .line 3941
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3942
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-boolean p2, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNeedTouchEventWhenLoading:Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public requestRemeasureHeightFor(Lamh;)Laml;
    .locals 1

    .line 3964
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3965
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lamn;

    iget-boolean p1, p1, Lamn;->n:Z

    if-eqz p1, :cond_1

    .line 3966
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lamn;

    invoke-virtual {v0}, Lamn;->a()Lamn;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeightStatus:Lamn;

    goto :goto_0

    .line 3968
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lamh;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3969
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lamn;

    iget-boolean p1, p1, Lamn;->n:Z

    if-eqz p1, :cond_1

    .line 3970
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lamn;

    invoke-virtual {v0}, Lamn;->a()Lamn;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeightStatus:Lamn;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setState(Lamo;)Laml;
    .locals 2

    .line 3589
    sget-object v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$10;->$SwitchMap$com$scwang$smart$refresh$layout$constant$RefreshState:[I

    invoke-virtual {p1}, Lamo;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 3674
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    goto/16 :goto_0

    .line 3671
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setStateLoading(Z)V

    goto/16 :goto_0

    .line 3668
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setStateRefreshing(Z)V

    goto/16 :goto_0

    .line 3660
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    iget-boolean p1, p1, Lamo;->isOpening:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3661
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->LoadReleased:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    goto/16 :goto_0

    .line 3663
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->LoadReleased:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lamo;)V

    goto/16 :goto_0

    .line 3652
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    iget-boolean p1, p1, Lamo;->isOpening:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3653
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->RefreshReleased:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    goto/16 :goto_0

    .line 3655
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->RefreshReleased:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lamo;)V

    goto/16 :goto_0

    .line 3644
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    iget-boolean p1, p1, Lamo;->isOpening:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3645
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->ReleaseToTwoLevel:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    goto/16 :goto_0

    .line 3647
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->ReleaseToTwoLevel:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lamo;)V

    goto/16 :goto_0

    .line 3637
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    iget-boolean p1, p1, Lamo;->isOpening:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    iget-boolean p1, p1, Lamo;->isFinishing:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-nez p1, :cond_4

    .line 3638
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->ReleaseToLoad:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    goto/16 :goto_0

    .line 3640
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->ReleaseToLoad:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lamo;)V

    goto/16 :goto_0

    .line 3630
    :pswitch_6
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    iget-boolean p1, p1, Lamo;->isOpening:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3631
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->ReleaseToRefresh:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    goto/16 :goto_0

    .line 3633
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->ReleaseToRefresh:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lamo;)V

    goto/16 :goto_0

    .line 3621
    :pswitch_7
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    iget-boolean p1, p1, Lamo;->isOpening:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-nez p1, :cond_7

    .line 3622
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->PullUpCanceled:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    .line 3624
    sget-object p1, Lamo;->None:Lamo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->setState(Lamo;)Laml;

    goto/16 :goto_0

    .line 3626
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->PullUpCanceled:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lamo;)V

    goto/16 :goto_0

    .line 3612
    :pswitch_8
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    iget-boolean p1, p1, Lamo;->isOpening:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3613
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->PullDownCanceled:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    .line 3615
    sget-object p1, Lamo;->None:Lamo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->setState(Lamo;)Laml;

    goto/16 :goto_0

    .line 3617
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->PullDownCanceled:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lamo;)V

    goto/16 :goto_0

    .line 3605
    :pswitch_9
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    iget-boolean p1, p1, Lamo;->isOpening:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    iget-boolean p1, p1, Lamo;->isFinishing:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-nez p1, :cond_a

    .line 3606
    :cond_9
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->PullUpToLoad:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    goto :goto_0

    .line 3608
    :cond_a
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->PullUpToLoad:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lamo;)V

    goto :goto_0

    .line 3598
    :pswitch_a
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    iget-boolean p1, p1, Lamo;->isOpening:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 3599
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->PullDownToRefresh:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    goto :goto_0

    .line 3601
    :cond_b
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->PullDownToRefresh:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lamo;)V

    goto :goto_0

    .line 3591
    :pswitch_b
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    sget-object v0, Lamo;->None:Lamo;

    if-eq p1, v0, :cond_c

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-nez p1, :cond_c

    .line 3592
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->None:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    goto :goto_0

    .line 3593
    :cond_c
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    .line 3594
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

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

.method public startTwoLevel(Z)Laml;
    .locals 3

    if-eqz p1, :cond_1

    .line 3704
    new-instance p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl$1;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;)V

    .line 3713
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    .line 3714
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3715
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-ne v0, v1, :cond_0

    .line 3716
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFloorDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3717
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3719
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3722
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_2

    .line 3723
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->None:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    :cond_2
    :goto_0
    return-object p0
.end method
