.class Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;
.super Ljava/lang/Object;
.source "SlideLineView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/slider/SlideLineView;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ajZ:Lcom/xiaopeng/xui/widget/slider/SlideLineView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;->ajZ:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;->ajZ:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->a(Lcom/xiaopeng/xui/widget/slider/SlideLineView;F)F

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;->ajZ:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->invalidate()V

    .line 105
    return-void
.end method
