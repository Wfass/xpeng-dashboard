.class public final Lcom/google/zxing/common/a/c;
.super Ljava/lang/Object;
.source "ReedSolomonEncoder.java"


# instance fields
.field private final jC:Lcom/google/zxing/common/a/a;

.field private final jE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/common/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/a/a;)V
    .locals 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/zxing/common/a/c;->jC:Lcom/google/zxing/common/a/a;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/common/a/c;->jE:Ljava/util/List;

    .line 36
    iget-object v0, p0, Lcom/google/zxing/common/a/c;->jE:Ljava/util/List;

    new-instance v1, Lcom/google/zxing/common/a/b;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-direct {v1, p1, v3}, Lcom/google/zxing/common/a/b;-><init>(Lcom/google/zxing/common/a/a;[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method private bu(I)Lcom/google/zxing/common/a/b;
    .locals 9

    .line 40
    iget-object v0, p0, Lcom/google/zxing/common/a/c;->jE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/zxing/common/a/c;->jE:Ljava/util/List;

    iget-object v1, p0, Lcom/google/zxing/common/a/c;->jE:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/a/b;

    .line 42
    iget-object v1, p0, Lcom/google/zxing/common/a/c;->jE:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-gt v1, p1, :cond_0

    .line 43
    new-instance v3, Lcom/google/zxing/common/a/b;

    iget-object v4, p0, Lcom/google/zxing/common/a/c;->jC:Lcom/google/zxing/common/a/a;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    iget-object v6, p0, Lcom/google/zxing/common/a/c;->jC:Lcom/google/zxing/common/a/a;

    add-int/lit8 v7, v1, -0x1

    iget-object v8, p0, Lcom/google/zxing/common/a/c;->jC:Lcom/google/zxing/common/a/a;

    .line 44
    invoke-virtual {v8}, Lcom/google/zxing/common/a/a;->cm()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/a/a;->bq(I)I

    move-result v6

    aput v6, v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/common/a/b;-><init>(Lcom/google/zxing/common/a/a;[I)V

    .line 43
    invoke-virtual {v0, v3}, Lcom/google/zxing/common/a/b;->b(Lcom/google/zxing/common/a/b;)Lcom/google/zxing/common/a/b;

    move-result-object v0

    .line 45
    iget-object v3, p0, Lcom/google/zxing/common/a/c;->jE:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    nop

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/a/c;->jE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/zxing/common/a/b;

    return-object p1
.end method


# virtual methods
.method public a([II)V
    .locals 6

    .line 53
    if-eqz p2, :cond_2

    .line 56
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 57
    if-lez v0, :cond_1

    .line 60
    invoke-direct {p0, p2}, Lcom/google/zxing/common/a/c;->bu(I)Lcom/google/zxing/common/a/b;

    move-result-object v1

    .line 61
    new-array v2, v0, [I

    .line 62
    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    new-instance v4, Lcom/google/zxing/common/a/b;

    iget-object v5, p0, Lcom/google/zxing/common/a/c;->jC:Lcom/google/zxing/common/a/a;

    invoke-direct {v4, v5, v2}, Lcom/google/zxing/common/a/b;-><init>(Lcom/google/zxing/common/a/a;[I)V

    .line 64
    const/4 v2, 0x1

    invoke-virtual {v4, p2, v2}, Lcom/google/zxing/common/a/b;->j(II)Lcom/google/zxing/common/a/b;

    move-result-object v4

    .line 65
    invoke-virtual {v4, v1}, Lcom/google/zxing/common/a/b;->c(Lcom/google/zxing/common/a/b;)[Lcom/google/zxing/common/a/b;

    move-result-object v1

    aget-object v1, v1, v2

    .line 66
    invoke-virtual {v1}, Lcom/google/zxing/common/a/b;->cn()[I

    move-result-object v1

    .line 67
    array-length v2, v1

    sub-int/2addr p2, v2

    .line 68
    move v2, v3

    :goto_0
    if-ge v2, p2, :cond_0

    .line 69
    add-int v4, v0, v2

    aput v3, p1, v4

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_0
    add-int/2addr v0, p2

    array-length p2, v1

    invoke-static {v1, v3, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No data bytes provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No error correction bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
