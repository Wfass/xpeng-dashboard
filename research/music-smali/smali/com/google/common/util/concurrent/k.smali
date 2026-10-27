.class public final Lcom/google/common/util/concurrent/k;
.super Lcom/google/common/util/concurrent/a$i;
.source "SettableFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/a$i<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/google/common/util/concurrent/a$i;-><init>()V

    return-void
.end method

.method public static h()Lcom/google/common/util/concurrent/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/util/concurrent/k<",
            "TV;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/google/common/util/concurrent/k;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/k;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/common/util/concurrent/i;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/i<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 59
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/a$i;->a(Lcom/google/common/util/concurrent/i;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 47
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/a$i;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/a$i;->a(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
