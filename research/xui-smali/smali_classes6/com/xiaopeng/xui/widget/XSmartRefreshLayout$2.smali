.class Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "XSmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setStateRefreshing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

.field final synthetic val$notify:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    .line 1291
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->val$notify:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1294
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1295
    return-void

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastOpenTime:J

    .line 1298
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 1299
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshListener:Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;

    if-eqz v0, :cond_1

    .line 1300
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->val$notify:Z

    if-eqz v0, :cond_2

    .line 1301
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshListener:Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;->onRefresh(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    goto :goto_0

    .line 1303
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-nez v0, :cond_2

    .line 1304
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishRefresh(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    .line 1306
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    const/high16 v1, 0x41200000    # 10.0f

    if-eqz v0, :cond_4

    .line 1307
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float/2addr v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    :goto_1
    float-to-int v0, v0

    .line 1308
    .local v0, "maxDragHeight":I
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v4, v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v2, v3, v4, v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onStartAnimator(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V

    .line 1310
    .end local v0    # "maxDragHeight":I
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v0, v0, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v0, :cond_7

    .line 1311
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->val$notify:Z

    if-eqz v0, :cond_5

    .line 1312
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-interface {v0, v2}, Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;->onRefresh(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    .line 1314
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float/2addr v0, v1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    :goto_2
    float-to-int v0, v0

    .line 1315
    .restart local v0    # "maxDragHeight":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    check-cast v2, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v1, v2, v3, v0}, Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;->onHeaderStartAnimator(Lcom/scwang/smart/refresh/layout/api/RefreshHeader;II)V

    .line 1317
    .end local v0    # "maxDragHeight":I
    :cond_7
    return-void
.end method
