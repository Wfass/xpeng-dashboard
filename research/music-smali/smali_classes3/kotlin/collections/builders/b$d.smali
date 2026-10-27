.class public Lkotlin/collections/builders/b$d;
.super Ljava/lang/Object;
.source "MapBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final a:Lkotlin/collections/builders/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/builders/b<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Lkotlin/collections/builders/b$d;->a:Lkotlin/collections/builders/b;

    const/4 p1, -0x1

    .line 460
    iput p1, p0, Lkotlin/collections/builders/b$d;->c:I

    .line 463
    invoke-virtual {p0}, Lkotlin/collections/builders/b$d;->f()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 459
    iput p1, p0, Lkotlin/collections/builders/b$d;->b:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 460
    iput p1, p0, Lkotlin/collections/builders/b$d;->c:I

    return-void
.end method

.method public final c()Lkotlin/collections/builders/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lkotlin/collections/builders/b$d;->a:Lkotlin/collections/builders/b;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 459
    iget v0, p0, Lkotlin/collections/builders/b$d;->b:I

    return v0
.end method

.method public final e()I
    .locals 1

    .line 460
    iget v0, p0, Lkotlin/collections/builders/b$d;->c:I

    return v0
.end method

.method public final f()V
    .locals 2

    .line 467
    :goto_0
    iget v0, p0, Lkotlin/collections/builders/b$d;->b:I

    iget-object v1, p0, Lkotlin/collections/builders/b$d;->a:Lkotlin/collections/builders/b;

    invoke-static {v1}, Lkotlin/collections/builders/b;->a(Lkotlin/collections/builders/b;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/collections/builders/b$d;->a:Lkotlin/collections/builders/b;

    invoke-static {v0}, Lkotlin/collections/builders/b;->b(Lkotlin/collections/builders/b;)[I

    move-result-object v0

    iget v1, p0, Lkotlin/collections/builders/b$d;->b:I

    aget v0, v0, v1

    if-gez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 468
    iput v1, p0, Lkotlin/collections/builders/b$d;->b:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final hasNext()Z
    .locals 2

    .line 471
    iget v0, p0, Lkotlin/collections/builders/b$d;->b:I

    iget-object v1, p0, Lkotlin/collections/builders/b$d;->a:Lkotlin/collections/builders/b;

    invoke-static {v1}, Lkotlin/collections/builders/b;->a(Lkotlin/collections/builders/b;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    .line 474
    iget v0, p0, Lkotlin/collections/builders/b$d;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lkotlin/collections/builders/b$d;->a:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->g()V

    .line 476
    iget-object v0, p0, Lkotlin/collections/builders/b$d;->a:Lkotlin/collections/builders/b;

    iget v2, p0, Lkotlin/collections/builders/b$d;->c:I

    invoke-static {v0, v2}, Lkotlin/collections/builders/b;->a(Lkotlin/collections/builders/b;I)V

    .line 477
    iput v1, p0, Lkotlin/collections/builders/b$d;->c:I

    return-void

    .line 474
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() before removing element from the iterator."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
