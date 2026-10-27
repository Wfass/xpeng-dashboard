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

    .line 3201
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 3205
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->val$offset:I

    if-gez v0, :cond_0

    .line 3206
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshContent:Lami;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    invoke-interface {v0, v2}, Lami;->a(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    .line 3208
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3212
    :cond_1
    :goto_0
    new-instance v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1$1;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;)V

    .line 3227
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    const/4 v4, 0x0

    if-lez v3, :cond_2

    .line 3228
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    invoke-interface {v0, v4}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto/16 :goto_3

    :cond_2
    if-nez v0, :cond_6

    .line 3229
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-nez v0, :cond_3

    goto :goto_1

    .line 3239
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->val$noMoreData:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_5

    .line 3240
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    neg-int v3, v3

    if-lt v0, v3, :cond_4

    .line 3241
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v3, Lamo;->None:Lamo;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    goto :goto_2

    .line 3243
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    neg-int v3, v3

    invoke-interface {v0, v3}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_3

    .line 3246
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    invoke-interface {v0, v4}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_3

    .line 3230
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    .line 3231
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3232
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3233
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 3236
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    invoke-interface {v0, v4, v4}, Laml;->moveSpinner(IZ)Laml;

    .line 3237
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    sget-object v3, Lamo;->None:Lamo;

    invoke-interface {v0, v3}, Laml;->setState(Lamo;)Laml;

    :goto_2
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_8

    .line 3250
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    .line 3252
    :cond_8
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
