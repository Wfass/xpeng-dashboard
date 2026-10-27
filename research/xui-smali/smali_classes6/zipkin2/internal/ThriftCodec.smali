.class public final Lzipkin2/internal/ThriftCodec;
.super Ljava/lang/Object;
.source "ThriftCodec.java"


# static fields
.field static final MAX_SKIP_DEPTH:I = 0x7fffffff

.field static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field final writer:Lzipkin2/internal/V1ThriftSpanWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lzipkin2/internal/ThriftCodec;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lzipkin2/internal/V1ThriftSpanWriter;

    invoke-direct {v0}, Lzipkin2/internal/V1ThriftSpanWriter;-><init>()V

    iput-object v0, p0, Lzipkin2/internal/ThriftCodec;->writer:Lzipkin2/internal/V1ThriftSpanWriter;

    return-void
.end method

.method static exceptionReading(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

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
    .local v0, "cause":Ljava/lang/String;
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

    .line 128
    :cond_2
    const-string v0, "Malformed"

    .line 129
    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string v2, "%s reading %s from TBinary"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static guardLength(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 203
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 204
    .local v0, "length":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 208
    return v0

    .line 205
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Truncated: length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > bytes remaining "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static listSizeInBytes(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;)I
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

    .line 59
    .local p0, "writer":Lzipkin2/internal/Buffer$Writer;, "Lzipkin2/internal/Buffer$Writer<TT;>;"
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x5

    .line 60
    .local v0, "sizeInBytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 61
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lzipkin2/internal/Buffer$Writer;->sizeInBytes(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_0
    return v0
.end method

.method public static read([BLjava/util/Collection;)Z
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lzipkin2/Span;",
            ">;)Z"
        }
    .end annotation

    .line 67
    .local p1, "out":Ljava/util/Collection;, "Ljava/util/Collection<Lzipkin2/Span;>;"
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 70
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :try_start_0
    new-instance v1, Lzipkin2/internal/V1ThriftSpanReader;

    invoke-direct {v1}, Lzipkin2/internal/V1ThriftSpanReader;-><init>()V

    invoke-virtual {v1, v0}, Lzipkin2/internal/V1ThriftSpanReader;->read(Ljava/nio/ByteBuffer;)Lzipkin2/v1/V1Span;

    move-result-object v1

    .line 71
    .local v1, "v1Span":Lzipkin2/v1/V1Span;
    invoke-static {}, Lzipkin2/v1/V1SpanConverter;->create()Lzipkin2/v1/V1SpanConverter;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lzipkin2/v1/V1SpanConverter;->convert(Lzipkin2/v1/V1Span;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    const/4 v2, 0x1

    return v2

    .line 73
    .end local v1    # "v1Span":Lzipkin2/v1/V1Span;
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Span"

    invoke-static {v2, v1}, Lzipkin2/internal/ThriftCodec;->exceptionReading(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method static readByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 1
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 193
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->guardLength(Ljava/nio/ByteBuffer;)I

    move-result v0

    new-array v0, v0, [B

    .line 194
    .local v0, "result":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 195
    return-object v0
.end method

.method public static readList([BLjava/util/Collection;)Z
    .locals 7
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lzipkin2/Span;",
            ">;)Z"
        }
    .end annotation

    .line 93
    .local p1, "out":Ljava/util/Collection;, "Ljava/util/Collection<Lzipkin2/Span;>;"
    array-length v0, p0

    .line 94
    .local v0, "length":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 95
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 97
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {v2}, Lzipkin2/internal/ThriftCodec;->readListLength(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 98
    .local v3, "listLength":I
    if-nez v3, :cond_1

    return v1

    .line 99
    :cond_1
    new-instance v4, Lzipkin2/internal/V1ThriftSpanReader;

    invoke-direct {v4}, Lzipkin2/internal/V1ThriftSpanReader;-><init>()V

    .line 100
    .local v4, "reader":Lzipkin2/internal/V1ThriftSpanReader;
    invoke-static {}, Lzipkin2/v1/V1SpanConverter;->create()Lzipkin2/v1/V1SpanConverter;

    move-result-object v5

    .line 101
    .local v5, "converter":Lzipkin2/v1/V1SpanConverter;
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 102
    invoke-virtual {v4, v2}, Lzipkin2/internal/V1ThriftSpanReader;->read(Ljava/nio/ByteBuffer;)Lzipkin2/v1/V1Span;

    move-result-object v6

    .line 103
    .local v6, "v1Span":Lzipkin2/v1/V1Span;
    invoke-virtual {v5, v6, p1}, Lzipkin2/v1/V1SpanConverter;->convert(Lzipkin2/v1/V1Span;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v6    # "v1Span":Lzipkin2/v1/V1Span;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "i":I
    .end local v3    # "listLength":I
    .end local v4    # "reader":Lzipkin2/internal/V1ThriftSpanReader;
    .end local v5    # "converter":Lzipkin2/v1/V1SpanConverter;
    :cond_2
    nop

    .line 108
    const/4 v1, 0x1

    return v1

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "List<Span>"

    invoke-static {v3, v1}, Lzipkin2/internal/ThriftCodec;->exceptionReading(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method static readListLength(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 112
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 113
    .local v0, "ignoredType":B
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->guardLength(Ljava/nio/ByteBuffer;)I

    move-result v1

    return v1
.end method

.method public static readOne([B)Lzipkin2/Span;
    .locals 4
    .param p0, "bytes"    # [B
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 80
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 83
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :try_start_0
    new-instance v1, Lzipkin2/internal/V1ThriftSpanReader;

    invoke-direct {v1}, Lzipkin2/internal/V1ThriftSpanReader;-><init>()V

    invoke-virtual {v1, v0}, Lzipkin2/internal/V1ThriftSpanReader;->read(Ljava/nio/ByteBuffer;)Lzipkin2/v1/V1Span;

    move-result-object v1

    .line 84
    .local v1, "v1Span":Lzipkin2/v1/V1Span;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v2, "out":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    invoke-static {}, Lzipkin2/v1/V1SpanConverter;->create()Lzipkin2/v1/V1SpanConverter;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lzipkin2/v1/V1SpanConverter;->convert(Lzipkin2/v1/V1Span;Ljava/util/Collection;)V

    .line 86
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzipkin2/Span;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 87
    .end local v1    # "v1Span":Lzipkin2/v1/V1Span;
    .end local v2    # "out":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Span"

    invoke-static {v2, v1}, Lzipkin2/internal/ThriftCodec;->exceptionReading(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method static readUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 199
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->readByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    sget-object v2, Lzipkin2/internal/ThriftCodec;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method static skip(Ljava/nio/ByteBuffer;B)V
    .locals 1
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B

    .line 134
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lzipkin2/internal/ThriftCodec;->skip(Ljava/nio/ByteBuffer;BI)V

    .line 135
    return-void
.end method

.method static skip(Ljava/nio/ByteBuffer;BI)V
    .locals 5
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "maxDepth"    # I

    .line 138
    if-lez p2, :cond_3

    .line 139
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 174
    :pswitch_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 175
    .local v0, "elemType":B
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->guardLength(Ljava/nio/ByteBuffer;)I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 176
    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v0, v3}, Lzipkin2/internal/ThriftCodec;->skip(Ljava/nio/ByteBuffer;BI)V

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_0
    goto :goto_3

    .line 165
    .end local v0    # "elemType":B
    :pswitch_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 166
    .local v0, "keyType":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 167
    .local v1, "valueType":B
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->guardLength(Ljava/nio/ByteBuffer;)I

    move-result v3

    .local v3, "length":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 168
    add-int/lit8 v4, p2, -0x1

    invoke-static {p0, v0, v4}, Lzipkin2/internal/ThriftCodec;->skip(Ljava/nio/ByteBuffer;BI)V

    .line 169
    add-int/lit8 v4, p2, -0x1

    invoke-static {p0, v1, v4}, Lzipkin2/internal/ThriftCodec;->skip(Ljava/nio/ByteBuffer;BI)V

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_1
    goto :goto_3

    .line 160
    .end local v0    # "keyType":B
    .end local v1    # "valueType":B
    :goto_2
    :pswitch_3
    invoke-static {p0}, Lzipkin2/internal/ThriftField;->read(Ljava/nio/ByteBuffer;)Lzipkin2/internal/ThriftField;

    move-result-object v0

    .line 161
    .local v0, "thriftField":Lzipkin2/internal/ThriftField;
    iget-byte v1, v0, Lzipkin2/internal/ThriftField;->type:B

    if-nez v1, :cond_2

    return-void

    .line 162
    :cond_2
    iget-byte v1, v0, Lzipkin2/internal/ThriftField;->type:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lzipkin2/internal/ThriftCodec;->skip(Ljava/nio/ByteBuffer;BI)V

    .line 163
    .end local v0    # "thriftField":Lzipkin2/internal/ThriftField;
    goto :goto_2

    .line 155
    :pswitch_4
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->guardLength(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 156
    .local v0, "size":I
    invoke-static {p0, v0}, Lzipkin2/internal/ThriftCodec;->skip(Ljava/nio/ByteBuffer;I)V

    .line 157
    goto :goto_3

    .line 148
    .end local v0    # "size":I
    :pswitch_5
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lzipkin2/internal/ThriftCodec;->skip(Ljava/nio/ByteBuffer;I)V

    .line 149
    goto :goto_3

    .line 145
    :pswitch_6
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lzipkin2/internal/ThriftCodec;->skip(Ljava/nio/ByteBuffer;I)V

    .line 146
    goto :goto_3

    .line 152
    :pswitch_7
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lzipkin2/internal/ThriftCodec;->skip(Ljava/nio/ByteBuffer;I)V

    .line 153
    goto :goto_3

    .line 142
    :pswitch_8
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lzipkin2/internal/ThriftCodec;->skip(Ljava/nio/ByteBuffer;I)V

    .line 143
    nop

    .line 182
    :goto_3
    return-void

    .line 138
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Maximum skip depth exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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

.method static skip(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "count"    # I

    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static writeInt(Lzipkin2/internal/Buffer;I)V
    .locals 1
    .param p0, "buf"    # Lzipkin2/internal/Buffer;
    .param p1, "v"    # I

    .line 223
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 224
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 225
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 226
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 227
    return-void
.end method

.method static writeLengthPrefixed(Lzipkin2/internal/Buffer;Ljava/lang/String;)V
    .locals 2
    .param p0, "buffer"    # Lzipkin2/internal/Buffer;
    .param p1, "utf8"    # Ljava/lang/String;

    .line 217
    invoke-static {p1}, Lzipkin2/internal/Buffer;->utf8SizeInBytes(Ljava/lang/String;)I

    move-result v0

    .line 218
    .local v0, "ignoredLength":I
    invoke-static {p1}, Lzipkin2/internal/Buffer;->utf8SizeInBytes(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lzipkin2/internal/ThriftCodec;->writeInt(Lzipkin2/internal/Buffer;I)V

    .line 219
    invoke-virtual {p0, p1}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 220
    return-void
.end method

.method static writeList(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;Lzipkin2/internal/Buffer;)V
    .locals 3
    .param p2, "buffer"    # Lzipkin2/internal/Buffer;
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
    .local p0, "writer":Lzipkin2/internal/Buffer$Writer;, "Lzipkin2/internal/Buffer$Writer<TT;>;"
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 118
    .local v0, "length":I
    invoke-static {p2, v0}, Lzipkin2/internal/ThriftCodec;->writeListBegin(Lzipkin2/internal/Buffer;I)V

    .line 119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 120
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2, p2}, Lzipkin2/internal/Buffer$Writer;->write(Ljava/lang/Object;Lzipkin2/internal/Buffer;)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method static writeListBegin(Lzipkin2/internal/Buffer;I)V
    .locals 1
    .param p0, "buffer"    # Lzipkin2/internal/Buffer;
    .param p1, "size"    # I

    .line 212
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 213
    invoke-static {p0, p1}, Lzipkin2/internal/ThriftCodec;->writeInt(Lzipkin2/internal/Buffer;I)V

    .line 214
    return-void
.end method

.method static writeLong(Lzipkin2/internal/Buffer;J)V
    .locals 4
    .param p0, "buf"    # Lzipkin2/internal/Buffer;
    .param p1, "v"    # J

    .line 230
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 231
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 232
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 233
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 234
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 235
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 236
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 237
    and-long v0, p1, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 238
    return-void
.end method


# virtual methods
.method public sizeInBytes(Lzipkin2/Span;)I
    .locals 1
    .param p1, "input"    # Lzipkin2/Span;

    .line 50
    iget-object v0, p0, Lzipkin2/internal/ThriftCodec;->writer:Lzipkin2/internal/V1ThriftSpanWriter;

    invoke-virtual {v0, p1}, Lzipkin2/internal/V1ThriftSpanWriter;->sizeInBytes(Lzipkin2/Span;)I

    move-result v0

    return v0
.end method

.method public write(Lzipkin2/Span;)[B
    .locals 1
    .param p1, "span"    # Lzipkin2/Span;

    .line 54
    iget-object v0, p0, Lzipkin2/internal/ThriftCodec;->writer:Lzipkin2/internal/V1ThriftSpanWriter;

    invoke-virtual {v0, p1}, Lzipkin2/internal/V1ThriftSpanWriter;->write(Lzipkin2/Span;)[B

    move-result-object v0

    return-object v0
.end method
