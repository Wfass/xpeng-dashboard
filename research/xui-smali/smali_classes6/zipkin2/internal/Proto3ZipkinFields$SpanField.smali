.class Lzipkin2/internal/Proto3ZipkinFields$SpanField;
.super Lzipkin2/internal/Proto3Fields$LengthDelimitedField;
.source "Proto3ZipkinFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Proto3ZipkinFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpanField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzipkin2/internal/Proto3Fields$LengthDelimitedField<",
        "Lzipkin2/Span;",
        ">;"
    }
.end annotation


# static fields
.field static final ANNOTATION:Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;

.field static final ANNOTATION_KEY:I = 0x52

.field static final DEBUG:Lzipkin2/internal/Proto3Fields$BooleanField;

.field static final DEBUG_KEY:I = 0x60

.field static final DURATION:Lzipkin2/internal/Proto3Fields$VarintField;

.field static final DURATION_KEY:I = 0x38

.field static final ID:Lzipkin2/internal/Proto3Fields$HexField;

.field static final ID_KEY:I = 0x1a

.field static final KIND:Lzipkin2/internal/Proto3Fields$VarintField;

.field static final KIND_KEY:I = 0x20

.field static final LOCAL_ENDPOINT:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

.field static final LOCAL_ENDPOINT_KEY:I = 0x42

.field static final NAME:Lzipkin2/internal/Proto3Fields$Utf8Field;

.field static final NAME_KEY:I = 0x2a

.field static final PARENT_ID:Lzipkin2/internal/Proto3Fields$HexField;

.field static final PARENT_ID_KEY:I = 0x12

.field static final REMOTE_ENDPOINT:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

.field static final REMOTE_ENDPOINT_KEY:I = 0x4a

.field static final SHARED:Lzipkin2/internal/Proto3Fields$BooleanField;

.field static final SHARED_KEY:I = 0x68

.field static final TAG:Lzipkin2/internal/Proto3ZipkinFields$TagField;

.field static final TAG_KEY:I = 0x5a

.field static final TIMESTAMP:Lzipkin2/internal/Proto3Fields$Fixed64Field;

.field static final TIMESTAMP_KEY:I = 0x31

.field static final TRACE_ID:Lzipkin2/internal/Proto3Fields$HexField;

.field static final TRACE_ID_KEY:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 228
    new-instance v0, Lzipkin2/internal/Proto3Fields$HexField;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$HexField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->TRACE_ID:Lzipkin2/internal/Proto3Fields$HexField;

    .line 229
    new-instance v0, Lzipkin2/internal/Proto3Fields$HexField;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$HexField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->PARENT_ID:Lzipkin2/internal/Proto3Fields$HexField;

    .line 230
    new-instance v0, Lzipkin2/internal/Proto3Fields$HexField;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$HexField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->ID:Lzipkin2/internal/Proto3Fields$HexField;

    .line 231
    new-instance v0, Lzipkin2/internal/Proto3Fields$VarintField;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$VarintField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->KIND:Lzipkin2/internal/Proto3Fields$VarintField;

    .line 232
    new-instance v0, Lzipkin2/internal/Proto3Fields$Utf8Field;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$Utf8Field;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->NAME:Lzipkin2/internal/Proto3Fields$Utf8Field;

    .line 233
    new-instance v0, Lzipkin2/internal/Proto3Fields$Fixed64Field;

    const/16 v1, 0x31

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$Fixed64Field;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->TIMESTAMP:Lzipkin2/internal/Proto3Fields$Fixed64Field;

    .line 234
    new-instance v0, Lzipkin2/internal/Proto3Fields$VarintField;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$VarintField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->DURATION:Lzipkin2/internal/Proto3Fields$VarintField;

    .line 235
    new-instance v0, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    const/16 v1, 0x42

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->LOCAL_ENDPOINT:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    .line 236
    new-instance v0, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    const/16 v1, 0x4a

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->REMOTE_ENDPOINT:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    .line 237
    new-instance v0, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;

    const/16 v1, 0x52

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->ANNOTATION:Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;

    .line 238
    new-instance v0, Lzipkin2/internal/Proto3ZipkinFields$TagField;

    const/16 v1, 0x5a

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3ZipkinFields$TagField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->TAG:Lzipkin2/internal/Proto3ZipkinFields$TagField;

    .line 239
    new-instance v0, Lzipkin2/internal/Proto3Fields$BooleanField;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$BooleanField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->DEBUG:Lzipkin2/internal/Proto3Fields$BooleanField;

    .line 240
    new-instance v0, Lzipkin2/internal/Proto3Fields$BooleanField;

    const/16 v1, 0x68

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$BooleanField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->SHARED:Lzipkin2/internal/Proto3Fields$BooleanField;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 243
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;-><init>(I)V

    .line 244
    return-void
.end method


# virtual methods
.method public read(Lzipkin2/internal/Buffer;)Lzipkin2/Span;
    .locals 1
    .param p1, "buffer"    # Lzipkin2/internal/Buffer;

    .line 310
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->readVarint32()I

    .line 311
    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->readLengthPrefixAndValue(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzipkin2/Span;

    return-object v0
.end method

.method bridge synthetic readValue(Lzipkin2/internal/Buffer;I)Ljava/lang/Object;
    .locals 0

    .line 213
    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->readValue(Lzipkin2/internal/Buffer;I)Lzipkin2/Span;

    move-result-object p1

    return-object p1
.end method

.method readValue(Lzipkin2/internal/Buffer;I)Lzipkin2/Span;
    .locals 6
    .param p1, "buffer"    # Lzipkin2/internal/Buffer;
    .param p2, "length"    # I

    .line 315
    iget v0, p1, Lzipkin2/internal/Buffer;->pos:I

    add-int/2addr v0, p2

    .line 318
    .local v0, "endPos":I
    invoke-static {}, Lzipkin2/Span;->newBuilder()Lzipkin2/Span$Builder;

    move-result-object v1

    .line 319
    .local v1, "builder":Lzipkin2/Span$Builder;
    :goto_0
    iget v2, p1, Lzipkin2/internal/Buffer;->pos:I

    if-ge v2, v0, :cond_3

    .line 320
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->readVarint32()I

    move-result v2

    .line 321
    .local v2, "nextKey":I
    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 365
    invoke-static {p1, v2}, Lzipkin2/internal/Proto3ZipkinFields;->logAndSkip(Lzipkin2/internal/Buffer;I)V

    .end local v2    # "nextKey":I
    goto/16 :goto_1

    .line 362
    .restart local v2    # "nextKey":I
    :sswitch_0
    sget-object v4, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->SHARED:Lzipkin2/internal/Proto3Fields$BooleanField;

    invoke-virtual {v4, p1}, Lzipkin2/internal/Proto3Fields$BooleanField;->read(Lzipkin2/internal/Buffer;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Lzipkin2/Span$Builder;->shared(Z)Lzipkin2/Span$Builder;

    goto/16 :goto_1

    .line 359
    :sswitch_1
    sget-object v4, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->DEBUG:Lzipkin2/internal/Proto3Fields$BooleanField;

    invoke-virtual {v4, p1}, Lzipkin2/internal/Proto3Fields$BooleanField;->read(Lzipkin2/internal/Buffer;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Lzipkin2/Span$Builder;->debug(Z)Lzipkin2/Span$Builder;

    goto/16 :goto_1

    .line 356
    :sswitch_2
    sget-object v3, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->TAG:Lzipkin2/internal/Proto3ZipkinFields$TagField;

    invoke-virtual {v3, p1, v1}, Lzipkin2/internal/Proto3ZipkinFields$TagField;->readLengthPrefixAndValue(Lzipkin2/internal/Buffer;Lzipkin2/Span$Builder;)Z

    .line 357
    goto/16 :goto_1

    .line 353
    :sswitch_3
    sget-object v3, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->ANNOTATION:Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;

    invoke-virtual {v3, p1, v1}, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;->readLengthPrefixAndValue(Lzipkin2/internal/Buffer;Lzipkin2/Span$Builder;)Z

    .line 354
    goto/16 :goto_1

    .line 350
    :sswitch_4
    sget-object v3, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->REMOTE_ENDPOINT:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    invoke-virtual {v3, p1}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->readLengthPrefixAndValue(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzipkin2/Endpoint;

    invoke-virtual {v1, v3}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    .line 351
    goto/16 :goto_1

    .line 347
    :sswitch_5
    sget-object v3, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->LOCAL_ENDPOINT:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    invoke-virtual {v3, p1}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->readLengthPrefixAndValue(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzipkin2/Endpoint;

    invoke-virtual {v1, v3}, Lzipkin2/Span$Builder;->localEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    .line 348
    goto :goto_1

    .line 344
    :sswitch_6
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->readVarint64()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lzipkin2/Span$Builder;->duration(J)Lzipkin2/Span$Builder;

    .line 345
    goto :goto_1

    .line 341
    :sswitch_7
    sget-object v3, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->TIMESTAMP:Lzipkin2/internal/Proto3Fields$Fixed64Field;

    invoke-virtual {v3, p1}, Lzipkin2/internal/Proto3Fields$Fixed64Field;->readValue(Lzipkin2/internal/Buffer;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    .line 342
    goto :goto_1

    .line 338
    :sswitch_8
    sget-object v3, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->NAME:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-virtual {v3, p1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->readLengthPrefixAndValue(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lzipkin2/Span$Builder;->name(Ljava/lang/String;)Lzipkin2/Span$Builder;

    .line 339
    goto :goto_1

    .line 332
    :sswitch_9
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->readVarint32()I

    move-result v3

    .line 333
    .local v3, "kind":I
    if-nez v3, :cond_0

    .end local v2    # "nextKey":I
    .end local v3    # "kind":I
    goto :goto_1

    .line 334
    .restart local v2    # "nextKey":I
    .restart local v3    # "kind":I
    :cond_0
    invoke-static {}, Lzipkin2/Span$Kind;->values()[Lzipkin2/Span$Kind;

    move-result-object v4

    array-length v4, v4

    if-le v3, v4, :cond_1

    .end local v2    # "nextKey":I
    .end local v3    # "kind":I
    goto :goto_1

    .line 335
    .restart local v2    # "nextKey":I
    .restart local v3    # "kind":I
    :cond_1
    invoke-static {}, Lzipkin2/Span$Kind;->values()[Lzipkin2/Span$Kind;

    move-result-object v4

    add-int/lit8 v5, v3, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 336
    goto :goto_1

    .line 329
    .end local v3    # "kind":I
    :sswitch_a
    sget-object v3, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->ID:Lzipkin2/internal/Proto3Fields$HexField;

    invoke-virtual {v3, p1}, Lzipkin2/internal/Proto3Fields$HexField;->readLengthPrefixAndValue(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lzipkin2/Span$Builder;->id(Ljava/lang/String;)Lzipkin2/Span$Builder;

    .line 330
    goto :goto_1

    .line 326
    :sswitch_b
    sget-object v3, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->PARENT_ID:Lzipkin2/internal/Proto3Fields$HexField;

    invoke-virtual {v3, p1}, Lzipkin2/internal/Proto3Fields$HexField;->readLengthPrefixAndValue(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lzipkin2/Span$Builder;->parentId(Ljava/lang/String;)Lzipkin2/Span$Builder;

    .line 327
    goto :goto_1

    .line 323
    :sswitch_c
    sget-object v3, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->TRACE_ID:Lzipkin2/internal/Proto3Fields$HexField;

    invoke-virtual {v3, p1}, Lzipkin2/internal/Proto3Fields$HexField;->readLengthPrefixAndValue(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lzipkin2/Span$Builder;->traceId(Ljava/lang/String;)Lzipkin2/Span$Builder;

    .line 324
    nop

    .line 367
    .end local v2    # "nextKey":I
    :cond_2
    :goto_1
    goto/16 :goto_0

    .line 368
    :cond_3
    invoke-virtual {v1}, Lzipkin2/Span$Builder;->build()Lzipkin2/Span;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_c
        0x12 -> :sswitch_b
        0x1a -> :sswitch_a
        0x20 -> :sswitch_9
        0x2a -> :sswitch_8
        0x31 -> :sswitch_7
        0x38 -> :sswitch_6
        0x42 -> :sswitch_5
        0x4a -> :sswitch_4
        0x52 -> :sswitch_3
        0x5a -> :sswitch_2
        0x60 -> :sswitch_1
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method bridge synthetic sizeOfValue(Ljava/lang/Object;)I
    .locals 0

    .line 213
    check-cast p1, Lzipkin2/Span;

    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->sizeOfValue(Lzipkin2/Span;)I

    move-result p1

    return p1
.end method

.method sizeOfValue(Lzipkin2/Span;)I
    .locals 8
    .param p1, "span"    # Lzipkin2/Span;

    .line 247
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->TRACE_ID:Lzipkin2/internal/Proto3Fields$HexField;

    invoke-virtual {p1}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/internal/Proto3Fields$HexField;->sizeInBytes(Ljava/lang/Object;)I

    move-result v0

    .line 248
    .local v0, "sizeOfSpan":I
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->PARENT_ID:Lzipkin2/internal/Proto3Fields$HexField;

    invoke-virtual {p1}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/internal/Proto3Fields$HexField;->sizeInBytes(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->ID:Lzipkin2/internal/Proto3Fields$HexField;

    invoke-virtual {p1}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/internal/Proto3Fields$HexField;->sizeInBytes(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->KIND:Lzipkin2/internal/Proto3Fields$VarintField;

    invoke-virtual {p1}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lzipkin2/internal/Proto3Fields$VarintField;->sizeInBytes(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 251
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->NAME:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-virtual {p1}, Lzipkin2/Span;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/internal/Proto3Fields$Utf8Field;->sizeInBytes(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 252
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->TIMESTAMP:Lzipkin2/internal/Proto3Fields$Fixed64Field;

    invoke-virtual {p1}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lzipkin2/internal/Proto3Fields$Fixed64Field;->sizeInBytes(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 253
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->DURATION:Lzipkin2/internal/Proto3Fields$VarintField;

    invoke-virtual {p1}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lzipkin2/internal/Proto3Fields$VarintField;->sizeInBytes(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 254
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->LOCAL_ENDPOINT:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    invoke-virtual {p1}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->sizeInBytes(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 255
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->REMOTE_ENDPOINT:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    invoke-virtual {p1}, Lzipkin2/Span;->remoteEndpoint()Lzipkin2/Endpoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->sizeInBytes(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 257
    invoke-virtual {p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v1

    .line 258
    .local v1, "annotations":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Annotation;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 259
    .local v2, "annotationCount":I
    nop

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 260
    sget-object v4, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->ANNOTATION:Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzipkin2/Annotation;

    invoke-virtual {v4, v5}, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;->sizeInBytes(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    .line 259
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 263
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p1}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v3

    .line 264
    .local v3, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    .line 265
    .local v4, "tagCount":I
    if-lez v4, :cond_2

    .line 266
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 267
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->TAG:Lzipkin2/internal/Proto3ZipkinFields$TagField;

    invoke-virtual {v7, v6}, Lzipkin2/internal/Proto3ZipkinFields$TagField;->sizeInBytes(Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v0, v7

    .line 268
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 271
    :cond_2
    sget-object v5, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->DEBUG:Lzipkin2/internal/Proto3Fields$BooleanField;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/Span;->debug()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lzipkin2/internal/Proto3Fields$BooleanField;->sizeInBytes(Z)I

    move-result v5

    add-int/2addr v0, v5

    .line 272
    sget-object v5, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->SHARED:Lzipkin2/internal/Proto3Fields$BooleanField;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lzipkin2/internal/Proto3Fields$BooleanField;->sizeInBytes(Z)I

    move-result v5

    add-int/2addr v0, v5

    .line 273
    return v0
.end method

.method toByte(Lzipkin2/Span$Kind;)I
    .locals 1
    .param p1, "kind"    # Lzipkin2/Span$Kind;

    .line 306
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lzipkin2/Span$Kind;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method bridge synthetic writeValue(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V
    .locals 0

    .line 213
    check-cast p2, Lzipkin2/Span;

    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->writeValue(Lzipkin2/internal/Buffer;Lzipkin2/Span;)V

    return-void
.end method

.method writeValue(Lzipkin2/internal/Buffer;Lzipkin2/Span;)V
    .locals 6
    .param p1, "b"    # Lzipkin2/internal/Buffer;
    .param p2, "value"    # Lzipkin2/Span;

    .line 277
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->TRACE_ID:Lzipkin2/internal/Proto3Fields$HexField;

    invoke-virtual {p2}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3Fields$HexField;->write(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 278
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->PARENT_ID:Lzipkin2/internal/Proto3Fields$HexField;

    invoke-virtual {p2}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3Fields$HexField;->write(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 279
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->ID:Lzipkin2/internal/Proto3Fields$HexField;

    invoke-virtual {p2}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3Fields$HexField;->write(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 280
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->KIND:Lzipkin2/internal/Proto3Fields$VarintField;

    invoke-virtual {p2}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v1

    invoke-virtual {p0, v1}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->toByte(Lzipkin2/Span$Kind;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3Fields$VarintField;->write(Lzipkin2/internal/Buffer;I)V

    .line 281
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->NAME:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-virtual {p2}, Lzipkin2/Span;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->write(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 282
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->TIMESTAMP:Lzipkin2/internal/Proto3Fields$Fixed64Field;

    invoke-virtual {p2}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lzipkin2/internal/Proto3Fields$Fixed64Field;->write(Lzipkin2/internal/Buffer;J)V

    .line 283
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->DURATION:Lzipkin2/internal/Proto3Fields$VarintField;

    invoke-virtual {p2}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lzipkin2/internal/Proto3Fields$VarintField;->write(Lzipkin2/internal/Buffer;J)V

    .line 284
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->LOCAL_ENDPOINT:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    invoke-virtual {p2}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->write(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 285
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->REMOTE_ENDPOINT:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    invoke-virtual {p2}, Lzipkin2/Span;->remoteEndpoint()Lzipkin2/Endpoint;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->write(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 287
    invoke-virtual {p2}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v0

    .line 288
    .local v0, "annotations":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Annotation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 289
    .local v1, "annotationLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 290
    sget-object v3, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->ANNOTATION:Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzipkin2/Annotation;

    invoke-virtual {v3, p1, v4}, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;->write(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p2}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v2

    .line 294
    .local v2, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 295
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 296
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->TAG:Lzipkin2/internal/Proto3ZipkinFields$TagField;

    invoke-virtual {v5, p1, v4}, Lzipkin2/internal/Proto3ZipkinFields$TagField;->write(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 297
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 300
    :cond_1
    sget-object v3, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->DEBUG:Lzipkin2/internal/Proto3Fields$BooleanField;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2}, Lzipkin2/Span;->debug()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, p1, v4}, Lzipkin2/internal/Proto3Fields$BooleanField;->write(Lzipkin2/internal/Buffer;Z)V

    .line 301
    sget-object v3, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->SHARED:Lzipkin2/internal/Proto3Fields$BooleanField;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, p1, v4}, Lzipkin2/internal/Proto3Fields$BooleanField;->write(Lzipkin2/internal/Buffer;Z)V

    .line 302
    return-void
.end method
