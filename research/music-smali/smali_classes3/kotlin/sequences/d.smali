.class final Lkotlin/sequences/d;
.super Lkotlin/sequences/e;
.source "SequenceBuilder.kt"

# interfaces
.implements Lbzq;
.implements Lccm;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/sequences/e<",
        "TT;>;",
        "Lbzq<",
        "Lkotlin/w;",
        ">;",
        "Lccm;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private d:Lbzq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbzq<",
            "-",
            "Lkotlin/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lkotlin/sequences/e;-><init>()V

    return-void
.end method

.method private final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lkotlin/sequences/d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/sequences/d;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method private final b()Ljava/lang/Throwable;
    .locals 3

    .line 155
    iget v0, p0, Lkotlin/sequences/d;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state of the iterator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlin/sequences/d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator has failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_0

    .line 156
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lbzq;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lbzq<",
            "-",
            "Lkotlin/w;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lkotlin/sequences/d;->b:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 164
    iput p1, p0, Lkotlin/sequences/d;->a:I

    .line 166
    iput-object p2, p0, Lkotlin/sequences/d;->d:Lbzq;

    .line 167
    invoke-static {}, Lbzv;->a()Ljava/lang/Object;

    move-result-object p1

    .line 165
    invoke-static {}, Lbzv;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lcae;->c(Lbzq;)V

    :cond_0
    invoke-static {}, Lbzv;->a()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/w;->a:Lkotlin/w;

    return-object p1
.end method

.method public final a(Lbzq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbzq<",
            "-",
            "Lkotlin/w;",
            ">;)V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lkotlin/sequences/d;->d:Lbzq;

    return-void
.end method

.method public getContext()Lbzs;
    .locals 1

    .line 188
    sget-object v0, Lbzt;->INSTANCE:Lbzt;

    check-cast v0, Lbzs;

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    .line 112
    :goto_0
    iget v0, p0, Lkotlin/sequences/d;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 123
    :cond_0
    invoke-direct {p0}, Lkotlin/sequences/d;->b()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_1
    return v3

    .line 115
    :cond_2
    iget-object v0, p0, Lkotlin/sequences/d;->c:Ljava/util/Iterator;

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    iput v2, p0, Lkotlin/sequences/d;->a:I

    return v3

    .line 119
    :cond_3
    iput-object v1, p0, Lkotlin/sequences/d;->c:Ljava/util/Iterator;

    :cond_4
    const/4 v0, 0x5

    .line 126
    iput v0, p0, Lkotlin/sequences/d;->a:I

    .line 127
    iget-object v0, p0, Lkotlin/sequences/d;->d:Lbzq;

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    .line 128
    iput-object v1, p0, Lkotlin/sequences/d;->d:Lbzq;

    .line 129
    sget-object v1, Lkotlin/l;->Companion:Lkotlin/l$a;

    sget-object v1, Lkotlin/w;->a:Lkotlin/w;

    invoke-static {v1}, Lkotlin/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lbzq;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 134
    iget v0, p0, Lkotlin/sequences/d;->a:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lkotlin/sequences/d;->a:I

    .line 143
    iget-object v0, p0, Lkotlin/sequences/d;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 144
    iput-object v1, p0, Lkotlin/sequences/d;->b:Ljava/lang/Object;

    return-object v0

    .line 147
    :cond_0
    invoke-direct {p0}, Lkotlin/sequences/d;->b()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 137
    :cond_1
    iput v1, p0, Lkotlin/sequences/d;->a:I

    .line 138
    iget-object v0, p0, Lkotlin/sequences/d;->c:Ljava/util/Iterator;

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 135
    :cond_2
    invoke-direct {p0}, Lkotlin/sequences/d;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 0

    .line 183
    invoke-static {p1}, Lkotlin/m;->a(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 184
    iput p1, p0, Lkotlin/sequences/d;->a:I

    return-void
.end method
