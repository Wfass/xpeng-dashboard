.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$7;
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


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$7;->Jb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$7;->Jb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;F)F

    .line 447
    return-void
.end method
