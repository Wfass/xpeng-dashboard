.class public final Lzipkin2/internal/ThriftCodec;
.super Ljava/lang/Object;
.source "ThriftCodec.java"


# static fields
.field static final a:Ljava/nio/charset/Charset;


# instance fields
.field final b:Lzipkin2/internal/V1ThriftSpanWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 43
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lzipkin2/internal/ThriftCodec;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lzipkin2/internal/V1ThriftSpanWriter;

    invoke-direct {v0}, Lzipkin2/internal/V1ThriftSpanWriter;-><init>()V

    iput-object v0, p0, Lzipkin2/internal/ThriftCodec;->b:Lzipkin2/internal/V1ThriftSpanWriter;

    return-void
.end method

.method static a(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 112
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 113
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->d(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method static a(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lzipkin2/internal/Buffer$Writer<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)I"
        }
    .end annotation

    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 61
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lzipkin2/internal/Buffer$Writer;->sizeInBytes(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method static a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;
    .locals 3

    .line 125
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Error"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_0
    instance-of v1, p1, Ljava/io/EOFException;

    if-eqz v1, :cond_1

    const-string v0, "EOF"

    .line 127
    :cond_1
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    if-nez v1, :cond_2

    instance-of v1, p1, Ljava/nio/BufferUnderflowException;

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "Malformed"

    :cond_3
    const/4 v1, 0x2

    .line 129
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const-string p0, "%s reading %s from TBinary"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static a(Ljava/nio/ByteBuffer;B)V
    .locals 1

    const v0, 0x7fffffff

    .line 134
    invoke-static {p0, p1, v0}, Lzipkin2/internal/ThriftCodec;->a(Ljava/nio/ByteBuffer;BI)V

    return-void
.end method

.method static a(Ljava/nio/ByteBuffer;BI)V
    .locals 5

    if-lez p2, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 174
    :pswitch_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 175
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->d(Ljava/nio/ByteBuffer;)I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    add-int/lit8 v3, p2, -0x1

    .line 176
    invoke-static {p0, p1, v3}, Lzipkin2/internal/ThriftCodec;->a(Ljava/nio/ByteBuffer;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :pswitch_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 166
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 167
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->d(Ljava/nio/ByteBuffer;)I

    move-result v3

    :goto_1
    if-ge v0, v3, :cond_1

    add-int/lit8 v4, p2, -0x1

    .line 168
    invoke-static {p0, p1, v4}, Lzipkin2/internal/ThriftCodec;->a(Ljava/nio/ByteBuffer;BI)V

    .line 169
    invoke-static {p0, v2, v4}, Lzipkin2/internal/ThriftCodec;->a(Ljava/nio/ByteBuffer;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    :goto_2
    :pswitch_3
    invoke-static {p0}, Lzipkin2/internal/ThriftField;->a(Ljava/nio/ByteBuffer;)Lzipkin2/internal/ThriftField;

    move-result-object p1

    .line 161
    iget-byte v0, p1, Lzipkin2/internal/ThriftField;->a:B

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-byte p1, p1, Lzipkin2/internal/ThriftField;->a:B

    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Lzipkin2/internal/ThriftCodec;->a(Ljava/nio/ByteBuffer;BI)V

    goto :goto_2

    .line 155
    :pswitch_4
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->d(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 156
    invoke-static {p0, p1}, Lzipkin2/internal/ThriftCodec;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_3

    :pswitch_5
    const/4 p1, 0x4

    .line 148
    invoke-static {p0, p1}, Lzipkin2/internal/ThriftCodec;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_3

    :pswitch_6
    const/4 p1, 0x2

    .line 145
    invoke-static {p0, p1}, Lzipkin2/internal/ThriftCodec;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_3

    :pswitch_7
    const/16 p1, 0x8

    .line 152
    invoke-static {p0, p1}, Lzipkin2/internal/ThriftCodec;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_3

    .line 142
    :pswitch_8
    invoke-static {p0, v1}, Lzipkin2/internal/ThriftCodec;->a(Ljava/nio/ByteBuffer;I)V

    :cond_1
    :goto_3
    return-void

    .line 138
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Maximum skip depth exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static a(Ljava/nio/ByteBuffer;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 187
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;Lzipkin2/internal/Buffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lzipkin2/internal/Buffer$Writer<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;",
            "Lzipkin2/internal/Buffer;",
            ")V"
        }
    .end annotation

    .line 117
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 118
    invoke-static {p2, v0}, Lzipkin2/internal/ThriftCodec;->a(Lzipkin2/internal/Buffer;I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 120
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2, p2}, Lzipkin2/internal/Buffer$Writer;->write(Ljava/lang/Object;Lzipkin2/internal/Buffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a(Lzipkin2/internal/Buffer;I)V
    .locals 1

    const/16 v0, 0xc

    .line 212
    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 213
    invoke-static {p0, p1}, Lzipkin2/internal/ThriftCodec;->b(Lzipkin2/internal/Buffer;I)V

    return-void
.end method

.method static a(Lzipkin2/internal/Buffer;J)V
    .locals 4

    const/16 v0, 0x38

    ushr-long v0, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 230
    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 231
    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 232
    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 233
    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 234
    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 235
    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 236
    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    and-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 237
    invoke-virtual {p0, p1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    return-void
.end method

.method static a(Lzipkin2/internal/Buffer;Ljava/lang/String;)V
    .locals 1

    .line 217
    invoke-static {p1}, Lzipkin2/internal/Buffer;->utf8SizeInBytes(Ljava/lang/String;)I

    .line 218
    invoke-static {p1}, Lzipkin2/internal/Buffer;->utf8SizeInBytes(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lzipkin2/internal/ThriftCodec;->b(Lzipkin2/internal/Buffer;I)V

    .line 219
    invoke-virtual {p0, p1}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    return-void
.end method

.method static b(Lzipkin2/internal/Buffer;I)V
    .locals 1

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 223
    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 224
    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 225
    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 226
    invoke-virtual {p0, p1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    return-void
.end method

.method static b(Ljava/nio/ByteBuffer;)[B
    .locals 1

    .line 193
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    new-array v0, v0, [B

    .line 194
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static c(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    sget-object v1, Lzipkin2/internal/ThriftCodec;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method static d(Ljava/nio/ByteBuffer;)I
    .locals 4

    .line 203
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 204
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    return v0

    .line 205
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Truncated: length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " > bytes remaining "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static read([BLjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lzipkin2/Span;",
            ">;)Z"
        }
    .end annotation

    .line 67
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 68
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 70
    :try_start_0
    new-instance v0, Lzipkin2/internal/V1ThriftSpanReader;

    invoke-direct {v0}, Lzipkin2/internal/V1ThriftSpanReader;-><init>()V

    invoke-virtual {v0, p0}, Lzipkin2/internal/V1ThriftSpanReader;->read(Ljava/nio/ByteBuffer;)Lzipkin2/v1/V1Span;

    move-result-object p0

    .line 71
    invoke-static {}, Lzipkin2/v1/V1SpanConverter;->create()Lzipkin2/v1/V1SpanConverter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lzipkin2/v1/V1SpanConverter;->convert(Lzipkin2/v1/V1Span;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Span"

    .line 74
    invoke-static {p1, p0}, Lzipkin2/internal/ThriftCodec;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static readList([BLjava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lzipkin2/Span;",
            ">;)Z"
        }
    .end annotation

    .line 93
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 95
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 97
    :try_start_0
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->a(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 99
    :cond_1
    new-instance v2, Lzipkin2/internal/V1ThriftSpanReader;

    invoke-direct {v2}, Lzipkin2/internal/V1ThriftSpanReader;-><init>()V

    .line 100
    invoke-static {}, Lzipkin2/v1/V1SpanConverter;->create()Lzipkin2/v1/V1SpanConverter;

    move-result-object v3

    :goto_0
    if-ge v1, v0, :cond_2

    .line 102
    invoke-virtual {v2, p0}, Lzipkin2/internal/V1ThriftSpanReader;->read(Ljava/nio/ByteBuffer;)Lzipkin2/v1/V1Span;

    move-result-object v4

    .line 103
    invoke-virtual {v3, v4, p1}, Lzipkin2/v1/V1SpanConverter;->convert(Lzipkin2/v1/V1Span;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "List<Span>"

    .line 106
    invoke-static {p1, p0}, Lzipkin2/internal/ThriftCodec;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static readOne([B)Lzipkin2/Span;
    .locals 2
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 80
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 83
    :try_start_0
    new-instance v0, Lzipkin2/internal/V1ThriftSpanReader;

    invoke-direct {v0}, Lzipkin2/internal/V1ThriftSpanReader;-><init>()V

    invoke-virtual {v0, p0}, Lzipkin2/internal/V1ThriftSpanReader;->read(Ljava/nio/ByteBuffer;)Lzipkin2/v1/V1Span;

    move-result-object p0

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-static {}, Lzipkin2/v1/V1SpanConverter;->create()Lzipkin2/v1/V1SpanConverter;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lzipkin2/v1/V1SpanConverter;->convert(Lzipkin2/v1/V1Span;Ljava/util/Collection;)V

    const/4 p0, 0x0

    .line 86
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzipkin2/Span;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Span"

    .line 88
    invoke-static {v0, p0}, Lzipkin2/internal/ThriftCodec;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public sizeInBytes(Lzipkin2/Span;)I
    .locals 1

    .line 50
    iget-object v0, p0, Lzipkin2/internal/ThriftCodec;->b:Lzipkin2/internal/V1ThriftSpanWriter;

    invoke-virtual {v0, p1}, Lzipkin2/internal/V1ThriftSpanWriter;->sizeInBytes(Lzipkin2/Span;)I

    move-result p1

    return p1
.end method

.method public write(Lzipkin2/Span;)[B
    .locals 1

    .line 54
    iget-object v0, p0, Lzipkin2/internal/ThriftCodec;->b:Lzipkin2/internal/V1ThriftSpanWriter;

    invoke-virtual {v0, p1}, Lzipkin2/internal/V1ThriftSpanWriter;->write(Lzipkin2/Span;)[B

    move-result-object p1

    return-object p1
.end method
