.class Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "XQuickSideBarTipsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->bq(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ajm:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$1;->ajm:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$1;->ajm:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->setVisibility(I)V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$1;->ajm:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->setAlpha(F)V

    .line 107
    return-void
.end method
