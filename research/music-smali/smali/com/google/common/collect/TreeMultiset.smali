.class public final Lcom/google/common/collect/TreeMultiset;
.super Lcom/google/common/collect/AbstractSortedMultiset;
.source "TreeMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeMultiset$b;,
        Lcom/google/common/collect/TreeMultiset$c;,
        Lcom/google/common/collect/TreeMultiset$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSortedMultiset<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient header:Lcom/google/common/collect/TreeMultiset$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient range:Lcom/google/common/collect/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/y<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient rootReference:Lcom/google/common/collect/TreeMultiset$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$c<",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset$c;Lcom/google/common/collect/y;Lcom/google/common/collect/TreeMultiset$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$c<",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;>;",
            "Lcom/google/common/collect/y<",
            "TE;>;",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;)V"
        }
    .end annotation

    .line 114
    invoke-virtual {p2}, Lcom/google/common/collect/y;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 115
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    .line 116
    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    .line 117
    iput-object p3, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$b;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 122
    invoke-static {p1}, Lcom/google/common/collect/y;->a(Ljava/util/Comparator;)Lcom/google/common/collect/y;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    .line 123
    new-instance p1, Lcom/google/common/collect/TreeMultiset$b;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/google/common/collect/TreeMultiset$b;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$b;

    .line 124
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {p1, p1}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V

    .line 125
    new-instance p1, Lcom/google/common/collect/TreeMultiset$c;

    invoke-direct {p1, v0}, Lcom/google/common/collect/TreeMultiset$c;-><init>(Lcom/google/common/collect/TreeMultiset$1;)V

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    return-void
.end method

.method static synthetic access$1200(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->firstNode()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/y;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/Multiset$a;
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeMultiset;->wrapEntry(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/Multiset$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$b;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->lastNode()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V
    .locals 0

    .line 58
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V
    .locals 0

    .line 58
    invoke-static {p0, p1}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V

    return-void
.end method

.method private aggregateAboveRange(Lcom/google/common/collect/TreeMultiset$a;Lcom/google/common/collect/TreeMultiset$b;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$a;",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;)J"
        }
    .end annotation

    if-nez p2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v1}, Lcom/google/common/collect/y;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->d(Lcom/google/common/collect/TreeMultiset$b;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    .line 199
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->f(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->aggregateAboveRange(Lcom/google/common/collect/TreeMultiset$a;Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    if-nez v0, :cond_4

    .line 201
    sget-object v0, Lcom/google/common/collect/TreeMultiset$4;->a:[I

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v1}, Lcom/google/common/collect/y;->g()Lcom/google/common/collect/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 205
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->f(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$a;->b(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide p1

    return-wide p1

    .line 207
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 203
    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$a;->a(Lcom/google/common/collect/TreeMultiset$b;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->f(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$a;->b(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide p1

    :goto_0
    add-long/2addr v0, p1

    return-wide v0

    .line 210
    :cond_4
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->f(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$a;->b(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v0

    .line 211
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$a;->a(Lcom/google/common/collect/TreeMultiset$b;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 212
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->e(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->aggregateAboveRange(Lcom/google/common/collect/TreeMultiset$a;Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide p1

    goto :goto_0
.end method

.method private aggregateBelowRange(Lcom/google/common/collect/TreeMultiset$a;Lcom/google/common/collect/TreeMultiset$b;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$a;",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;)J"
        }
    .end annotation

    if-nez p2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v1}, Lcom/google/common/collect/y;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->d(Lcom/google/common/collect/TreeMultiset$b;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 176
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->e(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->aggregateBelowRange(Lcom/google/common/collect/TreeMultiset$a;Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    if-nez v0, :cond_4

    .line 178
    sget-object v0, Lcom/google/common/collect/TreeMultiset$4;->a:[I

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v1}, Lcom/google/common/collect/y;->e()Lcom/google/common/collect/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 182
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->e(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$a;->b(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide p1

    return-wide p1

    .line 184
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 180
    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$a;->a(Lcom/google/common/collect/TreeMultiset$b;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->e(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$a;->b(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide p1

    :goto_0
    add-long/2addr v0, p1

    return-wide v0

    .line 187
    :cond_4
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->e(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$a;->b(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v0

    .line 188
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$a;->a(Lcom/google/common/collect/TreeMultiset$b;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 189
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->f(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->aggregateBelowRange(Lcom/google/common/collect/TreeMultiset$a;Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide p1

    goto :goto_0
.end method

.method private aggregateForEntries(Lcom/google/common/collect/TreeMultiset$a;)J
    .locals 5

    .line 159
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$b;

    .line 160
    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$a;->b(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v1

    .line 161
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v3}, Lcom/google/common/collect/y;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->aggregateBelowRange(Lcom/google/common/collect/TreeMultiset$a;Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 164
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v3}, Lcom/google/common/collect/y;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->aggregateAboveRange(Lcom/google/common/collect/TreeMultiset$a;Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    :cond_1
    return-wide v1
.end method

.method public static create()Lcom/google/common/collect/TreeMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/TreeMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-static {}, Lcom/google/common/collect/ar;->b()Lcom/google/common/collect/ar;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/TreeMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/TreeMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/google/common/collect/TreeMultiset;->create()Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    .line 105
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lcom/google/common/collect/TreeMultiset<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 89
    new-instance p0, Lcom/google/common/collect/TreeMultiset;

    .line 90
    invoke-static {}, Lcom/google/common/collect/ar;->b()Lcom/google/common/collect/ar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static distinctElements(Lcom/google/common/collect/TreeMultiset$b;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "*>;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 227
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset$b;->c(Lcom/google/common/collect/TreeMultiset$b;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private firstNode()Lcom/google/common/collect/TreeMultiset$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v0}, Lcom/google/common/collect/y;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v0}, Lcom/google/common/collect/y;->d()Ljava/lang/Object;

    move-result-object v0

    .line 390
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v2}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/TreeMultiset$b;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/google/common/collect/TreeMultiset$b;->a(Lcom/google/common/collect/TreeMultiset$b;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 394
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v3}, Lcom/google/common/collect/y;->e()Lcom/google/common/collect/j;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/j;->OPEN:Lcom/google/common/collect/j;

    if-ne v3, v4, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/common/collect/TreeMultiset$b;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    .line 396
    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$b;->g(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v2

    :cond_2
    move-object v0, v2

    goto :goto_0

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$b;->g(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    .line 401
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$b;

    if-eq v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$b;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/y;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move-object v0, v1

    :cond_5
    return-object v0
.end method

.method private lastNode()Lcom/google/common/collect/TreeMultiset$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v0}, Lcom/google/common/collect/y;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v0}, Lcom/google/common/collect/y;->f()Ljava/lang/Object;

    move-result-object v0

    .line 413
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v2}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/TreeMultiset$b;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/google/common/collect/TreeMultiset$b;->b(Lcom/google/common/collect/TreeMultiset$b;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 417
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v3}, Lcom/google/common/collect/y;->g()Lcom/google/common/collect/j;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/j;->OPEN:Lcom/google/common/collect/j;

    if-ne v3, v4, :cond_2

    .line 418
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/common/collect/TreeMultiset$b;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    .line 419
    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$b;->h(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v2

    :cond_2
    move-object v0, v2

    goto :goto_0

    .line 422
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$b;->h(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    .line 424
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$b;

    if-eq v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$b;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/y;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move-object v0, v1

    :cond_5
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3

    .line 1006
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1009
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 1010
    const-class v1, Lcom/google/common/collect/AbstractSortedMultiset;

    const-string v2, "comparator"

    invoke-static {v1, v2}, Lcom/google/common/collect/ba;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/ba$a;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/ba$a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1011
    const-class v1, Lcom/google/common/collect/TreeMultiset;

    const-string v2, "range"

    invoke-static {v1, v2}, Lcom/google/common/collect/ba;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/ba$a;

    move-result-object v1

    .line 1012
    invoke-static {v0}, Lcom/google/common/collect/y;->a(Ljava/util/Comparator;)Lcom/google/common/collect/y;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/ba$a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1013
    const-class v0, Lcom/google/common/collect/TreeMultiset;

    const-string v1, "rootReference"

    invoke-static {v0, v1}, Lcom/google/common/collect/ba;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/ba$a;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/TreeMultiset$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/common/collect/TreeMultiset$c;-><init>(Lcom/google/common/collect/TreeMultiset$1;)V

    .line 1014
    invoke-virtual {v0, p0, v1}, Lcom/google/common/collect/ba$a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1015
    new-instance v0, Lcom/google/common/collect/TreeMultiset$b;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/TreeMultiset$b;-><init>(Ljava/lang/Object;I)V

    .line 1016
    const-class v1, Lcom/google/common/collect/TreeMultiset;

    const-string v2, "header"

    invoke-static {v1, v2}, Lcom/google/common/collect/ba;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/ba$a;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/ba$a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1017
    invoke-static {v0, v0}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V

    .line 1018
    invoke-static {p0, p1}, Lcom/google/common/collect/ba;->a(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private static successor(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TT;>;",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 978
    invoke-static {p0, p1}, Lcom/google/common/collect/TreeMultiset$b;->d(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    .line 979
    invoke-static {p1, p0}, Lcom/google/common/collect/TreeMultiset$b;->c(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    return-void
.end method

.method private static successor(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TT;>;",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TT;>;",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 983
    invoke-static {p0, p1}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V

    .line 984
    invoke-static {p1, p2}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V

    return-void
.end method

.method private wrapEntry(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/Multiset$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;)",
            "Lcom/google/common/collect/Multiset$a<",
            "TE;>;"
        }
    .end annotation

    .line 362
    new-instance v0, Lcom/google/common/collect/TreeMultiset$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeMultiset$1;-><init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$b;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 999
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1000
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1001
    invoke-static {p0, p1}, Lcom/google/common/collect/ba;->a(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    const-string v0, "occurrences"

    .line 248
    invoke-static {p2, v0}, Lcom/google/common/collect/m;->a(ILjava/lang/String;)I

    if-nez p2, :cond_0

    .line 250
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/y;->c(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/o;->a(Z)V

    .line 253
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$b;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 256
    new-instance v2, Lcom/google/common/collect/TreeMultiset$b;

    invoke-direct {v2, p1, p2}, Lcom/google/common/collect/TreeMultiset$b;-><init>(Ljava/lang/Object;I)V

    .line 257
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {p1, v2, p1}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V

    .line 258
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {p1, v0, v2}, Lcom/google/common/collect/TreeMultiset$c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 v2, 0x1

    .line 261
    new-array v2, v2, [I

    .line 262
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p2, v2}, Lcom/google/common/collect/TreeMultiset$b;->a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    .line 263
    iget-object p2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {p2, v0, p1}, Lcom/google/common/collect/TreeMultiset$c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    aget p1, v2, v1

    return p1
.end method

.method public clear()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v0}, Lcom/google/common/collect/y;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v0}, Lcom/google/common/collect/y;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$b;->g(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$b;

    if-eq v0, v1, :cond_0

    .line 342
    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$b;->g(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v1

    const/4 v2, 0x0

    .line 344
    invoke-static {v0, v2}, Lcom/google/common/collect/TreeMultiset$b;->a(Lcom/google/common/collect/TreeMultiset$b;I)I

    const/4 v2, 0x0

    .line 346
    invoke-static {v0, v2}, Lcom/google/common/collect/TreeMultiset$b;->a(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    .line 347
    invoke-static {v0, v2}, Lcom/google/common/collect/TreeMultiset$b;->b(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    .line 348
    invoke-static {v0, v2}, Lcom/google/common/collect/TreeMultiset$b;->c(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    .line 349
    invoke-static {v0, v2}, Lcom/google/common/collect/TreeMultiset$b;->d(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-object v0, v1

    goto :goto_0

    .line 353
    :cond_0
    invoke-static {v1, v1}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V

    .line 354
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->b()V

    goto :goto_1

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ah;->i(Ljava/util/Iterator;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic comparator()Ljava/util/Comparator;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public count(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, 0x0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v1}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeMultiset$b;

    .line 236
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/y;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/common/collect/TreeMultiset$b;->a(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method descendingEntryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$a<",
            "TE;>;>;"
        }
    .end annotation

    .line 476
    new-instance v0, Lcom/google/common/collect/TreeMultiset$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset$3;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    return-object v0
.end method

.method public bridge synthetic descendingMultiset()Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method distinctElements()I
    .locals 2

    .line 223
    sget-object v0, Lcom/google/common/collect/TreeMultiset$a;->DISTINCT:Lcom/google/common/collect/TreeMultiset$a;

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeMultiset;->aggregateForEntries(Lcom/google/common/collect/TreeMultiset$a;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    return v0
.end method

.method elementIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 429
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->a(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/NavigableSet;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$a<",
            "TE;>;>;"
        }
    .end annotation

    .line 434
    new-instance v0, Lcom/google/common/collect/TreeMultiset$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset$2;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic firstEntry()Lcom/google/common/collect/Multiset$a;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->firstEntry()Lcom/google/common/collect/Multiset$a;

    move-result-object v0

    return-object v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/j;)Lcom/google/common/collect/SortedMultiset;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/j;",
            ")",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 523
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    .line 525
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/google/common/collect/y;->b(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/j;)Lcom/google/common/collect/y;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/common/collect/y;->a(Lcom/google/common/collect/y;)Lcom/google/common/collect/y;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$b;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/TreeMultiset$c;Lcom/google/common/collect/y;Lcom/google/common/collect/TreeMultiset$b;)V

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 518
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lastEntry()Lcom/google/common/collect/Multiset$a;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->lastEntry()Lcom/google/common/collect/Multiset$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pollFirstEntry()Lcom/google/common/collect/Multiset$a;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->pollFirstEntry()Lcom/google/common/collect/Multiset$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pollLastEntry()Lcom/google/common/collect/Multiset$a;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->pollLastEntry()Lcom/google/common/collect/Multiset$a;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 4

    const-string v0, "occurrences"

    .line 270
    invoke-static {p2, v0}, Lcom/google/common/collect/m;->a(ILjava/lang/String;)I

    if-nez p2, :cond_0

    .line 272
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$b;

    const/4 v1, 0x1

    .line 275
    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 280
    :try_start_0
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v3, p1}, Lcom/google/common/collect/y;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p2, v1}, Lcom/google/common/collect/TreeMultiset$b;->b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    iget-object p2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {p2, v0, p1}, Lcom/google/common/collect/TreeMultiset$c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    aget p1, v1, v2

    return p1

    :catch_0
    :cond_2
    :goto_0
    return v2
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    const-string v0, "count"

    .line 294
    invoke-static {p2, v0}, Lcom/google/common/collect/m;->a(ILjava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/y;->c(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 296
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/o;->a(Z)V

    return v2

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$b;

    if-nez v0, :cond_3

    if-lez p2, :cond_2

    .line 303
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->add(Ljava/lang/Object;I)I

    :cond_2
    return v2

    .line 307
    :cond_3
    new-array v1, v1, [I

    .line 308
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p2, v1}, Lcom/google/common/collect/TreeMultiset$b;->c(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    .line 309
    iget-object p2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {p2, v0, p1}, Lcom/google/common/collect/TreeMultiset$c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    aget p1, v1, v2

    return p1
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    const-string v0, "newCount"

    .line 316
    invoke-static {p3, v0}, Lcom/google/common/collect/m;->a(ILjava/lang/String;)I

    const-string v0, "oldCount"

    .line 317
    invoke-static {p2, v0}, Lcom/google/common/collect/m;->a(ILjava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/y;->c(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/o;->a(Z)V

    .line 320
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$b;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    if-lez p3, :cond_0

    .line 324
    invoke-virtual {p0, p1, p3}, Lcom/google/common/collect/TreeMultiset;->add(Ljava/lang/Object;I)I

    :cond_0
    return v8

    :cond_1
    return v7

    .line 331
    :cond_2
    new-array v9, v8, [I

    .line 332
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    move-object v1, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/collect/TreeMultiset$b;->a(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    .line 333
    iget-object p3, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {p3, v0, p1}, Lcom/google/common/collect/TreeMultiset$c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 334
    aget p1, v9, v7

    if-ne p1, p2, :cond_3

    move v7, v8

    :cond_3
    return v7
.end method

.method public size()I
    .locals 2

    .line 218
    sget-object v0, Lcom/google/common/collect/TreeMultiset$a;->SIZE:Lcom/google/common/collect/TreeMultiset$a;

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeMultiset;->aggregateForEntries(Lcom/google/common/collect/TreeMultiset$a;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMultiset(Ljava/lang/Object;Lcom/google/common/collect/j;Ljava/lang/Object;Lcom/google/common/collect/j;)Lcom/google/common/collect/SortedMultiset;
    .locals 0

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/AbstractSortedMultiset;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/j;Ljava/lang/Object;Lcom/google/common/collect/j;)Lcom/google/common/collect/SortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/j;)Lcom/google/common/collect/SortedMultiset;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/j;",
            ")",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 531
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$c;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/y;

    .line 533
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/google/common/collect/y;->a(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/j;)Lcom/google/common/collect/y;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/common/collect/y;->a(Lcom/google/common/collect/y;)Lcom/google/common/collect/y;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$b;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/TreeMultiset$c;Lcom/google/common/collect/y;Lcom/google/common/collect/TreeMultiset$b;)V

    return-object v0
.end method
