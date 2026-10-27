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
.field static final a:Lzipkin2/internal/Proto3Fields$HexField;

.field static final f:Lzipkin2/internal/Proto3Fields$HexField;

.field static final g:Lzipkin2/internal/Proto3Fields$HexField;

.field static final h:Lzipkin2/internal/Proto3Fields$VarintField;

.field static final i:Lzipkin2/internal/Proto3Fields$Utf8Field;

.field static final j:Lzipkin2/internal/Proto3Fields$Fixed64Field;

.field static final k:Lzipkin2/internal/Proto3Fields$VarintField;

.field static final l:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

.field static final m:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

.field static final n:Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;

.field static final o:Lzipkin2/internal/Proto3ZipkinFields$TagField;

.field static final p:Lzipkin2/internal/Proto3Fields$BooleanField;

.field static final q:Lzipkin2/internal/Proto3Fields$BooleanField;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 228
    new-instance v0, Lzipkin2/internal/Proto3Fields$HexField;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$HexField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->a:Lzipkin2/internal/Proto3Fields$HexField;

    .line 229
    new-instance v0, Lzipkin2/internal/Proto3Fields$HexField;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$HexField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->f:Lzipkin2/internal/Proto3Fields$HexField;

    .line 230
    new-instance v0, Lzipkin2/internal/Proto3Fields$HexField;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$HexField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->g:Lzipkin2/internal/Proto3Fields$HexField;

    .line 231
    new-instance v0, Lzipkin2/internal/Proto3Fields$VarintField;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$VarintField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->h:Lzipkin2/internal/Proto3Fields$VarintField;

    .line 232
    new-instance v0, Lzipkin2/internal/Proto3Fields$Utf8Field;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$Utf8Field;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->i:Lzipkin2/internal/Proto3Fields$Utf8Field;

    .line 233
    new-instance v0, Lzipkin2/internal/Proto3Fields$Fixed64Field;

    const/16 v1, 0x31

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$Fixed64Field;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->j:Lzipkin2/internal/Proto3Fields$Fixed64Field;

    .line 234
    new-instance v0, Lzipkin2/internal/Proto3Fields$VarintField;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$VarintField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->k:Lzipkin2/internal/Proto3Fields$VarintField;

    .line 235
    new-instance v0, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    const/16 v1, 0x42

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->l:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    .line 236
    new-instance v0, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    const/16 v1, 0x4a

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->m:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    .line 237
    new-instance v0, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;

    const/16 v1, 0x52

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->n:Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;

    .line 238
    new-instance v0, Lzipkin2/internal/Proto3ZipkinFields$TagField;

    const/16 v1, 0x5a

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3ZipkinFields$TagField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->o:Lzipkin2/internal/Proto3ZipkinFields$TagField;

    .line 239
    new-instance v0, Lzipkin2/internal/Proto3Fields$BooleanField;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$BooleanField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->p:Lzipkin2/internal/Proto3Fields$BooleanField;

    .line 240
    new-instance v0, Lzipkin2/internal/Proto3Fields$BooleanField;

    const/16 v1, 0x68

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$BooleanField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->q:Lzipkin2/internal/Proto3Fields$BooleanField;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 243
    invoke-direct {p0, v0}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;-><init>(I)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 213
    check-cast p1, Lzipkin2/Span;

    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->a(Lzipkin2/Span;)I

    move-result p1

    return p1
.end method

.method a(Lzipkin2/Span$Kind;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p1}, Lzipkin2/Span$Kind;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method a(Lzipkin2/Span;)I
    .locals 6

    .line 247
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->a:Lzipkin2/internal/Proto3Fields$HexField;

    invoke-virtual {p1}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/internal/Proto3Fields$HexField;->b(Ljava/lang/Object;)I

    move-result v0

    .line 248
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->f:Lzipkin2/internal/Proto3Fields$HexField;

    invoke-virtual {p1}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/internal/Proto3Fields$HexField;->b(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->g:Lzipkin2/internal/Proto3Fields$HexField;

    invoke-virtual {p1}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/internal/Proto3Fields$HexField;->b(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->h:Lzipkin2/internal/Proto3Fields$VarintField;

    invoke-virtual {p1}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lzipkin2/internal/Proto3Fields$VarintField;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 251
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->i:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-virtual {p1}, Lzipkin2/Span;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/internal/Proto3Fields$Utf8Field;->b(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 252
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->j:Lzipkin2/internal/Proto3Fields$Fixed64Field;

    invoke-virtual {p1}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lzipkin2/internal/Proto3Fields$Fixed64Field;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 253
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->k:Lzipkin2/internal/Proto3Fields$VarintField;

    invoke-virtual {p1}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lzipkin2/internal/Proto3Fields$VarintField;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 254
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->l:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    invoke-virtual {p1}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->b(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 255
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->m:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    invoke-virtual {p1}, Lzipkin2/Span;->remoteEndpoint()Lzipkin2/Endpoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->b(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 257
    invoke-virtual {p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v1

    .line 258
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_1

    .line 260
    sget-object v4, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->n:Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzipkin2/Annotation;

    invoke-virtual {v4, v5}, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;->b(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 263
    :cond_1
    invoke-virtual {p1}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v1

    .line 264
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 266
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 267
    sget-object v3, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->o:Lzipkin2/internal/Proto3ZipkinFields$TagField;

    invoke-virtual {v3, v2}, Lzipkin2/internal/Proto3ZipkinFields$TagField;->b(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2

    .line 271
    :cond_2
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->p:Lzipkin2/internal/Proto3Fields$BooleanField;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/Span;->debug()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lzipkin2/internal/Proto3Fields$BooleanField;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->q:Lzipkin2/internal/Proto3Fields$BooleanField;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lzipkin2/internal/Proto3Fields$BooleanField;->a(Z)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method a(Lzipkin2/internal/Buffer;I)Lzipkin2/Span;
    .locals 3

    .line 315
    iget v0, p1, Lzipkin2/internal/Buffer;->a:I

    add-int/2addr v0, p2

    .line 318
    invoke-static {}, Lzipkin2/Span;->newBuilder()Lzipkin2/Span$Builder;

    move-result-object p2

    .line 319
    :cond_0
    :goto_0
    iget v1, p1, Lzipkin2/internal/Buffer;->a:I

    if-ge v1, v0, :cond_3

    .line 320
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->c()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 365
    invoke-static {p1, v1}, Lzipkin2/internal/Proto3ZipkinFields;->a(Lzipkin2/internal/Buffer;I)V

    goto :goto_0

    .line 362
    :sswitch_0
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->q:Lzipkin2/internal/Proto3Fields$BooleanField;

    invoke-virtual {v1, p1}, Lzipkin2/internal/Proto3Fields$BooleanField;->a(Lzipkin2/internal/Buffer;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v2}, Lzipkin2/Span$Builder;->shared(Z)Lzipkin2/Span$Builder;

    goto :goto_0

    .line 359
    :sswitch_1
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->p:Lzipkin2/internal/Proto3Fields$BooleanField;

    invoke-virtual {v1, p1}, Lzipkin2/internal/Proto3Fields$BooleanField;->a(Lzipkin2/internal/Buffer;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v2}, Lzipkin2/Span$Builder;->debug(Z)Lzipkin2/Span$Builder;

    goto :goto_0

    .line 356
    :sswitch_2
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->o:Lzipkin2/internal/Proto3ZipkinFields$TagField;

    invoke-virtual {v1, p1, p2}, Lzipkin2/internal/Proto3ZipkinFields$TagField;->a(Lzipkin2/internal/Buffer;Lzipkin2/Span$Builder;)Z

    goto :goto_0

    .line 353
    :sswitch_3
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->n:Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;

    invoke-virtual {v1, p1, p2}, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;->a(Lzipkin2/internal/Buffer;Lzipkin2/Span$Builder;)Z

    goto :goto_0

    .line 350
    :sswitch_4
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->m:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    invoke-virtual {v1, p1}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->a(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzipkin2/Endpoint;

    invoke-virtual {p2, v1}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    goto :goto_0

    .line 347
    :sswitch_5
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->l:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    invoke-virtual {v1, p1}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->a(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzipkin2/Endpoint;

    invoke-virtual {p2, v1}, Lzipkin2/Span$Builder;->localEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    goto :goto_0

    .line 344
    :sswitch_6
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->d()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lzipkin2/Span$Builder;->duration(J)Lzipkin2/Span$Builder;

    goto :goto_0

    .line 341
    :sswitch_7
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->j:Lzipkin2/internal/Proto3Fields$Fixed64Field;

    invoke-virtual {v1, p1}, Lzipkin2/internal/Proto3Fields$Fixed64Field;->a(Lzipkin2/internal/Buffer;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    goto :goto_0

    .line 338
    :sswitch_8
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->i:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-virtual {v1, p1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->a(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lzipkin2/Span$Builder;->name(Ljava/lang/String;)Lzipkin2/Span$Builder;

    goto :goto_0

    .line 332
    :sswitch_9
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->c()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 334
    :cond_1
    invoke-static {}, Lzipkin2/Span$Kind;->values()[Lzipkin2/Span$Kind;

    move-result-object v2

    array-length v2, v2

    if-le v1, v2, :cond_2

    goto :goto_0

    .line 335
    :cond_2
    invoke-static {}, Lzipkin2/Span$Kind;->values()[Lzipkin2/Span$Kind;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    invoke-virtual {p2, v1}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    goto/16 :goto_0

    .line 329
    :sswitch_a
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->g:Lzipkin2/internal/Proto3Fields$HexField;

    invoke-virtual {v1, p1}, Lzipkin2/internal/Proto3Fields$HexField;->a(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lzipkin2/Span$Builder;->id(Ljava/lang/String;)Lzipkin2/Span$Builder;

    goto/16 :goto_0

    .line 326
    :sswitch_b
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->f:Lzipkin2/internal/Proto3Fields$HexField;

    invoke-virtual {v1, p1}, Lzipkin2/internal/Proto3Fields$HexField;->a(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lzipkin2/Span$Builder;->parentId(Ljava/lang/String;)Lzipkin2/Span$Builder;

    goto/16 :goto_0

    .line 323
    :sswitch_c
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->a:Lzipkin2/internal/Proto3Fields$HexField;

    invoke-virtual {v1, p1}, Lzipkin2/internal/Proto3Fields$HexField;->a(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lzipkin2/Span$Builder;->traceId(Ljava/lang/String;)Lzipkin2/Span$Builder;

    goto/16 :goto_0

    .line 368
    :cond_3
    invoke-virtual {p2}, Lzipkin2/Span$Builder;->build()Lzipkin2/Span;

    move-result-object p1

    return-object p1

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

.method bridge synthetic a(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V
    .locals 0

    .line 213
    check-cast p2, Lzipkin2/Span;

    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->a(Lzipkin2/internal/Buffer;Lzipkin2/Span;)V

    return-void
.end method

.method a(Lzipkin2/internal/Buffer;Lzipkin2/Span;)V
    .locals 5

    .line 277
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->a:Lzipkin2/internal/Proto3Fields$HexField;

    invoke-virtual {p2}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3Fields$HexField;->b(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 278
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->f:Lzipkin2/internal/Proto3Fields$HexField;

    invoke-virtual {p2}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3Fields$HexField;->b(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 279
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->g:Lzipkin2/internal/Proto3Fields$HexField;

    invoke-virtual {p2}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3Fields$HexField;->b(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 280
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->h:Lzipkin2/internal/Proto3Fields$VarintField;

    invoke-virtual {p2}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v1

    invoke-virtual {p0, v1}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->a(Lzipkin2/Span$Kind;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3Fields$VarintField;->a(Lzipkin2/internal/Buffer;I)V

    .line 281
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->i:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-virtual {p2}, Lzipkin2/Span;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->b(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 282
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->j:Lzipkin2/internal/Proto3Fields$Fixed64Field;

    invoke-virtual {p2}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lzipkin2/internal/Proto3Fields$Fixed64Field;->a(Lzipkin2/internal/Buffer;J)V

    .line 283
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->k:Lzipkin2/internal/Proto3Fields$VarintField;

    invoke-virtual {p2}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lzipkin2/internal/Proto3Fields$VarintField;->a(Lzipkin2/internal/Buffer;J)V

    .line 284
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->l:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    invoke-virtual {p2}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->b(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 285
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->m:Lzipkin2/internal/Proto3ZipkinFields$EndpointField;

    invoke-virtual {p2}, Lzipkin2/Span;->remoteEndpoint()Lzipkin2/Endpoint;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->b(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 287
    invoke-virtual {p2}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v0

    .line 288
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 290
    sget-object v3, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->n:Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzipkin2/Annotation;

    invoke-virtual {v3, p1, v4}, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;->b(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p2}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v0

    .line 294
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 296
    sget-object v2, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->o:Lzipkin2/internal/Proto3ZipkinFields$TagField;

    invoke-virtual {v2, p1, v1}, Lzipkin2/internal/Proto3ZipkinFields$TagField;->b(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    goto :goto_1

    .line 300
    :cond_1
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->p:Lzipkin2/internal/Proto3Fields$BooleanField;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2}, Lzipkin2/Span;->debug()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3Fields$BooleanField;->a(Lzipkin2/internal/Buffer;Z)V

    .line 301
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->q:Lzipkin2/internal/Proto3Fields$BooleanField;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lzipkin2/internal/Proto3Fields$BooleanField;->a(Lzipkin2/internal/Buffer;Z)V

    return-void
.end method

.method synthetic b(Lzipkin2/internal/Buffer;I)Ljava/lang/Object;
    .locals 0

    .line 213
    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->a(Lzipkin2/internal/Buffer;I)Lzipkin2/Span;

    move-result-object p1

    return-object p1
.end method

.method public read(Lzipkin2/internal/Buffer;)Lzipkin2/Span;
    .locals 0

    .line 310
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->c()I

    .line 311
    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->a(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzipkin2/Span;

    return-object p1
.end method
