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
    .locals 12
    .param p1, "in"    # Lzipkin2/Span;

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->mrTs:J

    iput-wide v0, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wrTs:J

    iput-wide v0, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wsTs:J

    iput-wide v0, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->msTs:J

    iput-wide v0, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    iput-wide v0, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    .line 90
    const/4 v2, 0x0

    iput-object v2, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->addr:Ljava/lang/String;

    iput-object v2, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->end:Ljava/lang/String;

    iput-object v2, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->begin:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v3

    iput-wide v3, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    .line 93
    iget-wide v3, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    invoke-virtual {p1}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_0
    move-wide v3, v0

    :goto_0
    iput-wide v3, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    .line 95
    invoke-virtual {p1}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v3

    .line 98
    .local v3, "kind":Lzipkin2/Span$Kind;
    const/4 v4, 0x0

    .line 98
    .local v4, "i":I
    invoke-virtual {p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 98
    .local v5, "length":I
    :goto_1
    if-ge v4, v5, :cond_a

    .line 99
    invoke-virtual {p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzipkin2/Annotation;

    .line 100
    .local v6, "a":Lzipkin2/Annotation;
    invoke-virtual {v6}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 101
    .end local v6    # "a":Lzipkin2/Annotation;
    .end local v7    # "value":Ljava/lang/String;
    goto/16 :goto_2

    .line 103
    .restart local v6    # "a":Lzipkin2/Annotation;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_1
    const-string v8, "cs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 104
    sget-object v3, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    .line 105
    invoke-virtual {v6}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v8

    iget-wide v10, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_9

    invoke-virtual {v6}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v8

    iput-wide v8, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    goto/16 :goto_2

    .line 106
    :cond_2
    const-string v8, "sr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 107
    sget-object v3, Lzipkin2/Span$Kind;->SERVER:Lzipkin2/Span$Kind;

    .line 108
    invoke-virtual {v6}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v8

    iget-wide v10, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_9

    invoke-virtual {v6}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v8

    iput-wide v8, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    goto/16 :goto_2

    .line 109
    :cond_3
    const-string v8, "ss"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 110
    sget-object v3, Lzipkin2/Span$Kind;->SERVER:Lzipkin2/Span$Kind;

    .line 111
    invoke-virtual {v6}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v8

    iget-wide v10, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_9

    invoke-virtual {v6}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v8

    iput-wide v8, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    goto :goto_2

    .line 112
    :cond_4
    const-string v8, "cr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 113
    sget-object v3, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    .line 114
    invoke-virtual {v6}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v8

    iget-wide v10, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_9

    invoke-virtual {v6}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v8

    iput-wide v8, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    goto :goto_2

    .line 115
    :cond_5
    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 116
    sget-object v3, Lzipkin2/Span$Kind;->PRODUCER:Lzipkin2/Span$Kind;

    .line 117
    invoke-virtual {v6}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v8

    iput-wide v8, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->msTs:J

    goto :goto_2

    .line 118
    :cond_6
    const-string v8, "mr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 119
    sget-object v3, Lzipkin2/Span$Kind;->CONSUMER:Lzipkin2/Span$Kind;

    .line 120
    invoke-virtual {v6}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v8

    iput-wide v8, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->mrTs:J

    goto :goto_2

    .line 121
    :cond_7
    const-string/jumbo v8, "ws"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 122
    invoke-virtual {v6}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v8

    iput-wide v8, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wsTs:J

    goto :goto_2

    .line 123
    :cond_8
    const-string/jumbo v8, "wr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 124
    invoke-virtual {v6}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v8

    iput-wide v8, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wrTs:J

    .line 98
    .end local v6    # "a":Lzipkin2/Annotation;
    .end local v7    # "value":Ljava/lang/String;
    :cond_9
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 128
    .end local v4    # "i":I
    .end local v5    # "length":I
    :cond_a
    invoke-virtual {p1}, Lzipkin2/Span;->remoteEndpoint()Lzipkin2/Endpoint;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v4, "sa"

    iput-object v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->addr:Ljava/lang/String;

    .line 130
    :cond_b
    if-nez v3, :cond_c

    return-void

    .line 132
    :cond_c
    sget-object v4, Lzipkin2/v1/V2SpanConverter$1;->$SwitchMap$zipkin2$Span$Kind:[I

    invoke-virtual {v3}, Lzipkin2/Span$Kind;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 170
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "update kind mapping"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 155
    :pswitch_0
    const-string v4, "ma"

    iput-object v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->addr:Ljava/lang/String;

    .line 156
    iget-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_d

    iget-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wrTs:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_e

    iget-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wrTs:J

    iget-wide v6, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_e

    .line 157
    :cond_d
    iget-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wrTs:J

    iput-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    .line 159
    :cond_e
    iget-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_f

    iget-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->mrTs:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_10

    iget-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->mrTs:J

    iget-wide v6, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_10

    .line 160
    :cond_f
    iget-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->mrTs:J

    iput-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    .line 162
    :cond_10
    iget-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_12

    iget-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wrTs:J

    cmp-long v0, v4, v0

    if-eqz v0, :cond_11

    goto :goto_3

    .line 166
    :cond_11
    const-string v0, "mr"

    iput-object v0, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->begin:Ljava/lang/String;

    .line 168
    goto :goto_4

    .line 163
    :cond_12
    :goto_3
    const-string/jumbo v0, "wr"

    iput-object v0, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->begin:Ljava/lang/String;

    .line 164
    const-string v0, "mr"

    iput-object v0, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->end:Ljava/lang/String;

    goto :goto_4

    .line 144
    :pswitch_1
    const-string v4, "ma"

    iput-object v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->addr:Ljava/lang/String;

    .line 145
    const-string v4, "ms"

    iput-object v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->begin:Ljava/lang/String;

    .line 146
    const-string/jumbo v4, "ws"

    iput-object v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->end:Ljava/lang/String;

    .line 147
    iget-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_13

    iget-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->msTs:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_14

    iget-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->msTs:J

    iget-wide v6, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_14

    .line 148
    :cond_13
    iget-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->msTs:J

    iput-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    .line 150
    :cond_14
    iget-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_15

    iget-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wsTs:J

    cmp-long v0, v4, v0

    if-eqz v0, :cond_16

    iget-wide v0, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wsTs:J

    iget-wide v4, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_16

    .line 151
    :cond_15
    iget-wide v0, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->wsTs:J

    iput-wide v0, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    goto :goto_4

    .line 139
    :pswitch_2
    const-string v0, "ca"

    iput-object v0, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->addr:Ljava/lang/String;

    .line 140
    const-string v0, "sr"

    iput-object v0, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->begin:Ljava/lang/String;

    .line 141
    const-string v0, "ss"

    iput-object v0, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->end:Ljava/lang/String;

    .line 142
    goto :goto_4

    .line 134
    :pswitch_3
    const-string v0, "sa"

    iput-object v0, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->addr:Ljava/lang/String;

    .line 135
    const-string v0, "cs"

    iput-object v0, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->begin:Ljava/lang/String;

    .line 136
    const-string v0, "cr"

    iput-object v0, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->end:Ljava/lang/String;

    .line 137
    nop

    .line 174
    :cond_16
    :goto_4
    invoke-virtual {p1}, Lzipkin2/Span;->remoteEndpoint()Lzipkin2/Endpoint;

    move-result-object v0

    if-nez v0, :cond_17

    iput-object v2, p0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->addr:Ljava/lang/String;

    .line 175
    :cond_17
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
