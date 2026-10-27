.class Lcom/xiaopeng/xui/widget/XTabLayout$1;
.super Ljava/lang/Object;
.source "XTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/XTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XTabLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$1;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$1;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$000(Lcom/xiaopeng/xui/widget/XTabLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$1;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$000(Lcom/xiaopeng/xui/widget/XTabLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$1;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$1;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$100(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V

    .line 111
    return-void
.end method
