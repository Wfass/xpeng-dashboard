.class public final Lzipkin2/v1/V1Annotation;
.super Ljava/lang/Object;
.source "V1Annotation.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lzipkin2/v1/V1Annotation;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final a:J

.field final b:Ljava/lang/String;

.field final c:Lzipkin2/Endpoint;


# direct methods
.method constructor <init>(JLjava/lang/String;Lzipkin2/Endpoint;)V
    .locals 0
    .param p4    # Lzipkin2/Endpoint;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Lzipkin2/v1/V1Annotation;->a:J

    if-eqz p3, :cond_0

    .line 62
    iput-object p3, p0, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    return-void

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(JLjava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Annotation;
    .locals 1
    .param p3    # Lzipkin2/Endpoint;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 32
    new-instance v0, Lzipkin2/v1/V1Annotation;

    invoke-direct {v0, p0, p1, p2, p3}, Lzipkin2/v1/V1Annotation;-><init>(JLjava/lang/String;Lzipkin2/Endpoint;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lzipkin2/v1/V1Annotation;

    invoke-virtual {p0, p1}, Lzipkin2/v1/V1Annotation;->compareTo(Lzipkin2/v1/V1Annotation;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lzipkin2/v1/V1Annotation;)I
    .locals 6

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 93
    :cond_0
    iget-wide v1, p0, Lzipkin2/v1/V1Annotation;->a:J

    iget-wide v3, p1, Lzipkin2/v1/V1Annotation;->a:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    return v0

    .line 95
    :cond_3
    iget-object v0, p0, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    iget-object p1, p1, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public endpoint()Lzipkin2/Endpoint;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 52
    iget-object v0, p0, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 70
    :cond_0
    instance-of v1, p1, Lzipkin2/v1/V1Annotation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 71
    :cond_1
    check-cast p1, Lzipkin2/v1/V1Annotation;

    .line 72
    iget-wide v3, p0, Lzipkin2/v1/V1Annotation;->a:J

    iget-wide v5, p1, Lzipkin2/v1/V1Annotation;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-object v1, p0, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    iget-object v3, p1, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    if-nez v1, :cond_2

    iget-object p1, p1, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    .line 74
    invoke-virtual {v1, p1}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    const v0, 0xf4243

    int-to-long v1, v0

    .line 81
    iget-wide v3, p0, Lzipkin2/v1/V1Annotation;->a:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v1, v0

    mul-int/2addr v1, v0

    .line 83
    iget-object v2, p0, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int/2addr v1, v0

    .line 85
    iget-object v0, p0, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lzipkin2/Endpoint;->hashCode()I

    move-result v0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public timestamp()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lzipkin2/v1/V1Annotation;->a:J

    return-wide v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    return-object v0
.end method
