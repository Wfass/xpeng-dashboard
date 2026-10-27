.class Lcom/xiaopeng/xui/widget/XTabLayout$3;
.super Ljava/lang/Object;
.source "XTabLayout.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XTabLayout;->selectedNoneTab(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

.field final synthetic val$needCallback:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XTabLayout;Z)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$3;->val$needCallback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 5

    .line 479
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$3;->val$needCallback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$200(Lcom/xiaopeng/xui/widget/XTabLayout;)Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$200(Lcom/xiaopeng/xui/widget/XTabLayout;)Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;->onTabChangeEnd(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->updateVui(Landroid/view/View;)V

    return-void
.end method

.method public onStart()V
    .locals 5

    .line 472
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$3;->val$needCallback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$200(Lcom/xiaopeng/xui/widget/XTabLayout;)Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$200(Lcom/xiaopeng/xui/widget/XTabLayout;)Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;->onTabChangeStart(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V

    :cond_0
    return-void
.end method
