.class Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;
.super Lcom/alibaba/fastjson2/stream/JSONStreamReader;
.source "JSONStreamReaderUTF8.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/stream/JSONStreamReader<",
        "TT;>;"
    }
.end annotation


# instance fields
.field buf:[B

.field final charset:Ljava/nio/charset/Charset;

.field final context:Lcom/alibaba/fastjson2/JSONReader$Context;

.field final input:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;)V
    .locals 0

    .line 28
    invoke-direct {p0, p3}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;)V

    .line 29
    iput-object p2, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->charset:Ljava/nio/charset/Charset;

    .line 30
    iput-object p1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->input:Ljava/io/InputStream;

    .line 31
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;[Ljava/lang/reflect/Type;)V
    .locals 0

    .line 21
    invoke-direct {p0, p3}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;-><init>([Ljava/lang/reflect/Type;)V

    .line 22
    iput-object p2, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->charset:Ljava/nio/charset/Charset;

    .line 23
    iput-object p1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->input:Ljava/io/InputStream;

    .line 24
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    return-void
.end method


# virtual methods
.method public readLineObject()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 148
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->inputEnd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->input:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 153
    iget v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->off:I

    iget v2, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->end:I

    if-lt v0, v2, :cond_1

    return-object v1

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->seekLine()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    return-object v1

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->buf:[B

    iget v1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineStart:I

    iget v2, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineEnd:I

    iget v3, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineStart:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->charset:Ljava/nio/charset/Charset;

    iget-object v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v6

    .line 170
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->objectReader:Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    if-eqz v0, :cond_3

    .line 171
    iget-object v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->objectReader:Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-wide v9, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->features:J

    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_3
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->types:[Ljava/lang/reflect/Type;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->types:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-eqz v0, :cond_4

    .line 173
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->types:[Ljava/lang/reflect/Type;

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson2/JSONReader;->readList([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_4
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 164
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v2, "seekLine error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected seekLine()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->buf:[B

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const/high16 v5, 0x80000

    new-array v5, v5, [B

    .line 37
    iput-object v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->buf:[B

    .line 38
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 40
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->inputEnd:Z

    return v3

    .line 43
    :cond_0
    iput v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->end:I

    .line 45
    iget v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->end:I

    if-le v0, v2, :cond_1

    .line 46
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->buf:[B

    aget-byte v5, v0, v3

    const/16 v6, -0x11

    if-ne v5, v6, :cond_1

    aget-byte v5, v0, v4

    const/16 v6, -0x45

    if-ne v5, v6, :cond_1

    const/4 v5, 0x2

    aget-byte v0, v0, v5

    const/16 v5, -0x41

    if-ne v0, v5, :cond_1

    .line 47
    iput v2, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->off:I

    .line 48
    iget v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->off:I

    iput v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineNextStart:I

    :cond_1
    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_12

    .line 55
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineTerminated:Z

    .line 57
    iget v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->off:I

    :goto_1
    iget v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->end:I

    if-ge v5, v6, :cond_b

    add-int/lit8 v6, v5, 0x4

    .line 58
    iget v7, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->end:I

    if-ge v6, v7, :cond_2

    .line 59
    iget-object v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->buf:[B

    aget-byte v7, v6, v5

    add-int/lit8 v8, v5, 0x1

    .line 60
    aget-byte v8, v6, v8

    add-int/lit8 v9, v5, 0x2

    .line 61
    aget-byte v9, v6, v9

    add-int/lit8 v10, v5, 0x3

    .line 62
    aget-byte v6, v6, v10

    const/16 v11, 0x22

    if-le v7, v11, :cond_2

    if-le v8, v11, :cond_2

    if-le v9, v11, :cond_2

    if-le v6, v11, :cond_2

    .line 64
    iget v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineSize:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineSize:I

    move v5, v10

    goto :goto_2

    .line 70
    :cond_2
    iget-object v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->buf:[B

    aget-byte v6, v6, v5

    const-wide/16 v7, 0x0

    const/16 v9, 0xa

    if-ne v6, v9, :cond_5

    .line 72
    iget v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineSize:I

    if-gtz v6, :cond_3

    iget-wide v9, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->features:J

    sget-object v6, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->IgnoreEmptyLine:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    iget-wide v11, v6, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    and-long/2addr v9, v11

    cmp-long v6, v9, v7

    if-nez v6, :cond_4

    .line 73
    :cond_3
    iget v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->rowCount:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->rowCount:I

    .line 75
    :cond_4
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineTerminated:Z

    .line 76
    iput v3, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineSize:I

    .line 77
    iput v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineEnd:I

    .line 78
    iget v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineNextStart:I

    iput v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineStart:I

    add-int/lit8 v5, v5, 0x1

    .line 79
    iput v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->off:I

    iput v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineNextStart:I

    goto :goto_3

    :cond_5
    const/16 v10, 0xd

    if-ne v6, v10, :cond_a

    .line 83
    iget v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineSize:I

    if-gtz v6, :cond_6

    iget-wide v10, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->features:J

    sget-object v6, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->IgnoreEmptyLine:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    iget-wide v12, v6, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    and-long/2addr v10, v12

    cmp-long v6, v10, v7

    if-nez v6, :cond_7

    .line 84
    :cond_6
    iget v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->rowCount:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->rowCount:I

    .line 87
    :cond_7
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineTerminated:Z

    .line 88
    iput v3, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineSize:I

    .line 89
    iput v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineEnd:I

    add-int/lit8 v6, v5, 0x1

    .line 92
    iget v7, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->end:I

    if-lt v6, v7, :cond_8

    goto :goto_3

    .line 95
    :cond_8
    iget-object v7, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->buf:[B

    aget-byte v7, v7, v6

    if-ne v7, v9, :cond_9

    move v5, v6

    .line 99
    :cond_9
    iget v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineNextStart:I

    iput v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineStart:I

    add-int/2addr v5, v4

    .line 100
    iput v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->off:I

    iput v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineNextStart:I

    goto :goto_3

    .line 104
    :cond_a
    iget v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineSize:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineSize:I

    :goto_2
    add-int/2addr v5, v4

    goto/16 :goto_1

    .line 108
    :cond_b
    :goto_3
    iget-boolean v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineTerminated:Z

    if-nez v5, :cond_10

    .line 109
    iget-object v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->input:Ljava/io/InputStream;

    if-eqz v5, :cond_f

    iget-boolean v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->inputEnd:Z

    if-nez v5, :cond_f

    .line 110
    iget v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->end:I

    iget v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->off:I

    sub-int/2addr v5, v6

    .line 111
    iget v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->off:I

    if-lez v6, :cond_d

    if-lez v5, :cond_c

    .line 113
    iget-object v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->buf:[B

    iget v7, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->off:I

    iget-object v8, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->buf:[B

    invoke-static {v6, v7, v8, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    :cond_c
    iput v3, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineNextStart:I

    iput v3, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineStart:I

    .line 116
    iput v3, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->off:I

    .line 117
    iput v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->end:I

    .line 120
    :cond_d
    iget-object v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->input:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->buf:[B

    iget v7, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->end:I

    iget-object v8, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->buf:[B

    array-length v8, v8

    iget v9, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->end:I

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, v1, :cond_e

    .line 122
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->inputEnd:Z

    .line 123
    iget v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->off:I

    iget v1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->end:I

    if-ne v0, v1, :cond_f

    return v3

    .line 127
    :cond_e
    iget v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->end:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->end:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 132
    :cond_f
    iget v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineNextStart:I

    iput v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineStart:I

    .line 133
    iget v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->end:I

    iput v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineEnd:I

    .line 134
    iget v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->rowCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->rowCount:I

    .line 135
    iput v3, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineSize:I

    .line 136
    iget v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->end:I

    iput v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->off:I

    .line 139
    :cond_10
    iget v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->off:I

    iget v1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->end:I

    if-ne v0, v1, :cond_11

    move v3, v4

    :cond_11
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;->lineTerminated:Z

    :cond_12
    return v4
.end method
