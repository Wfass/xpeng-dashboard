.class public Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;
.super Lcom/alibaba/fastjson2/stream/JSONStreamReader;
.source "JSONStreamReaderUTF16.java"


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
.field buf:[C

.field final context:Lcom/alibaba/fastjson2/JSONReader$Context;

.field final input:Ljava/io/Reader;


# direct methods
.method constructor <init>(Ljava/io/Reader;Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;)V
    .locals 0

    .line 19
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;)V

    .line 20
    iput-object p1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->input:Ljava/io/Reader;

    .line 21
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;[Ljava/lang/reflect/Type;)V
    .locals 0

    .line 25
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;-><init>([Ljava/lang/reflect/Type;)V

    .line 26
    iput-object p1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->input:Ljava/io/Reader;

    .line 27
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    return-void
.end method


# virtual methods
.method public readLineObject()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 140
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->inputEnd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->input:Ljava/io/Reader;

    if-nez v0, :cond_1

    .line 145
    iget v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->off:I

    iget v2, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->end:I

    if-lt v0, v2, :cond_1

    return-object v1

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->seekLine()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    return-object v1

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineStart:I

    iget v2, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineEnd:I

    iget v3, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineStart:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->of([CIILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v5

    .line 162
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->objectReader:Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    if-eqz v0, :cond_3

    .line 163
    iget-object v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->objectReader:Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->features:J

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->types:[Ljava/lang/reflect/Type;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->types:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->types:[Ljava/lang/reflect/Type;

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson2/JSONReader;->readList([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_4
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 156
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v2, "seekLine error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected seekLine()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->buf:[C

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->input:Ljava/io/Reader;

    if-eqz v0, :cond_1

    const/high16 v4, 0x80000

    new-array v4, v4, [C

    .line 34
    iput-object v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->buf:[C

    .line 35
    invoke-virtual {v0, v4}, Ljava/io/Reader;->read([C)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 37
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->inputEnd:Z

    return v2

    .line 40
    :cond_0
    iput v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->end:I

    :cond_1
    move v0, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_12

    .line 45
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineTerminated:Z

    .line 47
    iget v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->off:I

    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->end:I

    if-ge v4, v5, :cond_b

    add-int/lit8 v5, v4, 0x4

    .line 48
    iget v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->end:I

    if-ge v5, v6, :cond_2

    .line 49
    iget-object v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->buf:[C

    aget-char v6, v5, v4

    add-int/lit8 v7, v4, 0x1

    .line 50
    aget-char v7, v5, v7

    add-int/lit8 v8, v4, 0x2

    .line 51
    aget-char v8, v5, v8

    add-int/lit8 v9, v4, 0x3

    .line 52
    aget-char v5, v5, v9

    const/16 v10, 0x22

    if-le v6, v10, :cond_2

    if-le v7, v10, :cond_2

    if-le v8, v10, :cond_2

    if-le v5, v10, :cond_2

    .line 54
    iget v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineSize:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineSize:I

    move v4, v9

    goto :goto_2

    .line 60
    :cond_2
    iget-object v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->buf:[C

    aget-char v5, v5, v4

    const-wide/16 v6, 0x0

    const/16 v8, 0xa

    if-ne v5, v8, :cond_5

    .line 63
    iget v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineSize:I

    if-gtz v5, :cond_3

    iget-wide v8, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->IgnoreEmptyLine:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    iget-wide v10, v5, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    and-long/2addr v8, v10

    cmp-long v5, v8, v6

    if-nez v5, :cond_4

    .line 64
    :cond_3
    iget v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->rowCount:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->rowCount:I

    .line 66
    :cond_4
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineTerminated:Z

    .line 67
    iput v2, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineSize:I

    .line 68
    iput v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineEnd:I

    .line 69
    iget v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineNextStart:I

    iput v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineStart:I

    add-int/lit8 v4, v4, 0x1

    .line 70
    iput v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->off:I

    iput v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineNextStart:I

    goto :goto_3

    :cond_5
    const/16 v9, 0xd

    if-ne v5, v9, :cond_a

    .line 74
    iget v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineSize:I

    if-gtz v5, :cond_6

    iget-wide v9, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->IgnoreEmptyLine:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    iget-wide v11, v5, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    and-long/2addr v9, v11

    cmp-long v5, v9, v6

    if-nez v5, :cond_7

    .line 75
    :cond_6
    iget v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->rowCount:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->rowCount:I

    .line 78
    :cond_7
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineTerminated:Z

    .line 79
    iput v2, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineSize:I

    .line 80
    iput v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineEnd:I

    add-int/lit8 v5, v4, 0x1

    .line 83
    iget v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->end:I

    if-lt v5, v6, :cond_8

    goto :goto_3

    .line 86
    :cond_8
    iget-object v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->buf:[C

    aget-char v6, v6, v5

    if-ne v6, v8, :cond_9

    move v4, v5

    .line 90
    :cond_9
    iget v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineNextStart:I

    iput v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineStart:I

    add-int/2addr v4, v3

    .line 91
    iput v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->off:I

    iput v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineNextStart:I

    goto :goto_3

    .line 95
    :cond_a
    iget v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineSize:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineSize:I

    :goto_2
    add-int/2addr v4, v3

    goto/16 :goto_1

    .line 99
    :cond_b
    :goto_3
    iget-boolean v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineTerminated:Z

    if-nez v4, :cond_10

    .line 100
    iget-object v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->input:Ljava/io/Reader;

    if-eqz v4, :cond_f

    iget-boolean v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->inputEnd:Z

    if-nez v4, :cond_f

    .line 101
    iget v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->end:I

    iget v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->off:I

    sub-int/2addr v4, v5

    .line 102
    iget v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->off:I

    if-lez v5, :cond_d

    if-lez v4, :cond_c

    .line 104
    iget-object v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->off:I

    iget-object v7, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->buf:[C

    invoke-static {v5, v6, v7, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    :cond_c
    iput v2, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineNextStart:I

    iput v2, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineStart:I

    .line 107
    iput v2, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->off:I

    .line 108
    iput v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->end:I

    .line 111
    :cond_d
    iget-object v4, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->input:Ljava/io/Reader;

    iget-object v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->end:I

    iget-object v7, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->buf:[C

    array-length v7, v7

    iget v8, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->end:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Reader;->read([CII)I

    move-result v4

    if-ne v4, v1, :cond_e

    .line 113
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->inputEnd:Z

    .line 114
    iget v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->off:I

    iget v1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->end:I

    if-ne v0, v1, :cond_f

    return v2

    .line 118
    :cond_e
    iget v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->end:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->end:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 123
    :cond_f
    iget v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineNextStart:I

    iput v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineStart:I

    .line 124
    iget v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->end:I

    iput v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineEnd:I

    .line 125
    iget v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->rowCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->rowCount:I

    .line 126
    iput v2, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineSize:I

    .line 127
    iget v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->end:I

    iput v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->off:I

    .line 130
    :cond_10
    iget v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->off:I

    iget v1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->end:I

    if-ne v0, v1, :cond_11

    move v2, v3

    :cond_11
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;->lineTerminated:Z

    :cond_12
    return v3
.end method
