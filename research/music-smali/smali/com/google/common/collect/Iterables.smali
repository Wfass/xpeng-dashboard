.class public final Lcom/google/common/collect/Iterables;
.super Ljava/lang/Object;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Iterables$UnmodifiableIterable;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)I"
        }
    .end annotation

    .line 110
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    .line 111
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    goto :goto_0

    .line 112
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ah;->b(Ljava/util/Iterator;)I

    move-result p0

    :goto_0
    return p0
.end method

.method static a()Lcom/google/common/base/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/h<",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;>;"
        }
    .end annotation

    .line 1019
    new-instance v0, Lcom/google/common/collect/Iterables$10;

    invoke-direct {v0}, Lcom/google/common/collect/Iterables$10;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;Lcom/google/common/base/h;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TF;>;",
            "Lcom/google/common/base/h<",
            "-TF;+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 713
    invoke-static {p0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    new-instance v0, Lcom/google/common/collect/Iterables$5;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterables$5;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/h;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 451
    invoke-static {p0, p1}, Lcom/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Iterable;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 735
    invoke-static {p0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    .line 737
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 738
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/ah;->c(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/Iterable;Lcom/google/common/base/p;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Lcom/google/common/base/p<",
            "-TT;>;TT;)TT;"
        }
    .end annotation

    .line 666
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/ah;->a(Ljava/util/Iterator;Lcom/google/common/base/p;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 841
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;Lcom/google/common/base/p;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/common/base/p<",
            "-TT;>;II)V"
        }
    .end annotation

    .line 228
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, p3, :cond_1

    .line 229
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-lt p3, p2, :cond_2

    .line 235
    invoke-interface {p0, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/Iterable;Lcom/google/common/base/p;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/google/common/base/p<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 178
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 179
    check-cast p0, Ljava/util/List;

    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/p;

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterables;->a(Ljava/util/List;Lcom/google/common/base/p;)Z

    move-result p0

    return p0

    .line 181
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/ah;->a(Ljava/util/Iterator;Lcom/google/common/base/p;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 122
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 123
    check-cast p0, Ljava/util/Collection;

    .line 124
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 126
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/ah;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 354
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 355
    invoke-static {p1}, Lcom/google/common/collect/Collections2;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p1

    .line 356
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    .line 358
    :cond_0
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/ah;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/util/List;Lcom/google/common/base/p;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/common/base/p<",
            "-TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 193
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    .line 194
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 195
    invoke-interface {p1, v3}, Lcom/google/common/base/p;->a(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-le v1, v2, :cond_0

    .line 198
    :try_start_0
    invoke-interface {p0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 203
    :catch_0
    invoke-static {p0, p1, v2, v1}, Lcom/google/common/collect/Iterables;->a(Ljava/util/List;Lcom/google/common/base/p;II)V

    return v4

    .line 200
    :catch_1
    invoke-static {p0, p1, v2, v1}, Lcom/google/common/collect/Iterables;->a(Ljava/util/List;Lcom/google/common/base/p;II)V

    return v4

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    if-eq v1, v2, :cond_3

    move v0, v4

    :cond_3
    return v0
.end method

.method public static a(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 318
    invoke-static {p1, v0}, Lcom/google/common/collect/ao;->a(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterables;->a(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;[TT;)[TT;"
        }
    .end annotation

    .line 322
    invoke-static {p0}, Lcom/google/common/collect/Iterables;->g(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    .line 323
    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;I)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 864
    invoke-static {p0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "number to skip cannot be negative"

    .line 865
    invoke-static {v0, v1}, Lcom/google/common/base/o;->a(ZLjava/lang/Object;)V

    .line 867
    new-instance v0, Lcom/google/common/collect/Iterables$6;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterables$6;-><init>(Ljava/lang/Iterable;I)V

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 614
    invoke-static {p0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    invoke-static {p1}, Lcom/google/common/base/q;->a(Ljava/lang/Class;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterables;->c(Ljava/lang/Iterable;Lcom/google/common/base/p;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method static b(Ljava/lang/Iterable;Lcom/google/common/base/p;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/google/common/base/p<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 242
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 244
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 246
    invoke-interface {p1, v0}, Lcom/google/common/base/p;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;TT;)TT;"
        }
    .end annotation

    .line 790
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/ah;->b(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 279
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ah;->c(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;I)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 923
    invoke-static {p0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "limit is negative"

    .line 924
    invoke-static {v0, v1}, Lcom/google/common/base/o;->a(ZLjava/lang/Object;)V

    .line 925
    new-instance v0, Lcom/google/common/collect/Iterables$7;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterables$7;-><init>(Ljava/lang/Iterable;I)V

    return-object v0
.end method

.method public static c(Ljava/lang/Iterable;Lcom/google/common/base/p;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/google/common/base/p<",
            "-TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 587
    invoke-static {p0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    new-instance v0, Lcom/google/common/collect/Iterables$4;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterables$4;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/p;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 292
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ah;->d(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Iterable;Lcom/google/common/base/p;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/google/common/base/p<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 625
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/ah;->c(Ljava/util/Iterator;Lcom/google/common/base/p;)Z

    move-result p0

    return p0
.end method

.method static d(Ljava/lang/Iterable;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 333
    invoke-static {p0}, Lcom/google/common/collect/Iterables;->g(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 400
    invoke-static {p0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    new-instance v0, Lcom/google/common/collect/Iterables$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterables$1;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Iterable;Lcom/google/common/base/p;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/google/common/base/p<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 635
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/ah;->d(Ljava/util/Iterator;Lcom/google/common/base/p;)Z

    move-result p0

    return p0
.end method

.method public static f(Ljava/lang/Iterable;Lcom/google/common/base/p;)Lcom/google/common/base/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/google/common/base/p<",
            "-TT;>;)",
            "Lcom/google/common/base/l<",
            "TT;>;"
        }
    .end annotation

    .line 681
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/ah;->f(Ljava/util/Iterator;Lcom/google/common/base/p;)Lcom/google/common/base/l;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 804
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 805
    check-cast p0, Ljava/util/List;

    .line 806
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    invoke-static {p0}, Lcom/google/common/collect/Iterables;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 807
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 812
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ah;->f(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static g(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 342
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    goto :goto_0

    .line 344
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Lists;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_0
    return-object p0
.end method
