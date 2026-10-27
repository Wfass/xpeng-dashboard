.class Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setStateRefreshing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

.field final synthetic val$notify:Z


# direct methods
.method constructor <init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Z)V
    .locals 0

    .line 1288
    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->val$notify:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1291
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 1294
    :cond_0
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    .line 1295
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 1296
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshListener:Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;

    if-eqz p1, :cond_1

    .line 1297
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->val$notify:Z

    if-eqz p1, :cond_2

    .line 1298
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshListener:Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    invoke-interface {p1, v0}, Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;->onRefresh(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    goto :goto_0

    .line 1300
    :cond_1
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-nez p1, :cond_2

    .line 1301
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->finishRefresh(I)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    .line 1303
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    const/high16 v0, 0x41200000    # 10.0f

    if-eqz p1, :cond_4

    .line 1304
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float p1, p1

    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float/2addr p1, v1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    :goto_1
    float-to-int p1, p1

    .line 1305
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v1, v2, v3, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onStartAnimator(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V

    .line 1307
    :cond_4
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of p1, p1, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz p1, :cond_7

    .line 1308
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->val$notify:Z

    if-eqz p1, :cond_5

    .line 1309
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    invoke-interface {p1, v1}, Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;->onRefresh(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    .line 1311
    :cond_5
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float/2addr p1, v0

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    :goto_2
    float-to-int p1, p1

    .line 1312
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mOnMultiListener:Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;

    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    check-cast v1, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v0, v1, v2, p1}, Lcom/scwang/smart/refresh/layout/listener/OnMultiListener;->onHeaderStartAnimator(Lcom/scwang/smart/refresh/layout/api/RefreshHeader;II)V

    :cond_7
    return-void
.end method
