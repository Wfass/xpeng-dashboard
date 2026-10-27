.class Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;
.super Ljava/lang/Object;
.source "XSmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    .line 3201
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 3204
    const/4 v0, 0x0

    .line 3205
    .local v0, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->val$offset:I

    if-gez v1, :cond_0

    .line 3206
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/api/RefreshContent;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    invoke-interface {v1, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshContent;->scrollContentWhenFinished(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    .line 3207
    if-eqz v0, :cond_0

    .line 3208
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 3211
    :cond_0
    const/4 v1, 0x0

    .line 3212
    .local v1, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1$1;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;)V

    .line 3227
    .local v2, "listenerAdapter":Landroid/animation/AnimatorListenerAdapter;
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-lez v3, :cond_1

    .line 3228
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v3, v5}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v1

    goto/16 :goto_1

    .line 3229
    :cond_1
    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-nez v3, :cond_2

    goto :goto_0

    .line 3239
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-boolean v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->val$noMoreData:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v3, :cond_4

    .line 3240
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    neg-int v5, v5

    if-lt v3, v5, :cond_3

    .line 3241
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v3, v5}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_1

    .line 3243
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    neg-int v5, v5

    invoke-interface {v3, v5}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v1

    goto :goto_1

    .line 3246
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v3, v5}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v1

    goto :goto_1

    .line 3230
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_6

    .line 3231
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3232
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3233
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-object v4, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 3236
    :cond_6
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {v3, v5, v5}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 3237
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v3, v5}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 3249
    :goto_1
    if-eqz v1, :cond_7

    .line 3250
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 3252
    :cond_7
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 3254
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
