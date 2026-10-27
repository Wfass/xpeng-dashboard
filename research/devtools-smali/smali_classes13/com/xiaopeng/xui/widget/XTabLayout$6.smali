.class Lcom/xiaopeng/xui/widget/XTabLayout$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "XTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XTabLayout;->a(ZLcom/xiaopeng/xui/widget/XTabLayout$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

.field final synthetic ahs:Lcom/xiaopeng/xui/widget/XTabLayout$a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XTabLayout;Lcom/xiaopeng/xui/widget/XTabLayout$a;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$6;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$6;->ahs:Lcom/xiaopeng/xui/widget/XTabLayout$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 679
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 680
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$6;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->a(Lcom/xiaopeng/xui/widget/XTabLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 681
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$6;->ahs:Lcom/xiaopeng/xui/widget/XTabLayout$a;

    if-eqz p1, :cond_0

    .line 682
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$6;->ahs:Lcom/xiaopeng/xui/widget/XTabLayout$a;

    invoke-interface {p1}, Lcom/xiaopeng/xui/widget/XTabLayout$a;->onEnd()V

    .line 684
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 671
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 672
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$6;->ahs:Lcom/xiaopeng/xui/widget/XTabLayout$a;

    if-eqz p1, :cond_0

    .line 673
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$6;->ahs:Lcom/xiaopeng/xui/widget/XTabLayout$a;

    invoke-interface {p1}, Lcom/xiaopeng/xui/widget/XTabLayout$a;->onStart()V

    .line 675
    :cond_0
    return-void
.end method
