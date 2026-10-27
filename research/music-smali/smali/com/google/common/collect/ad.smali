.class public Lcom/google/common/collect/ad;
.super Ljava/lang/Object;
.source "ImmutableRangeMap.java"

# interfaces
.implements Lcom/google/common/collect/aw;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/aw<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/common/collect/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ad<",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final transient ranges:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/au<",
            "TK;>;>;"
        }
    .end annotation
.end field

.field private final transient values:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lcom/google/common/collect/ad;

    .line 46
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ad;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/google/common/collect/ad;->EMPTY:Lcom/google/common/collect/ad;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/au<",
            "TK;>;>;",
            "Lcom/google/common/collect/ImmutableList<",
            "TV;>;)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/google/common/collect/ad;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 146
    iput-object p2, p0, Lcom/google/common/collect/ad;->values:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/ad;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/common/collect/ad;->ranges:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ac;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ac<",
            "Lcom/google/common/collect/au<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/google/common/collect/ad;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-static {}, Lcom/google/common/collect/ac;->a()Lcom/google/common/collect/ac;

    move-result-object v0

    return-object v0

    .line 260
    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/ad;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 261
    invoke-static {}, Lcom/google/common/collect/au;->c()Lcom/google/common/collect/ar;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 262
    new-instance v1, Lcom/google/common/collect/ae;

    iget-object v2, p0, Lcom/google/common/collect/ad;->values:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/ae;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public synthetic b()Ljava/util/Map;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/google/common/collect/ad;->a()Lcom/google/common/collect/ac;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 343
    instance-of v0, p1, Lcom/google/common/collect/aw;

    if-eqz v0, :cond_0

    .line 344
    check-cast p1, Lcom/google/common/collect/aw;

    .line 345
    invoke-virtual {p0}, Lcom/google/common/collect/ad;->a()Lcom/google/common/collect/ac;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/aw;->b()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ac;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 338
    invoke-virtual {p0}, Lcom/google/common/collect/ad;->a()Lcom/google/common/collect/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ac;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 352
    invoke-virtual {p0}, Lcom/google/common/collect/ad;->a()Lcom/google/common/collect/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ac;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
