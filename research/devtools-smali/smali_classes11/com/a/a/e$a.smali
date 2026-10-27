.class Lcom/a/a/e$a;
.super Lcom/a/a/e;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field mValue:F


# direct methods
.method constructor <init>(F)V
    .locals 0

    .line 333
    invoke-direct {p0}, Lcom/a/a/e;-><init>()V

    .line 334
    iput p1, p0, Lcom/a/a/e$a;->mFraction:F

    .line 335
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lcom/a/a/e$a;->mValueType:Ljava/lang/Class;

    .line 336
    return-void
.end method

.method constructor <init>(FF)V
    .locals 0

    .line 326
    invoke-direct {p0}, Lcom/a/a/e;-><init>()V

    .line 327
    iput p1, p0, Lcom/a/a/e$a;->mFraction:F

    .line 328
    iput p2, p0, Lcom/a/a/e$a;->mValue:F

    .line 329
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lcom/a/a/e$a;->mValueType:Ljava/lang/Class;

    .line 330
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/a/a/e$a;->mHasValue:Z

    .line 331
    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/a/a/e$a;->dr()Lcom/a/a/e$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic dq()Lcom/a/a/e;
    .locals 1

    .line 320
    invoke-virtual {p0}, Lcom/a/a/e$a;->dr()Lcom/a/a/e$a;

    move-result-object v0

    return-object v0
.end method

.method public dr()Lcom/a/a/e$a;
    .locals 3

    .line 355
    new-instance v0, Lcom/a/a/e$a;

    invoke-virtual {p0}, Lcom/a/a/e$a;->getFraction()F

    move-result v1

    iget v2, p0, Lcom/a/a/e$a;->mValue:F

    invoke-direct {v0, v1, v2}, Lcom/a/a/e$a;-><init>(FF)V

    .line 356
    invoke-virtual {p0}, Lcom/a/a/e$a;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/e$a;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 357
    return-object v0
.end method

.method public getFloatValue()F
    .locals 1

    .line 339
    iget v0, p0, Lcom/a/a/e$a;->mValue:F

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 343
    iget v0, p0, Lcom/a/a/e$a;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
