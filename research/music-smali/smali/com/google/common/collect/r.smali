.class public abstract Lcom/google/common/collect/r;
.super Ljava/lang/Object;
.source "DiscreteDomain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/r$b;,
        Lcom/google/common/collect/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-boolean p1, p0, Lcom/google/common/collect/r;->a:Z

    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/common/collect/r$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/common/collect/r;-><init>(Z)V

    return-void
.end method

.method public static a()Lcom/google/common/collect/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/google/common/collect/r$a;->g()Lcom/google/common/collect/r$a;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/google/common/collect/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-static {}, Lcom/google/common/collect/r$b;->g()Lcom/google/common/collect/r$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TC;)J"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation
.end method

.method a(Ljava/lang/Comparable;J)Ljava/lang/Comparable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;J)TC;"
        }
    .end annotation

    const-string v0, "distance"

    .line 251
    invoke-static {p2, p3, v0}, Lcom/google/common/collect/m;->a(JLjava/lang/String;)J

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v2, v0, p2

    if-gez v2, :cond_0

    .line 253
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r;->a(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public abstract b(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation
.end method

.method public c()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public d()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
