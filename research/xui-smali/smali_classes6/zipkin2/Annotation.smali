.class public final Lzipkin2/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/Annotation$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lzipkin2/Annotation;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final timestamp:J

.field final value:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # J
    .param p3, "value"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p1, p0, Lzipkin2/Annotation;->timestamp:J

    .line 67
    iput-object p3, p0, Lzipkin2/Annotation;->value:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static create(JLjava/lang/String;)Lzipkin2/Annotation;
    .locals 2
    .param p0, "timestamp"    # J
    .param p2, "value"    # Ljava/lang/String;

    .line 30
    if-eqz p2, :cond_0

    .line 31
    new-instance v0, Lzipkin2/Annotation;

    invoke-direct {v0, p0, p1, p2}, Lzipkin2/Annotation;-><init>(JLjava/lang/String;)V

    return-object v0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .param p1, "that"    # Lzipkin2/Annotation;

    .line 54
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

    .line 56
    .local v0, "byTimestamp":I
    :goto_0
    if-eqz v0, :cond_3

    return v0

    .line 57
    :cond_3
    invoke-virtual {p0}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 78
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
    move-object v1, p1

    check-cast v1, Lzipkin2/Annotation;

    .line 81
    .local v1, "that":Lzipkin2/Annotation;
    iget-wide v3, p0, Lzipkin2/Annotation;->timestamp:J

    invoke-virtual {v1}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Lzipkin2/Annotation;->value:Ljava/lang/String;

    invoke-virtual {v1}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 85
    const/4 v0, 0x1

    .line 86
    .local v0, "h":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 87
    iget-wide v2, p0, Lzipkin2/Annotation;->timestamp:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    iget-wide v4, p0, Lzipkin2/Annotation;->timestamp:J

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    .line 88
    mul-int/2addr v0, v1

    .line 89
    iget-object v1, p0, Lzipkin2/Annotation;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 90
    return v0
.end method

.method public timestamp()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lzipkin2/Annotation;->timestamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Annotation{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lzipkin2/Annotation;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/Annotation;->value:Ljava/lang/String;

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
    iget-object v0, p0, Lzipkin2/Annotation;->value:Ljava/lang/String;

    return-object v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 95
    new-instance v0, Lzipkin2/Annotation$SerializedForm;

    invoke-direct {v0, p0}, Lzipkin2/Annotation$SerializedForm;-><init>(Lzipkin2/Annotation;)V

    return-object v0
.end method
