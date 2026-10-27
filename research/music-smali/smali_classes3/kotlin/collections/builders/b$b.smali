.class public final Lkotlin/collections/builders/b$b;
.super Lkotlin/collections/builders/b$d;
.source "MapBuilder.kt"

# interfaces
.implements Lccp;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/builders/b$d<",
        "TK;TV;>;",
        "Lccp;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


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

    .line 502
    invoke-direct {p0, p1}, Lkotlin/collections/builders/b$d;-><init>(Lkotlin/collections/builders/b;)V

    return-void
.end method


# virtual methods
.method public a()Lkotlin/collections/builders/b$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 505
    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->d()I

    move-result v0

    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->c()Lkotlin/collections/builders/b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/builders/b;->a(Lkotlin/collections/builders/b;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 506
    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->d()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lkotlin/collections/builders/b$b;->a(I)V

    invoke-virtual {p0, v0}, Lkotlin/collections/builders/b$b;->b(I)V

    .line 507
    new-instance v0, Lkotlin/collections/builders/b$c;

    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->c()Lkotlin/collections/builders/b;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->e()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lkotlin/collections/builders/b$c;-><init>(Lkotlin/collections/builders/b;I)V

    .line 508
    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->f()V

    return-object v0

    .line 505
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "sb"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->d()I

    move-result v0

    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->c()Lkotlin/collections/builders/b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/builders/b;->a(Lkotlin/collections/builders/b;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 522
    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->d()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lkotlin/collections/builders/b$b;->a(I)V

    invoke-virtual {p0, v0}, Lkotlin/collections/builders/b$b;->b(I)V

    .line 523
    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->c()Lkotlin/collections/builders/b;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/builders/b;->c(Lkotlin/collections/builders/b;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->e()I

    move-result v1

    aget-object v0, v0, v1

    .line 524
    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->c()Lkotlin/collections/builders/b;

    move-result-object v1

    invoke-static {v0, v1}, Lccf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "(this Map)"

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v0, 0x3d

    .line 525
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->c()Lkotlin/collections/builders/b;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/builders/b;->d(Lkotlin/collections/builders/b;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->e()I

    move-result v1

    aget-object v0, v0, v1

    .line 527
    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->c()Lkotlin/collections/builders/b;

    move-result-object v1

    invoke-static {v0, v1}, Lccf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 528
    :goto_1
    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->f()V

    return-void

    .line 521
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public final b()I
    .locals 4

    .line 513
    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->d()I

    move-result v0

    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->c()Lkotlin/collections/builders/b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/builders/b;->a(Lkotlin/collections/builders/b;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 514
    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->d()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lkotlin/collections/builders/b$b;->a(I)V

    invoke-virtual {p0, v0}, Lkotlin/collections/builders/b$b;->b(I)V

    .line 515
    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->c()Lkotlin/collections/builders/b;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/builders/b;->c(Lkotlin/collections/builders/b;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->e()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->c()Lkotlin/collections/builders/b;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/builders/b;->d(Lkotlin/collections/builders/b;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->e()I

    move-result v3

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    xor-int/2addr v0, v1

    .line 516
    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->f()V

    return v0

    .line 513
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 502
    invoke-virtual {p0}, Lkotlin/collections/builders/b$b;->a()Lkotlin/collections/builders/b$c;

    move-result-object v0

    return-object v0
.end method
