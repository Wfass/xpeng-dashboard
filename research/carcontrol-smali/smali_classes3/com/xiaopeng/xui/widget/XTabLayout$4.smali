.class Lcom/xiaopeng/xui/widget/XTabLayout$4;
.super Ljava/lang/Object;
.source "XTabLayout.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XTabLayout;->selectTab(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

.field final synthetic val$fromUser:Z

.field final synthetic val$index:I

.field final synthetic val$shouldNotifyTabChange:Z

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XTabLayout;ZLandroid/view/View;ZI)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->val$shouldNotifyTabChange:Z

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->val$targetView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->val$fromUser:Z

    iput p5, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 5

    .line 532
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->val$shouldNotifyTabChange:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$200(Lcom/xiaopeng/xui/widget/XTabLayout;)Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->val$targetView:Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$200(Lcom/xiaopeng/xui/widget/XTabLayout;)Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    const/4 v3, -0x1

    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->val$fromUser:Z

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;->onTabChangeEnd(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V

    goto :goto_0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$200(Lcom/xiaopeng/xui/widget/XTabLayout;)Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->val$index:I

    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->val$fromUser:Z

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;->onTabChangeEnd(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V

    .line 539
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->updateVui(Landroid/view/View;)V

    return-void
.end method

.method public onStart()V
    .locals 5

    .line 521
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->val$shouldNotifyTabChange:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$200(Lcom/xiaopeng/xui/widget/XTabLayout;)Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->val$targetView:Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$200(Lcom/xiaopeng/xui/widget/XTabLayout;)Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    const/4 v3, -0x1

    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->val$fromUser:Z

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;->onTabChangeStart(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V

    goto :goto_0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$200(Lcom/xiaopeng/xui/widget/XTabLayout;)Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->val$index:I

    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->val$fromUser:Z

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;->onTabChangeStart(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V

    :cond_1
    :goto_0
    return-void
.end method
