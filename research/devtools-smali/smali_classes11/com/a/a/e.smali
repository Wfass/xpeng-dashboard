.class public abstract Lcom/a/a/e;
.super Ljava/lang/Object;
.source "Keyframe.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/e$a;
    }
.end annotation


# instance fields
.field mFraction:F

.field mHasValue:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mValueType:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/e;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/e;->mHasValue:Z

    .line 320
    return-void
.end method

.method public static b(F)Lcom/a/a/e;
    .locals 1

    .line 124
    new-instance v0, Lcom/a/a/e$a;

    invoke-direct {v0, p0}, Lcom/a/a/e$a;-><init>(F)V

    return-object v0
.end method

.method public static b(FF)Lcom/a/a/e;
    .locals 1

    .line 108
    new-instance v0, Lcom/a/a/e$a;

    invoke-direct {v0, p0, p1}, Lcom/a/a/e$a;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/a/a/e;->dq()Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public abstract dq()Lcom/a/a/e;
.end method

.method public getFraction()F
    .locals 1

    .line 191
    iget v0, p0, Lcom/a/a/e;->mFraction:F

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/a/a/e;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/a/a/e;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 222
    return-void
.end method
