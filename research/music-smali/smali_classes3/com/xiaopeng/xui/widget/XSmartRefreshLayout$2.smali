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

    .line 1291
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->val$notify:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1294
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 1297
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastOpenTime:J

    .line 1298
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->Refreshing:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    .line 1299
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshListener:Lamx;

    if-eqz p1, :cond_1

    .line 1300
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->val$notify:Z

    if-eqz p1, :cond_2

    .line 1301
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshListener:Lamx;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-interface {p1, v0}, Lamx;->a_(Lamm;)V

    goto :goto_0

    .line 1303
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lamw;

    if-nez p1, :cond_2

    .line 1304
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishRefresh(I)Lamm;

    .line 1306
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    const/high16 v0, 0x41200000    # 10.0f

    if-eqz p1, :cond_4

    .line 1307
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float p1, p1

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float/2addr p1, v1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    :goto_1
    float-to-int p1, p1

    .line 1308
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v1, v2, v3, p1}, Lamh;->b(Lamm;II)V

    .line 1310
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lamw;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    instance-of p1, p1, Lamk;

    if-eqz p1, :cond_7

    .line 1311
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->val$notify:Z

    if-eqz p1, :cond_5

    .line 1312
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lamw;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-interface {p1, v1}, Lamw;->a_(Lamm;)V

    .line 1314
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float/2addr p1, v0

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderMaxDragRate:F

    :goto_2
    float-to-int p1, p1

    .line 1315
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lamw;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    check-cast v1, Lamk;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, v2, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v0, v1, v2, p1}, Lamw;->b(Lamk;II)V

    :cond_7
    return-void
.end method
