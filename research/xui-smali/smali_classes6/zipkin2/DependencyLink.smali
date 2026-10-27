.class public final Lzipkin2/DependencyLink;
.super Ljava/lang/Object;
.source "DependencyLink.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/DependencyLink$SerializedForm;,
        Lzipkin2/DependencyLink$Builder;
    }
.end annotation


# static fields
.field static final UTF_8:Ljava/nio/charset/Charset;

.field private static final serialVersionUID:J


# instance fields
.field final callCount:J

.field final child:Ljava/lang/String;

.field final errorCount:J

.field final parent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lzipkin2/DependencyLink;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Lzipkin2/DependencyLink$Builder;)V
    .locals 2
    .param p1, "builder"    # Lzipkin2/DependencyLink$Builder;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iget-object v0, p1, Lzipkin2/DependencyLink$Builder;->parent:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/DependencyLink;->parent:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Lzipkin2/DependencyLink$Builder;->child:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/DependencyLink;->child:Ljava/lang/String;

    .line 115
    iget-wide v0, p1, Lzipkin2/DependencyLink$Builder;->callCount:J

    iput-wide v0, p0, Lzipkin2/DependencyLink;->callCount:J

    .line 116
    iget-wide v0, p1, Lzipkin2/DependencyLink$Builder;->errorCount:J

    iput-wide v0, p0, Lzipkin2/DependencyLink;->errorCount:J

    .line 117
    return-void
.end method

.method public static newBuilder()Lzipkin2/DependencyLink$Builder;
    .locals 1

    .line 31
    new-instance v0, Lzipkin2/DependencyLink$Builder;

    invoke-direct {v0}, Lzipkin2/DependencyLink$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public callCount()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lzipkin2/DependencyLink;->callCount:J

    return-wide v0
.end method

.method public child()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lzipkin2/DependencyLink;->child:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 120
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 121
    :cond_0
    instance-of v1, p1, Lzipkin2/DependencyLink;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 122
    :cond_1
    move-object v1, p1

    check-cast v1, Lzipkin2/DependencyLink;

    .line 123
    .local v1, "that":Lzipkin2/DependencyLink;
    iget-object v3, p0, Lzipkin2/DependencyLink;->parent:Ljava/lang/String;

    iget-object v4, v1, Lzipkin2/DependencyLink;->parent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lzipkin2/DependencyLink;->child:Ljava/lang/String;

    iget-object v4, v1, Lzipkin2/DependencyLink;->child:Ljava/lang/String;

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lzipkin2/DependencyLink;->callCount:J

    iget-wide v5, v1, Lzipkin2/DependencyLink;->callCount:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lzipkin2/DependencyLink;->errorCount:J

    iget-wide v5, v1, Lzipkin2/DependencyLink;->errorCount:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    .line 123
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public errorCount()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lzipkin2/DependencyLink;->errorCount:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 130
    const/4 v0, 0x1

    .line 131
    .local v0, "h":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 132
    iget-object v2, p0, Lzipkin2/DependencyLink;->parent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 133
    mul-int/2addr v0, v1

    .line 134
    iget-object v2, p0, Lzipkin2/DependencyLink;->child:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 135
    mul-int/2addr v0, v1

    .line 136
    iget-wide v2, p0, Lzipkin2/DependencyLink;->callCount:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    iget-wide v5, p0, Lzipkin2/DependencyLink;->callCount:J

    xor-long/2addr v2, v5

    long-to-int v2, v2

    xor-int/2addr v0, v2

    .line 137
    mul-int/2addr v0, v1

    .line 138
    iget-wide v1, p0, Lzipkin2/DependencyLink;->errorCount:J

    ushr-long/2addr v1, v4

    iget-wide v3, p0, Lzipkin2/DependencyLink;->errorCount:J

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    .line 139
    return v0
.end method

.method public parent()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lzipkin2/DependencyLink;->parent:Ljava/lang/String;

    return-object v0
.end method

.method public toBuilder()Lzipkin2/DependencyLink$Builder;
    .locals 1

    .line 55
    new-instance v0, Lzipkin2/DependencyLink$Builder;

    invoke-direct {v0, p0}, Lzipkin2/DependencyLink$Builder;-><init>(Lzipkin2/DependencyLink;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 104
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lzipkin2/codec/DependencyLinkBytesEncoder;->JSON_V1:Lzipkin2/codec/DependencyLinkBytesEncoder;

    invoke-virtual {v1, p0}, Lzipkin2/codec/DependencyLinkBytesEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    sget-object v2, Lzipkin2/DependencyLink;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 144
    new-instance v0, Lzipkin2/DependencyLink$SerializedForm;

    sget-object v1, Lzipkin2/codec/DependencyLinkBytesEncoder;->JSON_V1:Lzipkin2/codec/DependencyLinkBytesEncoder;

    invoke-virtual {v1, p0}, Lzipkin2/codec/DependencyLinkBytesEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lzipkin2/DependencyLink$SerializedForm;-><init>([B)V

    return-object v0
.end method
