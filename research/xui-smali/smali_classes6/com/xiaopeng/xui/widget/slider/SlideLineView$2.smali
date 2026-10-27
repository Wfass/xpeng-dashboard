.class Lcom/xiaopeng/xui/widget/slider/SlideLineView$2;
.super Ljava/lang/Object;
.source "SlideLineView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/slider/SlideLineView;->applyStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    .line 120
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$2;->this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 133
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$2;->this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setActivated(Z)V

    .line 128
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 138
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 123
    return-void
.end method
