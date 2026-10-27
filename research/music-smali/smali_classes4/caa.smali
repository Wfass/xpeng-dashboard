.class public abstract Lcaa;
.super Lbzy;
.source "ContinuationImpl.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final _context:Lbzs;

.field private transient intercepted:Lbzq;
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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbzq<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 102
    invoke-interface {p1}, Lbzq;->getContext()Lbzs;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcaa;-><init>(Lbzq;Lbzs;)V

    return-void
.end method

.method public constructor <init>(Lbzq;Lbzs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbzq<",
            "Ljava/lang/Object;",
            ">;",
            "Lbzs;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Lbzy;-><init>(Lbzq;)V

    .line 100
    iput-object p2, p0, Lcaa;->_context:Lbzs;

    return-void
.end method


# virtual methods
.method public getContext()Lbzs;
    .locals 1

    .line 105
    iget-object v0, p0, Lcaa;->_context:Lbzs;

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final intercepted()Lbzq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbzq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcaa;->intercepted:Lbzq;

    if-nez v0, :cond_2

    .line 112
    invoke-virtual {p0}, Lcaa;->getContext()Lbzs;

    move-result-object v0

    sget-object v1, Lbzr;->a:Lbzr$a;

    check-cast v1, Lbzs$b;

    invoke-interface {v0, v1}, Lbzs;->a(Lbzs$b;)Lbzs$a;

    move-result-object v0

    check-cast v0, Lbzr;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lbzq;

    invoke-interface {v0, v1}, Lbzr;->a(Lbzq;)Lbzq;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    check-cast v0, Lbzq;

    .line 113
    :cond_1
    iput-object v0, p0, Lcaa;->intercepted:Lbzq;

    :cond_2
    return-object v0
.end method

.method protected releaseIntercepted()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcaa;->intercepted:Lbzq;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcaa;->getContext()Lbzs;

    move-result-object v1

    sget-object v2, Lbzr;->a:Lbzr$a;

    check-cast v2, Lbzs$b;

    invoke-interface {v1, v2}, Lbzs;->a(Lbzs$b;)Lbzs$a;

    move-result-object v1

    invoke-static {v1}, Lccf;->a(Ljava/lang/Object;)V

    check-cast v1, Lbzr;

    invoke-interface {v1, v0}, Lbzr;->b(Lbzq;)V

    .line 120
    :cond_0
    sget-object v0, Lbzz;->a:Lbzz;

    check-cast v0, Lbzq;

    iput-object v0, p0, Lcaa;->intercepted:Lbzq;

    return-void
.end method
