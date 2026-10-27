.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$1;
.super Ljava/lang/Object;
.source "CircularProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->setProgress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Jb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$1;->Jb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$1;->Jb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;F)F

    .line 276
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$1;->Jb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->invalidate()V

    .line 277
    return-void
.end method
