.class Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "XSmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setStateLoading(Z)V
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

    .line 1255
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$1;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$1;->val$notify:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1258
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 1261
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$1;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$1;->val$notify:Z

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setStateDirectLoading(Z)V

    return-void
.end method
