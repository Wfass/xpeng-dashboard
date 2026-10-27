.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->mG()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Jb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

.field Jd:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$5;->Jb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 381
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$5;->Jd:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 385
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$5;->Jd:Z

    .line 386
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 390
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$5;->Jd:Z

    if-nez p1, :cond_0

    .line 391
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView$5;->Jb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->mG()V

    .line 392
    :cond_0
    return-void
.end method
