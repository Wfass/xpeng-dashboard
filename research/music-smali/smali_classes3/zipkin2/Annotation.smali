.class public final Lzipkin2/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/Annotation$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lzipkin2/Annotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:J

.field final b:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p1, p0, Lzipkin2/Annotation;->a:J

    .line 67
    iput-object p3, p0, Lzipkin2/Annotation;->b:Ljava/lang/String;

    return-void
.end method

.method public static create(JLjava/lang/String;)Lzipkin2/Annotation;
    .locals 1

    if-eqz p2, :cond_0

    .line 31
    new-instance v0, Lzipkin2/Annotation;

    invoke-direct {v0, p0, p1, p2}, Lzipkin2/Annotation;-><init>(JLjava/lang/String;)V

    return-object v0

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "value == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lzipkin2/Annotation;

    invoke-virtual {p0, p1}, Lzipkin2/Annotation;->compareTo(Lzipkin2/Annotation;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lzipkin2/Annotation;)I
    .locals 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v1

    invoke-virtual {p1}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v1

    invoke-virtual {p1}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    return v0

    .line 57
    :cond_3
    invoke-virtual {p0}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 79
    :cond_0
    instance-of v1, p1, Lzipkin2/Annotation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 80
    :cond_1
    check-cast p1, Lzipkin2/Annotation;

    .line 81
    iget-wide v3, p0, Lzipkin2/Annotation;->a:J

    invoke-virtual {p1}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lzipkin2/Annotation;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 87
    iget-wide v0, p0, Lzipkin2/Annotation;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 89
    iget-object v1, p0, Lzipkin2/Annotation;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public timestamp()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lzipkin2/Annotation;->a:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Annotation{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lzipkin2/Annotation;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/Annotation;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lzipkin2/Annotation;->b:Ljava/lang/String;

    return-object v0
.end method
