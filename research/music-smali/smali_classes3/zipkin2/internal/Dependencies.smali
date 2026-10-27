.class public final Lzipkin2/internal/Dependencies;
.super Ljava/lang/Object;
.source "Dependencies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/internal/Dependencies$DependencyLinkAdapter;
    }
.end annotation


# static fields
.field static final a:Lzipkin2/internal/ThriftField;

.field static final b:Lzipkin2/internal/ThriftField;

.field static final c:Lzipkin2/internal/ThriftField;

.field static final d:Lzipkin2/internal/Dependencies$DependencyLinkAdapter;


# instance fields
.field final e:J

.field final f:J

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzipkin2/DependencyLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/Dependencies;->a:Lzipkin2/internal/ThriftField;

    .line 37
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/Dependencies;->b:Lzipkin2/internal/ThriftField;

    .line 38
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0xf

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/Dependencies;->c:Lzipkin2/internal/ThriftField;

    .line 39
    new-instance v0, Lzipkin2/internal/Dependencies$DependencyLinkAdapter;

    invoke-direct {v0}, Lzipkin2/internal/Dependencies$DependencyLinkAdapter;-><init>()V

    sput-object v0, Lzipkin2/internal/Dependencies;->d:Lzipkin2/internal/Dependencies$DependencyLinkAdapter;

    return-void
.end method

.method constructor <init>(JJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Lzipkin2/DependencyLink;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-wide p1, p0, Lzipkin2/internal/Dependencies;->e:J

    .line 113
    iput-wide p3, p0, Lzipkin2/internal/Dependencies;->f:J

    if-eqz p5, :cond_0

    .line 115
    iput-object p5, p0, Lzipkin2/internal/Dependencies;->g:Ljava/util/List;

    return-void

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "links == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(JJLjava/util/List;)Lzipkin2/internal/Dependencies;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Lzipkin2/DependencyLink;",
            ">;)",
            "Lzipkin2/internal/Dependencies;"
        }
    .end annotation

    .line 105
    new-instance v6, Lzipkin2/internal/Dependencies;

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lzipkin2/internal/Dependencies;-><init>(JJLjava/util/List;)V

    return-object v6
.end method

.method public static fromThrift(Ljava/nio/ByteBuffer;)Lzipkin2/internal/Dependencies;
    .locals 8

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    .line 52
    :cond_0
    :goto_0
    invoke-static {p0}, Lzipkin2/internal/ThriftField;->a(Ljava/nio/ByteBuffer;)Lzipkin2/internal/ThriftField;

    move-result-object v5

    .line 53
    iget-byte v6, v5, Lzipkin2/internal/ThriftField;->a:B

    if-nez v6, :cond_1

    .line 71
    invoke-static {v1, v2, v3, v4, v0}, Lzipkin2/internal/Dependencies;->create(JJLjava/util/List;)Lzipkin2/internal/Dependencies;

    move-result-object p0

    return-object p0

    .line 55
    :cond_1
    sget-object v6, Lzipkin2/internal/Dependencies;->a:Lzipkin2/internal/ThriftField;

    invoke-virtual {v5, v6}, Lzipkin2/internal/ThriftField;->a(Lzipkin2/internal/ThriftField;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 56
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    goto :goto_0

    .line 57
    :cond_2
    sget-object v6, Lzipkin2/internal/Dependencies;->b:Lzipkin2/internal/ThriftField;

    invoke-virtual {v5, v6}, Lzipkin2/internal/ThriftField;->a(Lzipkin2/internal/ThriftField;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 58
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    goto :goto_0

    .line 59
    :cond_3
    sget-object v6, Lzipkin2/internal/Dependencies;->c:Lzipkin2/internal/ThriftField;

    invoke-virtual {v5, v6}, Lzipkin2/internal/ThriftField;->a(Lzipkin2/internal/ThriftField;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 60
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->a(Ljava/nio/ByteBuffer;)I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    .line 62
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    .line 64
    invoke-static {p0}, Lzipkin2/internal/Dependencies$DependencyLinkAdapter;->a(Ljava/nio/ByteBuffer;)Lzipkin2/DependencyLink;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 67
    :cond_5
    iget-byte v5, v5, Lzipkin2/internal/ThriftField;->a:B

    invoke-static {p0, v5}, Lzipkin2/internal/ThriftCodec;->a(Ljava/nio/ByteBuffer;B)V

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 2

    .line 85
    sget-object v0, Lzipkin2/internal/Dependencies;->d:Lzipkin2/internal/Dependencies$DependencyLinkAdapter;

    iget-object v1, p0, Lzipkin2/internal/Dependencies;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lzipkin2/internal/ThriftCodec;->a(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/16 v1, 0x16

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method a(Lzipkin2/internal/Buffer;)V
    .locals 2

    .line 91
    sget-object v0, Lzipkin2/internal/Dependencies;->a:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, p1}, Lzipkin2/internal/ThriftField;->a(Lzipkin2/internal/Buffer;)V

    .line 92
    iget-wide v0, p0, Lzipkin2/internal/Dependencies;->e:J

    invoke-static {p1, v0, v1}, Lzipkin2/internal/ThriftCodec;->a(Lzipkin2/internal/Buffer;J)V

    .line 94
    sget-object v0, Lzipkin2/internal/Dependencies;->b:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, p1}, Lzipkin2/internal/ThriftField;->a(Lzipkin2/internal/Buffer;)V

    .line 95
    iget-wide v0, p0, Lzipkin2/internal/Dependencies;->f:J

    invoke-static {p1, v0, v1}, Lzipkin2/internal/ThriftCodec;->a(Lzipkin2/internal/Buffer;J)V

    .line 97
    sget-object v0, Lzipkin2/internal/Dependencies;->c:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, p1}, Lzipkin2/internal/ThriftField;->a(Lzipkin2/internal/Buffer;)V

    .line 98
    sget-object v0, Lzipkin2/internal/Dependencies;->d:Lzipkin2/internal/Dependencies$DependencyLinkAdapter;

    iget-object v1, p0, Lzipkin2/internal/Dependencies;->g:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lzipkin2/internal/ThriftCodec;->a(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;Lzipkin2/internal/Buffer;)V

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 121
    :cond_0
    instance-of v1, p1, Lzipkin2/internal/Dependencies;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 122
    :cond_1
    check-cast p1, Lzipkin2/internal/Dependencies;

    .line 123
    iget-wide v3, p0, Lzipkin2/internal/Dependencies;->e:J

    iget-wide v5, p1, Lzipkin2/internal/Dependencies;->e:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lzipkin2/internal/Dependencies;->f:J

    iget-wide v5, p1, Lzipkin2/internal/Dependencies;->f:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lzipkin2/internal/Dependencies;->g:Ljava/util/List;

    iget-object p1, p1, Lzipkin2/internal/Dependencies;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 8

    const v0, 0xf4243

    int-to-long v1, v0

    .line 130
    iget-wide v3, p0, Lzipkin2/internal/Dependencies;->e:J

    const/16 v5, 0x20

    ushr-long v6, v3, v5

    xor-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v1, v0

    mul-int/2addr v1, v0

    int-to-long v2, v1

    .line 132
    iget-wide v6, p0, Lzipkin2/internal/Dependencies;->f:J

    ushr-long v4, v6, v5

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v1, v2

    mul-int/2addr v1, v0

    .line 134
    iget-object v0, p0, Lzipkin2/internal/Dependencies;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public links()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzipkin2/DependencyLink;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lzipkin2/internal/Dependencies;->g:Ljava/util/List;

    return-object v0
.end method

.method public toThrift()Ljava/nio/ByteBuffer;
    .locals 2

    .line 76
    new-instance v0, Lzipkin2/internal/Buffer;

    invoke-virtual {p0}, Lzipkin2/internal/Dependencies;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lzipkin2/internal/Buffer;-><init>(I)V

    .line 77
    invoke-virtual {p0, v0}, Lzipkin2/internal/Dependencies;->a(Lzipkin2/internal/Buffer;)V

    .line 78
    invoke-virtual {v0}, Lzipkin2/internal/Buffer;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
