.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$8;
.super Ljava/lang/Object;
.source "CircularProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->c(F)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Jb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

.field final synthetic Je:F

.field final synthetic Jf:F


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;FF)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$8;->Jb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    iput p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$8;->Je:F

    iput p3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$8;->Jf:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$8;->Jb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;F)F

    .line 460
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$8;->Jb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$8;->Je:F

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$8;->Jb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$8;->Jf:F

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;F)F

    .line 461
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$8;->Jb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->invalidate()V

    .line 462
    return-void
.end method
