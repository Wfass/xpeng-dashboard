.class public abstract Lcah;
.super Lcag;
.source "ContinuationImpl.kt"

# interfaces
.implements Lccd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcag;",
        "Lccd<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, v0}, Lcah;-><init>(ILbzq;)V

    return-void
.end method

.method public constructor <init>(ILbzq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbzq<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0, p2}, Lcag;-><init>(Lbzq;)V

    .line 142
    iput p1, p0, Lcah;->arity:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 1

    .line 142
    iget v0, p0, Lcah;->arity:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcah;->getCompletion()Lbzq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    move-object v0, p0

    check-cast v0, Lccd;

    invoke-static {v0}, Lcci;->a(Lccd;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderLambdaToString(this)"

    invoke-static {v0, v1}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-super {p0}, Lcag;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
