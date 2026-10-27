.class Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "XQuickSideBarTipsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->hideView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$1;->this$0:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$1;->this$0:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$1;->this$0:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->setAlpha(F)V

    .line 109
    return-void
.end method
