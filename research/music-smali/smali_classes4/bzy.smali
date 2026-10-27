.class public abstract Lbzy;
.super Ljava/lang/Object;
.source "ContinuationImpl.kt"

# interfaces
.implements Lbzq;
.implements Lcab;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbzq<",
        "Ljava/lang/Object;",
        ">;",
        "Lcab;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final completion:Lbzq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbzq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbzq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbzq<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lbzy;->completion:Lbzq;

    return-void
.end method


# virtual methods
.method public create(Lbzq;)Lbzq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbzq<",
            "*>;)",
            "Lbzq<",
            "Lkotlin/w;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "create(Continuation) has not been overridden"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create(Ljava/lang/Object;Lbzq;)Lbzq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lbzq<",
            "*>;)",
            "Lbzq<",
            "Lkotlin/w;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "create(Any?;Continuation) has not been overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCallerFrame()Lcab;
    .locals 2

    .line 73
    iget-object v0, p0, Lbzy;->completion:Lbzq;

    instance-of v1, v0, Lcab;

    if-eqz v1, :cond_0

    check-cast v0, Lcab;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getCompletion()Lbzq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbzq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lbzy;->completion:Lbzq;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    .line 76
    invoke-static {p0}, Lcad;->a(Lbzy;)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method protected abstract invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected releaseIntercepted()V
    .locals 0

    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 3

    move-object v0, p1

    move-object p1, p0

    .line 28
    :goto_0
    move-object v1, p1

    check-cast v1, Lbzq;

    invoke-static {v1}, Lcae;->b(Lbzq;)V

    .line 29
    check-cast p1, Lbzy;

    .line 30
    iget-object v1, p1, Lbzy;->completion:Lbzq;

    invoke-static {v1}, Lccf;->a(Ljava/lang/Object;)V

    .line 33
    :try_start_0
    invoke-virtual {p1, v0}, Lbzy;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    invoke-static {}, Lbzv;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_0

    return-void

    .line 35
    :cond_0
    sget-object v2, Lkotlin/l;->Companion:Lkotlin/l$a;

    invoke-static {v0}, Lkotlin/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 37
    sget-object v2, Lkotlin/l;->Companion:Lkotlin/l$a;

    invoke-static {v0}, Lkotlin/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    :goto_1
    invoke-virtual {p1}, Lbzy;->releaseIntercepted()V

    .line 40
    instance-of p1, v1, Lbzy;

    if-eqz p1, :cond_1

    move-object p1, v1

    goto :goto_0

    .line 46
    :cond_1
    invoke-interface {v1, v0}, Lbzq;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Continuation at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbzy;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
