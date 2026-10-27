.class public final Lzipkin2/v1/V1Span$Builder;
.super Ljava/lang/Object;
.source "V1Span.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/v1/V1Span;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field annotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lzipkin2/v1/V1Annotation;",
            ">;"
        }
    .end annotation
.end field

.field binaryAnnotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lzipkin2/v1/V1BinaryAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field debug:Ljava/lang/Boolean;

.field duration:J

.field id:J

.field name:Ljava/lang/String;

.field parentId:J

.field timestamp:J

.field traceId:J

.field traceIdHigh:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAnnotation(JLjava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;
    .locals 2
    .param p4    # Lzipkin2/Endpoint;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 242
    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->annotations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lzipkin2/v1/V1Span$Builder;->annotations:Ljava/util/ArrayList;

    .line 243
    :cond_0
    sget-object v0, Lzipkin2/v1/V1Span;->EMPTY_ENDPOINT:Lzipkin2/Endpoint;

    invoke-virtual {v0, p4}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p4, 0x0

    .line 244
    :cond_1
    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->annotations:Ljava/util/ArrayList;

    new-instance v1, Lzipkin2/v1/V1Annotation;

    invoke-direct {v1, p1, p2, p3, p4}, Lzipkin2/v1/V1Annotation;-><init>(JLjava/lang/String;Lzipkin2/Endpoint;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addBinaryAnnotation(Ljava/lang/String;Ljava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;
    .locals 2

    const-string v0, "value == null"

    .line 265
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lzipkin2/v1/V1Span;->EMPTY_ENDPOINT:Lzipkin2/Endpoint;

    invoke-virtual {v0, p3}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    .line 267
    :cond_0
    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->binaryAnnotations:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lzipkin2/v1/V1Span$Builder;->binaryAnnotations:Ljava/util/ArrayList;

    .line 268
    :cond_1
    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->binaryAnnotations:Ljava/util/ArrayList;

    new-instance v1, Lzipkin2/v1/V1BinaryAnnotation;

    invoke-direct {v1, p1, p2, p3}, Lzipkin2/v1/V1BinaryAnnotation;-><init>(Ljava/lang/String;Ljava/lang/String;Lzipkin2/Endpoint;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addBinaryAnnotation(Ljava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;
    .locals 3

    if-eqz p2, :cond_2

    .line 251
    sget-object v0, Lzipkin2/v1/V1Span;->EMPTY_ENDPOINT:Lzipkin2/Endpoint;

    invoke-virtual {v0, p2}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->binaryAnnotations:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lzipkin2/v1/V1Span$Builder;->binaryAnnotations:Ljava/util/ArrayList;

    .line 254
    :cond_1
    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->binaryAnnotations:Ljava/util/ArrayList;

    new-instance v1, Lzipkin2/v1/V1BinaryAnnotation;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lzipkin2/v1/V1BinaryAnnotation;-><init>(Ljava/lang/String;Ljava/lang/String;Lzipkin2/Endpoint;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object p0
.end method

.method public build()Lzipkin2/v1/V1Span;
    .locals 1

    .line 279
    new-instance v0, Lzipkin2/v1/V1Span;

    invoke-direct {v0, p0}, Lzipkin2/v1/V1Span;-><init>(Lzipkin2/v1/V1Span$Builder;)V

    return-object v0
.end method

.method public clear()Lzipkin2/v1/V1Span$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    .line 166
    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->id:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->traceIdHigh:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->traceId:J

    const/4 v2, 0x0

    .line 167
    iput-object v2, p0, Lzipkin2/v1/V1Span$Builder;->name:Ljava/lang/String;

    .line 168
    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->duration:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->timestamp:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->parentId:J

    .line 169
    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->annotations:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 170
    :cond_0
    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->binaryAnnotations:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 171
    :cond_1
    iput-object v2, p0, Lzipkin2/v1/V1Span$Builder;->debug:Ljava/lang/Boolean;

    return-object p0
.end method

.method public debug(Ljava/lang/Boolean;)Lzipkin2/v1/V1Span$Builder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 274
    iput-object p1, p0, Lzipkin2/v1/V1Span$Builder;->debug:Ljava/lang/Boolean;

    return-object p0
.end method

.method public duration(J)Lzipkin2/v1/V1Span$Builder;
    .locals 0

    .line 236
    iput-wide p1, p0, Lzipkin2/v1/V1Span$Builder;->duration:J

    return-object p0
.end method

.method public id()J
    .locals 2

    .line 152
    iget-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->id:J

    return-wide v0
.end method

.method public id(J)Lzipkin2/v1/V1Span$Builder;
    .locals 0

    .line 199
    iput-wide p1, p0, Lzipkin2/v1/V1Span$Builder;->id:J

    return-object p0
.end method

.method public id(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;
    .locals 2

    const-string v0, "id == null"

    .line 205
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    invoke-static {p1}, Lzipkin2/internal/HexCodec;->lowerHexToUnsignedLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->id:J

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;
    .locals 1

    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lzipkin2/v1/V1Span$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public parentId(J)Lzipkin2/v1/V1Span$Builder;
    .locals 0

    .line 218
    iput-wide p1, p0, Lzipkin2/v1/V1Span$Builder;->parentId:J

    return-object p0
.end method

.method public parentId(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 212
    invoke-static {p1}, Lzipkin2/internal/HexCodec;->lowerHexToUnsignedLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->parentId:J

    return-object p0
.end method

.method public timestamp(J)Lzipkin2/v1/V1Span$Builder;
    .locals 0

    .line 230
    iput-wide p1, p0, Lzipkin2/v1/V1Span$Builder;->timestamp:J

    return-object p0
.end method

.method public traceId()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->traceId:J

    return-wide v0
.end method

.method public traceId(J)Lzipkin2/v1/V1Span$Builder;
    .locals 0

    .line 187
    iput-wide p1, p0, Lzipkin2/v1/V1Span$Builder;->traceId:J

    return-object p0
.end method

.method public traceId(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;
    .locals 2

    const-string v0, "traceId == null"

    .line 177
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 179
    invoke-static {p1, v0}, Lzipkin2/internal/HexCodec;->lowerHexToUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->traceIdHigh:J

    .line 181
    :cond_0
    invoke-static {p1}, Lzipkin2/internal/HexCodec;->lowerHexToUnsignedLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->traceId:J

    return-object p0
.end method

.method public traceIdHigh()J
    .locals 2

    .line 142
    iget-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->traceIdHigh:J

    return-wide v0
.end method

.method public traceIdHigh(J)Lzipkin2/v1/V1Span$Builder;
    .locals 0

    .line 193
    iput-wide p1, p0, Lzipkin2/v1/V1Span$Builder;->traceIdHigh:J

    return-object p0
.end method
