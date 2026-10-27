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

    .line 163
    return-void
.end method


# virtual methods
.method public addAnnotation(JLjava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;
    .locals 2
    .param p1, "timestamp"    # J
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "endpoint"    # Lzipkin2/Endpoint;
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

    .line 245
    return-object p0
.end method

.method public addBinaryAnnotation(Ljava/lang/String;Ljava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "endpoint"    # Lzipkin2/Endpoint;

    .line 265
    if-eqz p2, :cond_2

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

    .line 269
    return-object p0

    .line 265
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addBinaryAnnotation(Ljava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "endpoint"    # Lzipkin2/Endpoint;

    .line 251
    if-eqz p2, :cond_2

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

    .line 255
    return-object p0

    .line 251
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

    .line 166
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->id:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->traceIdHigh:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->traceId:J

    .line 167
    const/4 v2, 0x0

    iput-object v2, p0, Lzipkin2/v1/V1Span$Builder;->name:Ljava/lang/String;

    .line 168
    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->duration:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->timestamp:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->parentId:J

    .line 169
    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->annotations:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 170
    :cond_0
    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->binaryAnnotations:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->binaryAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 171
    :cond_1
    iput-object v2, p0, Lzipkin2/v1/V1Span$Builder;->debug:Ljava/lang/Boolean;

    .line 172
    return-object p0
.end method

.method public debug(Ljava/lang/Boolean;)Lzipkin2/v1/V1Span$Builder;
    .locals 0
    .param p1, "debug"    # Ljava/lang/Boolean;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 274
    iput-object p1, p0, Lzipkin2/v1/V1Span$Builder;->debug:Ljava/lang/Boolean;

    .line 275
    return-object p0
.end method

.method public duration(J)Lzipkin2/v1/V1Span$Builder;
    .locals 0
    .param p1, "duration"    # J

    .line 236
    iput-wide p1, p0, Lzipkin2/v1/V1Span$Builder;->duration:J

    .line 237
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
    .param p1, "id"    # J

    .line 199
    iput-wide p1, p0, Lzipkin2/v1/V1Span$Builder;->id:J

    .line 200
    return-object p0
.end method

.method public id(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 205
    if-eqz p1, :cond_0

    .line 206
    invoke-static {p1}, Lzipkin2/internal/HexCodec;->lowerHexToUnsignedLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->id:J

    .line 207
    return-object p0

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "id == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public name(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 224
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lzipkin2/v1/V1Span$Builder;->name:Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public parentId(J)Lzipkin2/v1/V1Span$Builder;
    .locals 0
    .param p1, "parentId"    # J

    .line 218
    iput-wide p1, p0, Lzipkin2/v1/V1Span$Builder;->parentId:J

    .line 219
    return-object p0
.end method

.method public parentId(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;

    .line 212
    if-eqz p1, :cond_0

    invoke-static {p1}, Lzipkin2/internal/HexCodec;->lowerHexToUnsignedLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->parentId:J

    .line 213
    return-object p0
.end method

.method public timestamp(J)Lzipkin2/v1/V1Span$Builder;
    .locals 0
    .param p1, "timestamp"    # J

    .line 230
    iput-wide p1, p0, Lzipkin2/v1/V1Span$Builder;->timestamp:J

    .line 231
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
    .param p1, "traceId"    # J

    .line 187
    iput-wide p1, p0, Lzipkin2/v1/V1Span$Builder;->traceId:J

    .line 188
    return-object p0
.end method

.method public traceId(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;
    .locals 2
    .param p1, "traceId"    # Ljava/lang/String;

    .line 177
    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 179
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lzipkin2/internal/HexCodec;->lowerHexToUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->traceIdHigh:J

    .line 181
    :cond_0
    invoke-static {p1}, Lzipkin2/internal/HexCodec;->lowerHexToUnsignedLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->traceId:J

    .line 182
    return-object p0

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "traceId == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public traceIdHigh()J
    .locals 2

    .line 142
    iget-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->traceIdHigh:J

    return-wide v0
.end method

.method public traceIdHigh(J)Lzipkin2/v1/V1Span$Builder;
    .locals 0
    .param p1, "traceIdHigh"    # J

    .line 193
    iput-wide p1, p0, Lzipkin2/v1/V1Span$Builder;->traceIdHigh:J

    .line 194
    return-object p0
.end method
