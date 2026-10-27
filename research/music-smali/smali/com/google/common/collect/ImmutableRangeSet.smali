.class public final Lcom/google/common/collect/ImmutableRangeSet;
.super Lcom/google/common/collect/e;
.source "ImmutableRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableRangeSet$a;,
        Lcom/google/common/collect/ImmutableRangeSet$AsSet;,
        Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/e<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ALL:Lcom/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final EMPTY:Lcom/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private transient complement:Lcom/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation
.end field

.field private final transient ranges:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/au<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    .line 53
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/google/common/collect/ImmutableRangeSet;->EMPTY:Lcom/google/common/collect/ImmutableRangeSet;

    .line 55
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    .line 56
    invoke-static {}, Lcom/google/common/collect/au;->d()Lcom/google/common/collect/au;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/google/common/collect/ImmutableRangeSet;->ALL:Lcom/google/common/collect/ImmutableRangeSet;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/au<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lcom/google/common/collect/e;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method private b(Lcom/google/common/collect/au;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/au<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/au<",
            "TC;>;>;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/google/common/collect/au;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->c()Lcom/google/common/collect/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/au;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    iget-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    return-object p1

    .line 415
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/au;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 419
    invoke-static {}, Lcom/google/common/collect/au;->b()Lcom/google/common/base/h;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    sget-object v3, Lcom/google/common/collect/bd$b;->FIRST_AFTER:Lcom/google/common/collect/bd$b;

    sget-object v4, Lcom/google/common/collect/bd$a;->NEXT_HIGHER:Lcom/google/common/collect/bd$a;

    .line 417
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/bd;->a(Ljava/util/List;Lcom/google/common/base/h;Ljava/lang/Comparable;Lcom/google/common/collect/bd$b;Lcom/google/common/collect/bd$a;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 428
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/au;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 429
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 432
    invoke-static {}, Lcom/google/common/collect/au;->a()Lcom/google/common/base/h;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    sget-object v4, Lcom/google/common/collect/bd$b;->FIRST_PRESENT:Lcom/google/common/collect/bd$b;

    sget-object v5, Lcom/google/common/collect/bd$a;->NEXT_HIGHER:Lcom/google/common/collect/bd$a;

    .line 430
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/common/collect/bd;->a(Ljava/util/List;Lcom/google/common/base/h;Ljava/lang/Comparable;Lcom/google/common/collect/bd$b;Lcom/google/common/collect/bd$a;)I

    move-result v1

    goto :goto_1

    .line 437
    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    :goto_1
    sub-int/2addr v1, v0

    if-nez v1, :cond_4

    .line 441
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1

    .line 443
    :cond_4
    new-instance v2, Lcom/google/common/collect/ImmutableRangeSet$1;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/google/common/collect/ImmutableRangeSet$1;-><init>(Lcom/google/common/collect/ImmutableRangeSet;IILcom/google/common/collect/au;)V

    return-object v2

    .line 409
    :cond_5
    :goto_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public static b()Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/google/common/collect/ImmutableRangeSet;->EMPTY:Lcom/google/common/collect/ImmutableRangeSet;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/common/collect/au;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/au<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 470
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->c()Lcom/google/common/collect/au;

    move-result-object v0

    .line 472
    invoke-virtual {p1, v0}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/au;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 474
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/common/collect/au;->b(Lcom/google/common/collect/au;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet;->b(Lcom/google/common/collect/au;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v0

    .line 478
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->b()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/common/collect/r;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    .line 501
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->of()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->c()Lcom/google/common/collect/au;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/r;)Lcom/google/common/collect/au;

    move-result-object v0

    .line 506
    invoke-virtual {v0}, Lcom/google/common/collect/au;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 511
    invoke-virtual {v0}, Lcom/google/common/collect/au;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/collect/r;->d()Ljava/lang/Comparable;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 515
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Neither the DiscreteDomain nor this range set are bounded above"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 520
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;-><init>(Lcom/google/common/collect/ImmutableRangeSet;Lcom/google/common/collect/r;)V

    return-object v0

    .line 509
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Neither the DiscreteDomain nor this range set are bounded below"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Comparable;)Z
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/common/collect/e;->a(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Comparable;)Lcom/google/common/collect/au;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/au<",
            "TC;>;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 176
    invoke-static {}, Lcom/google/common/collect/au;->a()Lcom/google/common/base/h;

    move-result-object v1

    .line 177
    invoke-static {p1}, Lcom/google/common/collect/q;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/q;

    move-result-object v2

    .line 178
    invoke-static {}, Lcom/google/common/collect/ar;->b()Lcom/google/common/collect/ar;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/bd$b;->ANY_PRESENT:Lcom/google/common/collect/bd$b;

    sget-object v5, Lcom/google/common/collect/bd$a;->NEXT_LOWER:Lcom/google/common/collect/bd$a;

    .line 174
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/bd;->a(Ljava/util/List;Lcom/google/common/base/h;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/bd$b;Lcom/google/common/collect/bd$a;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/au;

    .line 183
    invoke-virtual {v0, p1}, Lcom/google/common/collect/au;->e(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    return-object v1
.end method

.method public c()Lcom/google/common/collect/au;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/au<",
            "TC;>;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/au;

    iget-object v0, v0, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/au;

    iget-object v1, v1, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    invoke-static {v0, v1}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/q;Lcom/google/common/collect/q;)Lcom/google/common/collect/au;

    move-result-object v0

    return-object v0

    .line 191
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public d()Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/collect/au<",
            "TC;>;>;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 278
    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/au;->c()Lcom/google/common/collect/ar;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public synthetic e()Ljava/util/Set;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->d()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/common/collect/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
