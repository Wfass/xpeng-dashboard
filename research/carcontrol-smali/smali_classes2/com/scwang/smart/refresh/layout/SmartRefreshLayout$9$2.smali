.class Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;


# direct methods
.method constructor <init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;)V
    .locals 0

    .line 3462
    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9$2;->this$1:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 3465
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9$2;->this$1:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9$2;->this$1:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;

    iget-boolean v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->val$animationOnly:Z

    invoke-interface {v0, p1, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->onAutoLoadMoreAnimationEnd(Landroid/animation/Animator;Z)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    return-void
.end method
