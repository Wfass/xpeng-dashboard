.class Lcom/xiaopeng/xui/widget/slider/SlideLineView$2;
.super Ljava/lang/Object;
.source "SlideLineView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$2;->ajZ:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 122
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$2;->ajZ:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->a(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)Landroid/graphics/Paint;

    move-result-object p1

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$2;->ajZ:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->b(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)Landroid/graphics/Paint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 117
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 127
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 111
    return-void
.end method
