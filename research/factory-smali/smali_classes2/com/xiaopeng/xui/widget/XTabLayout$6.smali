.class Lcom/xiaopeng/xui/widget/XTabLayout$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "XTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XTabLayout;->moveIndicatorTo(ZLcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V
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

    .line 653
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 661
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 662
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$2200(Lcom/xiaopeng/xui/widget/XTabLayout;)V

    .line 663
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$6;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->invalidate()V

    .line 664
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 656
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 657
    return-void
.end method
