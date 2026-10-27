.class abstract Lcom/google/common/collect/q;
.super Ljava/lang/Object;
.source "Cut.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/q$b;,
        Lcom/google/common/collect/q$d;,
        Lcom/google/common/collect/q$a;,
        Lcom/google/common/collect/q$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/google/common/collect/q<",
        "TC;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/common/collect/q;->a:Ljava/lang/Comparable;

    return-void
.end method

.method static a()Lcom/google/common/collect/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/q<",
            "TC;>;"
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/google/common/collect/q$c;->c()Lcom/google/common/collect/q$c;

    move-result-object v0

    return-object v0
.end method

.method static b()Lcom/google/common/collect/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/q<",
            "TC;>;"
        }
    .end annotation

    .line 215
    invoke-static {}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/q$a;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/Comparable;)Lcom/google/common/collect/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lcom/google/common/collect/q<",
            "TC;>;"
        }
    .end annotation

    .line 300
    new-instance v0, Lcom/google/common/collect/q$d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/q$d;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method static c(Ljava/lang/Comparable;)Lcom/google/common/collect/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lcom/google/common/collect/q<",
            "TC;>;"
        }
    .end annotation

    .line 383
    new-instance v0, Lcom/google/common/collect/q$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/q$b;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/common/collect/q;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/q<",
            "TC;>;)I"
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/google/common/collect/q;->a()Lcom/google/common/collect/q;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 74
    :cond_0
    invoke-static {}, Lcom/google/common/collect/q;->b()Lcom/google/common/collect/q;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/q;->a:Ljava/lang/Comparable;

    iget-object v1, p1, Lcom/google/common/collect/q;->a:Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lcom/google/common/collect/au;->c(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 82
    :cond_2
    instance-of v0, p0, Lcom/google/common/collect/q$b;

    instance-of p1, p1, Lcom/google/common/collect/q$b;

    invoke-static {v0, p1}, Lcom/google/common/primitives/Booleans;->a(ZZ)I

    move-result p1

    return p1
.end method

.method abstract a(Lcom/google/common/collect/j;Lcom/google/common/collect/r;)Lcom/google/common/collect/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j;",
            "Lcom/google/common/collect/r<",
            "TC;>;)",
            "Lcom/google/common/collect/q<",
            "TC;>;"
        }
    .end annotation
.end method

.method abstract a(Lcom/google/common/collect/r;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r<",
            "TC;>;)TC;"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/StringBuilder;)V
.end method

.method abstract a(Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method abstract b(Lcom/google/common/collect/j;Lcom/google/common/collect/r;)Lcom/google/common/collect/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j;",
            "Lcom/google/common/collect/r<",
            "TC;>;)",
            "Lcom/google/common/collect/q<",
            "TC;>;"
        }
    .end annotation
.end method

.method abstract b(Lcom/google/common/collect/r;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r<",
            "TC;>;)TC;"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/StringBuilder;)V
.end method

.method c(Lcom/google/common/collect/r;)Lcom/google/common/collect/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r<",
            "TC;>;)",
            "Lcom/google/common/collect/q<",
            "TC;>;"
        }
    .end annotation

    return-object p0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lcom/google/common/collect/q;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 92
    instance-of v0, p1, Lcom/google/common/collect/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Lcom/google/common/collect/q;

    .line 96
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method public abstract hashCode()I
.end method
