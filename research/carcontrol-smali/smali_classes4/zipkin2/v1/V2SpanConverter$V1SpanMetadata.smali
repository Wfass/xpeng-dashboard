.class final Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;
.super Ljava/lang/Object;
.source "V2SpanConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/v1/V2SpanConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "V1SpanMetadata"
.end annotation


# instance fields
.field addr:Ljava/lang/String;

.field begin:Ljava/lang/String;

.field end:Ljava/lang/String;

.field endTs:J

.field mrTs:J

.field msTs:J

.field startTs:J

.field wrTs:J

.field wsTs:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method parse(Lzipkin2/Span;)V
    .locals 16

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 89
    iput-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->mrTs:J

    iput-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wrTs:J

    iput-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wsTs:J

    iput-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->msTs:J

    iput-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    iput-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    const/4 v3, 0x0

    .line 90
    iput-object v3, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->addr:Ljava/lang/String;

    iput-object v3, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->end:Ljava/lang/String;

    iput-object v3, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->begin:Ljava/lang/String;

    .line 92
    invoke-virtual/range {p1 .. p1}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v4

    iput-wide v4, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    cmp-long v4, v4, v1

    if-eqz v4, :cond_0

    .line 93
    invoke-virtual/range {p1 .. p1}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-eqz v4, :cond_0

    iget-wide v4, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    invoke-virtual/range {p1 .. p1}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_0

    :cond_0
    move-wide v4, v1

    :goto_0
    iput-wide v4, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    .line 95
    invoke-virtual/range {p1 .. p1}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v4

    const/4 v5, 0x0

    .line 98
    invoke-virtual/range {p1 .. p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    :goto_1
    const-string v7, "wr"

    const-string v8, "ws"

    const-string v9, "ms"

    const-string v10, "ss"

    const-string v11, "cr"

    const-string v12, "sr"

    const-string v13, "cs"

    const/4 v14, 0x2

    const-string v15, "mr"

    if-ge v5, v6, :cond_b

    .line 99
    invoke-virtual/range {p1 .. p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzipkin2/Annotation;

    .line 100
    invoke-virtual {v3}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v14, :cond_1

    goto/16 :goto_3

    .line 103
    :cond_1
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    sget-object v1, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    .line 105
    invoke-virtual {v3}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v7

    iget-wide v9, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    cmp-long v2, v7, v9

    if-gez v2, :cond_2

    invoke-virtual {v3}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v2

    iput-wide v2, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    :cond_2
    :goto_2
    move-object v4, v1

    goto/16 :goto_3

    .line 106
    :cond_3
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    sget-object v1, Lzipkin2/Span$Kind;->SERVER:Lzipkin2/Span$Kind;

    .line 108
    invoke-virtual {v3}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v7

    iget-wide v9, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    cmp-long v2, v7, v9

    if-gez v2, :cond_2

    invoke-virtual {v3}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v2

    iput-wide v2, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    goto :goto_2

    .line 109
    :cond_4
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 110
    sget-object v1, Lzipkin2/Span$Kind;->SERVER:Lzipkin2/Span$Kind;

    .line 111
    invoke-virtual {v3}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v7

    iget-wide v9, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    cmp-long v2, v7, v9

    if-lez v2, :cond_2

    invoke-virtual {v3}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v2

    iput-wide v2, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    goto :goto_2

    .line 112
    :cond_5
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 113
    sget-object v1, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    .line 114
    invoke-virtual {v3}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v7

    iget-wide v9, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    cmp-long v2, v7, v9

    if-lez v2, :cond_2

    invoke-virtual {v3}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v2

    iput-wide v2, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    goto :goto_2

    .line 115
    :cond_6
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 116
    sget-object v1, Lzipkin2/Span$Kind;->PRODUCER:Lzipkin2/Span$Kind;

    .line 117
    invoke-virtual {v3}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v2

    iput-wide v2, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->msTs:J

    goto :goto_2

    .line 118
    :cond_7
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 119
    sget-object v1, Lzipkin2/Span$Kind;->CONSUMER:Lzipkin2/Span$Kind;

    .line 120
    invoke-virtual {v3}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v2

    iput-wide v2, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->mrTs:J

    goto :goto_2

    .line 121
    :cond_8
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 122
    invoke-virtual {v3}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v1

    iput-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wsTs:J

    goto :goto_3

    .line 123
    :cond_9
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 124
    invoke-virtual {v3}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v1

    iput-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wrTs:J

    :cond_a
    :goto_3
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 128
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lzipkin2/Span;->remoteEndpoint()Lzipkin2/Endpoint;

    move-result-object v1

    const-string v2, "sa"

    if-eqz v1, :cond_c

    iput-object v2, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->addr:Ljava/lang/String;

    :cond_c
    if-nez v4, :cond_d

    return-void

    .line 132
    :cond_d
    sget-object v1, Lzipkin2/v1/V2SpanConverter$1;->$SwitchMap$zipkin2$Span$Kind:[I

    invoke-virtual {v4}, Lzipkin2/Span$Kind;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1a

    if-eq v1, v14, :cond_19

    const/4 v2, 0x3

    const-string v3, "ma"

    if-eq v1, v2, :cond_15

    const/4 v2, 0x4

    if-ne v1, v2, :cond_14

    .line 155
    iput-object v3, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->addr:Ljava/lang/String;

    .line 156
    iget-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_e

    iget-wide v5, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wrTs:J

    cmp-long v8, v5, v3

    if-eqz v8, :cond_f

    cmp-long v1, v5, v1

    if-gez v1, :cond_f

    .line 157
    :cond_e
    iget-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wrTs:J

    iput-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    .line 159
    :cond_f
    iget-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_10

    iget-wide v5, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->mrTs:J

    cmp-long v8, v5, v3

    if-eqz v8, :cond_11

    cmp-long v1, v5, v1

    if-lez v1, :cond_11

    .line 160
    :cond_10
    iget-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->mrTs:J

    iput-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    .line 162
    :cond_11
    iget-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_13

    iget-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wrTs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_12

    goto :goto_4

    .line 166
    :cond_12
    iput-object v15, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->begin:Ljava/lang/String;

    goto :goto_5

    .line 163
    :cond_13
    :goto_4
    iput-object v7, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->begin:Ljava/lang/String;

    .line 164
    iput-object v15, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->end:Ljava/lang/String;

    goto :goto_5

    .line 170
    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "update kind mapping"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 144
    :cond_15
    iput-object v3, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->addr:Ljava/lang/String;

    .line 145
    iput-object v9, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->begin:Ljava/lang/String;

    .line 146
    iput-object v8, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->end:Ljava/lang/String;

    .line 147
    iget-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_16

    iget-wide v5, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->msTs:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_17

    cmp-long v1, v5, v1

    if-gez v1, :cond_17

    .line 148
    :cond_16
    iget-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->msTs:J

    iput-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    .line 150
    :cond_17
    iget-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_18

    iget-wide v5, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wsTs:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_1b

    cmp-long v1, v5, v1

    if-lez v1, :cond_1b

    .line 151
    :cond_18
    iget-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wsTs:J

    iput-wide v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    goto :goto_5

    :cond_19
    const-string v1, "ca"

    .line 139
    iput-object v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->addr:Ljava/lang/String;

    .line 140
    iput-object v12, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->begin:Ljava/lang/String;

    .line 141
    iput-object v10, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->end:Ljava/lang/String;

    goto :goto_5

    .line 134
    :cond_1a
    iput-object v2, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->addr:Ljava/lang/String;

    .line 135
    iput-object v13, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->begin:Ljava/lang/String;

    .line 136
    iput-object v11, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->end:Ljava/lang/String;

    .line 174
    :cond_1b
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lzipkin2/Span;->remoteEndpoint()Lzipkin2/Endpoint;

    move-result-object v1

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    iput-object v1, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->addr:Ljava/lang/String;

    :cond_1c
    return-void
.end method
