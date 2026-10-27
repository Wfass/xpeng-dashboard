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
.field a:J

.field b:J

.field c:J

.field d:J

.field e:Ljava/lang/String;

.field f:J

.field g:J

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lzipkin2/v1/V1Annotation;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lzipkin2/v1/V1BinaryAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/lang/Boolean;


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
    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lzipkin2/v1/V1Span$Builder;->h:Ljava/util/ArrayList;

    .line 243
    :cond_0
    sget-object v0, Lzipkin2/v1/V1Span;->a:Lzipkin2/Endpoint;

    invoke-virtual {v0, p4}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p4, 0x0

    .line 244
    :cond_1
    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->h:Ljava/util/ArrayList;

    new-instance v1, Lzipkin2/v1/V1Annotation;

    invoke-direct {v1, p1, p2, p3, p4}, Lzipkin2/v1/V1Annotation;-><init>(JLjava/lang/String;Lzipkin2/Endpoint;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addBinaryAnnotation(Ljava/lang/String;Ljava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;
    .locals 2

    if-eqz p2, :cond_2

    .line 266
    sget-object v0, Lzipkin2/v1/V1Span;->a:Lzipkin2/Endpoint;

    invoke-virtual {v0, p3}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    .line 267
    :cond_0
    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lzipkin2/v1/V1Span$Builder;->i:Ljava/util/ArrayList;

    .line 268
    :cond_1
    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->i:Ljava/util/ArrayList;

    new-instance v1, Lzipkin2/v1/V1BinaryAnnotation;

    invoke-direct {v1, p1, p2, p3}, Lzipkin2/v1/V1BinaryAnnotation;-><init>(Ljava/lang/String;Ljava/lang/String;Lzipkin2/Endpoint;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 265
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addBinaryAnnotation(Ljava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;
    .locals 3

    if-eqz p2, :cond_2

    .line 251
    sget-object v0, Lzipkin2/v1/V1Span;->a:Lzipkin2/Endpoint;

    invoke-virtual {v0, p2}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lzipkin2/v1/V1Span$Builder;->i:Ljava/util/ArrayList;

    .line 254
    :cond_1
    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->i:Ljava/util/ArrayList;

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
    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->d:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->a:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->b:J

    const/4 v2, 0x0

    .line 167
    iput-object v2, p0, Lzipkin2/v1/V1Span$Builder;->e:Ljava/lang/String;

    .line 168
    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->g:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->f:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->c:J

    .line 169
    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 170
    :cond_0
    iget-object v0, p0, Lzipkin2/v1/V1Span$Builder;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 171
    :cond_1
    iput-object v2, p0, Lzipkin2/v1/V1Span$Builder;->j:Ljava/lang/Boolean;

    return-object p0
.end method

.method public debug(Ljava/lang/Boolean;)Lzipkin2/v1/V1Span$Builder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 274
    iput-object p1, p0, Lzipkin2/v1/V1Span$Builder;->j:Ljava/lang/Boolean;

    return-object p0
.end method

.method public duration(J)Lzipkin2/v1/V1Span$Builder;
    .locals 0

    .line 236
    iput-wide p1, p0, Lzipkin2/v1/V1Span$Builder;->g:J

    return-object p0
.end method

.method public id()J
    .locals 2

    .line 152
    iget-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->d:J

    return-wide v0
.end method

.method public id(J)Lzipkin2/v1/V1Span$Builder;
    .locals 0

    .line 199
    iput-wide p1, p0, Lzipkin2/v1/V1Span$Builder;->d:J

    return-object p0
.end method

.method public id(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 206
    invoke-static {p1}, Lzipkin2/internal/HexCodec;->lowerHexToUnsignedLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->d:J

    return-object p0

    .line 205
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "id == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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
    iput-object p1, p0, Lzipkin2/v1/V1Span$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public parentId(J)Lzipkin2/v1/V1Span$Builder;
    .locals 0

    .line 218
    iput-wide p1, p0, Lzipkin2/v1/V1Span$Builder;->c:J

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
    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->c:J

    return-object p0
.end method

.method public timestamp(J)Lzipkin2/v1/V1Span$Builder;
    .locals 0

    .line 230
    iput-wide p1, p0, Lzipkin2/v1/V1Span$Builder;->f:J

    return-object p0
.end method

.method public traceId()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->b:J

    return-wide v0
.end method

.method public traceId(J)Lzipkin2/v1/V1Span$Builder;
    .locals 0

    .line 187
    iput-wide p1, p0, Lzipkin2/v1/V1Span$Builder;->b:J

    return-object p0
.end method

.method public traceId(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;
    .locals 2

    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 179
    invoke-static {p1, v0}, Lzipkin2/internal/HexCodec;->lowerHexToUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->a:J

    .line 181
    :cond_0
    invoke-static {p1}, Lzipkin2/internal/HexCodec;->lowerHexToUnsignedLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->b:J

    return-object p0

    .line 177
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "traceId == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public traceIdHigh()J
    .locals 2

    .line 142
    iget-wide v0, p0, Lzipkin2/v1/V1Span$Builder;->a:J

    return-wide v0
.end method

.method public traceIdHigh(J)Lzipkin2/v1/V1Span$Builder;
    .locals 0

    .line 193
    iput-wide p1, p0, Lzipkin2/v1/V1Span$Builder;->a:J

    return-object p0
.end method
