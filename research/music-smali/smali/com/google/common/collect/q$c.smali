.class final Lcom/google/common/collect/q$c;
.super Lcom/google/common/collect/q;
.source "Cut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/q<",
        "Ljava/lang/Comparable<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/q$c;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Lcom/google/common/collect/q$c;

    invoke-direct {v0}, Lcom/google/common/collect/q$c;-><init>()V

    sput-object v0, Lcom/google/common/collect/q$c;->INSTANCE:Lcom/google/common/collect/q$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, v0}, Lcom/google/common/collect/q;-><init>(Ljava/lang/Comparable;)V

    return-void
.end method

.method static synthetic c()Lcom/google/common/collect/q$c;
    .locals 1

    .line 119
    sget-object v0, Lcom/google/common/collect/q$c;->INSTANCE:Lcom/google/common/collect/q$c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/common/collect/q;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/q<",
            "Ljava/lang/Comparable<",
            "*>;>;)I"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method a(Lcom/google/common/collect/j;Lcom/google/common/collect/r;)Lcom/google/common/collect/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j;",
            "Lcom/google/common/collect/r<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Lcom/google/common/collect/q<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation

    .line 149
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method a(Lcom/google/common/collect/r;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    .line 170
    invoke-virtual {p1}, Lcom/google/common/collect/r;->c()Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "(-\u221e"

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method a(Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method b(Lcom/google/common/collect/j;Lcom/google/common/collect/r;)Lcom/google/common/collect/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j;",
            "Lcom/google/common/collect/r<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Lcom/google/common/collect/q<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation

    .line 155
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "this statement should be unreachable"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method b(Lcom/google/common/collect/r;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    .line 175
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method b(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 165
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method c(Lcom/google/common/collect/r;)Lcom/google/common/collect/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Lcom/google/common/collect/q<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation

    .line 181
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/collect/r;->c()Ljava/lang/Comparable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/q;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/q;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 119
    check-cast p1, Lcom/google/common/collect/q;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/q$c;->a(Lcom/google/common/collect/q;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 194
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "-\u221e"

    return-object v0
.end method
