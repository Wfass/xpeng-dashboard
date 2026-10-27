.class public final Lbrave/propagation/TraceContext$Builder;
.super Ljava/lang/Object;
.source "TraceContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/TraceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field extra:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field flags:I

.field localRootId:J

.field parentId:J

.field spanId:J

.field traceId:J

.field traceIdHigh:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 249
    const-class v0, Lbrave/propagation/TraceContext;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/TraceContext$Builder;->extra:Ljava/util/List;

    .line 453
    return-void
.end method

.method constructor <init>(Lbrave/propagation/TraceContext;)V
    .locals 2
    .param p1, "context"    # Lbrave/propagation/TraceContext;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/TraceContext$Builder;->extra:Ljava/util/List;

    .line 256
    iget-wide v0, p1, Lbrave/propagation/TraceContext;->traceIdHigh:J

    iput-wide v0, p0, Lbrave/propagation/TraceContext$Builder;->traceIdHigh:J

    .line 257
    iget-wide v0, p1, Lbrave/propagation/TraceContext;->traceId:J

    iput-wide v0, p0, Lbrave/propagation/TraceContext$Builder;->traceId:J

    .line 258
    iget-wide v0, p1, Lbrave/propagation/TraceContext;->localRootId:J

    iput-wide v0, p0, Lbrave/propagation/TraceContext$Builder;->localRootId:J

    .line 259
    iget-wide v0, p1, Lbrave/propagation/TraceContext;->parentId:J

    iput-wide v0, p0, Lbrave/propagation/TraceContext$Builder;->parentId:J

    .line 260
    iget-wide v0, p1, Lbrave/propagation/TraceContext;->spanId:J

    iput-wide v0, p0, Lbrave/propagation/TraceContext$Builder;->spanId:J

    .line 261
    iget v0, p1, Lbrave/propagation/TraceContext;->flags:I

    iput v0, p0, Lbrave/propagation/TraceContext$Builder;->flags:I

    .line 262
    iget-object v0, p1, Lbrave/propagation/TraceContext;->extra:Ljava/util/List;

    iput-object v0, p0, Lbrave/propagation/TraceContext$Builder;->extra:Ljava/util/List;

    .line 263
    return-void
.end method


# virtual methods
.method public final build()Lbrave/propagation/TraceContext;
    .locals 15

    .line 443
    const-string v0, ""

    .line 444
    .local v0, "missing":Ljava/lang/String;
    iget-wide v1, p0, Lbrave/propagation/TraceContext$Builder;->traceId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " traceId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    :cond_0
    iget-wide v1, p0, Lbrave/propagation/TraceContext$Builder;->spanId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " spanId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    :cond_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 447
    new-instance v1, Lbrave/propagation/TraceContext;

    iget v3, p0, Lbrave/propagation/TraceContext$Builder;->flags:I

    iget-wide v4, p0, Lbrave/propagation/TraceContext$Builder;->traceIdHigh:J

    iget-wide v6, p0, Lbrave/propagation/TraceContext$Builder;->traceId:J

    iget-wide v8, p0, Lbrave/propagation/TraceContext$Builder;->localRootId:J

    iget-wide v10, p0, Lbrave/propagation/TraceContext$Builder;->parentId:J

    iget-wide v12, p0, Lbrave/propagation/TraceContext$Builder;->spanId:J

    iget-object v2, p0, Lbrave/propagation/TraceContext$Builder;->extra:Ljava/util/List;

    .line 448
    invoke-static {v2}, Lbrave/internal/Lists;->ensureImmutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    move-object v2, v1

    invoke-direct/range {v2 .. v14}, Lbrave/propagation/TraceContext;-><init>(IJJJJJLjava/util/List;)V

    .line 447
    return-object v1

    .line 446
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public debug(Z)Lbrave/propagation/TraceContext$Builder;
    .locals 1
    .param p1, "debug"    # Z

    .line 323
    iget v0, p0, Lbrave/propagation/TraceContext$Builder;->flags:I

    invoke-static {p1, v0}, Lbrave/propagation/SamplingFlags;->debug(ZI)I

    move-result v0

    iput v0, p0, Lbrave/propagation/TraceContext$Builder;->flags:I

    .line 324
    return-object p0
.end method

.method public final extra(Ljava/util/List;)Lbrave/propagation/TraceContext$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lbrave/propagation/TraceContext$Builder;"
        }
    .end annotation

    .line 343
    .local p1, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iput-object p1, p0, Lbrave/propagation/TraceContext$Builder;->extra:Ljava/util/List;

    .line 344
    return-object p0
.end method

.method invalidIdLength(Ljava/lang/Object;II)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "length"    # I
    .param p3, "max"    # I

    .line 422
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    if-gt p2, p3, :cond_0

    const/4 v0, 0x0

    return v0

    .line 424
    :cond_0
    nop

    .line 425
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v1

    const/16 v2, 0x20

    if-ne p3, v2, :cond_1

    .line 426
    const-string v2, "{0} should be a 1 to 32 character lower-hex string with no prefix"

    goto :goto_0

    .line 427
    :cond_1
    const-string v2, "{0} should be a 1 to 16 character lower-hex string with no prefix"

    :goto_0
    const/4 v3, 0x0

    .line 425
    invoke-virtual {v1, v2, p1, v3}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 429
    return v0
.end method

.method isNull(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "maybeNull"    # Ljava/lang/String;

    .line 433
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 434
    :cond_0
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    const-string v1, "{0} was null"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method maybeLogNotLowerHex(Ljava/lang/String;)V
    .locals 3
    .param p1, "notLowerHex"    # Ljava/lang/String;

    .line 439
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    const-string v1, "{0} is not a lower-hex string"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 440
    return-void
.end method

.method public parentId(J)Lbrave/propagation/TraceContext$Builder;
    .locals 0
    .param p1, "parentId"    # J

    .line 279
    iput-wide p1, p0, Lbrave/propagation/TraceContext$Builder;->parentId:J

    .line 280
    return-object p0
.end method

.method public parentId(Ljava/lang/Long;)Lbrave/propagation/TraceContext$Builder;
    .locals 2
    .param p1, "parentId"    # Ljava/lang/Long;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    .line 285
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 286
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lbrave/propagation/TraceContext$Builder;->parentId:J

    .line 287
    return-object p0
.end method

.method final parseParentId(Lbrave/propagation/Propagation$Getter;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lbrave/propagation/Propagation$Getter<",
            "TC;TK;>;TC;TK;)Z"
        }
    .end annotation

    .line 395
    .local p1, "getter":Lbrave/propagation/Propagation$Getter;, "Lbrave/propagation/Propagation$Getter<TC;TK;>;"
    .local p2, "carrier":Ljava/lang/Object;, "TC;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, p2, p3}, Lbrave/propagation/Propagation$Getter;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "parentIdString":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 397
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 398
    .local v2, "length":I
    const/16 v3, 0x10

    invoke-virtual {p0, p3, v2, v3}, Lbrave/propagation/TraceContext$Builder;->invalidIdLength(Ljava/lang/Object;II)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    return v4

    .line 400
    :cond_1
    invoke-static {v0, v4, v2}, Lbrave/internal/HexCodec;->lenientLowerHexToUnsignedLong(Ljava/lang/CharSequence;II)J

    move-result-wide v5

    iput-wide v5, p0, Lbrave/propagation/TraceContext$Builder;->parentId:J

    .line 401
    iget-wide v5, p0, Lbrave/propagation/TraceContext$Builder;->parentId:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    return v1

    .line 402
    :cond_2
    invoke-virtual {p0, v0}, Lbrave/propagation/TraceContext$Builder;->maybeLogNotLowerHex(Ljava/lang/String;)V

    .line 403
    return v4
.end method

.method final parseSpanId(Lbrave/propagation/Propagation$Getter;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lbrave/propagation/Propagation$Getter<",
            "TC;TK;>;TC;TK;)Z"
        }
    .end annotation

    .line 408
    .local p1, "getter":Lbrave/propagation/Propagation$Getter;, "Lbrave/propagation/Propagation$Getter<TC;TK;>;"
    .local p2, "carrier":Ljava/lang/Object;, "TC;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, p2, p3}, Lbrave/propagation/Propagation$Getter;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "spanIdString":Ljava/lang/String;
    invoke-virtual {p0, p3, v0}, Lbrave/propagation/TraceContext$Builder;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 410
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 411
    .local v1, "length":I
    const/16 v3, 0x10

    invoke-virtual {p0, p3, v1, v3}, Lbrave/propagation/TraceContext$Builder;->invalidIdLength(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 413
    :cond_1
    invoke-static {v0, v2, v1}, Lbrave/internal/HexCodec;->lenientLowerHexToUnsignedLong(Ljava/lang/CharSequence;II)J

    move-result-wide v3

    iput-wide v3, p0, Lbrave/propagation/TraceContext$Builder;->spanId:J

    .line 414
    iget-wide v3, p0, Lbrave/propagation/TraceContext$Builder;->spanId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 415
    invoke-virtual {p0, v0}, Lbrave/propagation/TraceContext$Builder;->maybeLogNotLowerHex(Ljava/lang/String;)V

    .line 416
    return v2

    .line 418
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method final parseTraceId(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "traceIdString"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Object;

    .line 370
    invoke-virtual {p0, p2, p1}, Lbrave/propagation/TraceContext$Builder;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 371
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 372
    .local v0, "length":I
    const/16 v2, 0x20

    invoke-virtual {p0, p2, v0, v2}, Lbrave/propagation/TraceContext$Builder;->invalidIdLength(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 375
    :cond_1
    add-int/lit8 v2, v0, -0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 376
    .local v2, "traceIdIndex":I
    const-wide/16 v3, 0x0

    if-lez v2, :cond_2

    .line 377
    invoke-static {p1, v1, v2}, Lbrave/internal/HexCodec;->lenientLowerHexToUnsignedLong(Ljava/lang/CharSequence;II)J

    move-result-wide v5

    iput-wide v5, p0, Lbrave/propagation/TraceContext$Builder;->traceIdHigh:J

    .line 378
    iget-wide v5, p0, Lbrave/propagation/TraceContext$Builder;->traceIdHigh:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_2

    .line 379
    invoke-virtual {p0, p1}, Lbrave/propagation/TraceContext$Builder;->maybeLogNotLowerHex(Ljava/lang/String;)V

    .line 380
    return v1

    .line 385
    :cond_2
    invoke-static {p1, v2, v0}, Lbrave/internal/HexCodec;->lenientLowerHexToUnsignedLong(Ljava/lang/CharSequence;II)J

    move-result-wide v5

    iput-wide v5, p0, Lbrave/propagation/TraceContext$Builder;->traceId:J

    .line 386
    iget-wide v5, p0, Lbrave/propagation/TraceContext$Builder;->traceId:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_3

    .line 387
    invoke-virtual {p0, p1}, Lbrave/propagation/TraceContext$Builder;->maybeLogNotLowerHex(Ljava/lang/String;)V

    .line 388
    return v1

    .line 390
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public sampled(Ljava/lang/Boolean;)Lbrave/propagation/TraceContext$Builder;
    .locals 1
    .param p1, "sampled"    # Ljava/lang/Boolean;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    .line 314
    if-nez p1, :cond_0

    .line 315
    iget v0, p0, Lbrave/propagation/TraceContext$Builder;->flags:I

    and-int/lit8 v0, v0, -0x7

    iput v0, p0, Lbrave/propagation/TraceContext$Builder;->flags:I

    .line 316
    return-object p0

    .line 318
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lbrave/propagation/TraceContext$Builder;->sampled(Z)Lbrave/propagation/TraceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public sampled(Z)Lbrave/propagation/TraceContext$Builder;
    .locals 1
    .param p1, "sampled"    # Z

    .line 308
    iget v0, p0, Lbrave/propagation/TraceContext$Builder;->flags:I

    invoke-static {p1, v0}, Lbrave/internal/InternalPropagation;->sampled(ZI)I

    move-result v0

    iput v0, p0, Lbrave/propagation/TraceContext$Builder;->flags:I

    .line 309
    return-object p0
.end method

.method public sampledLocal(Z)Lbrave/propagation/TraceContext$Builder;
    .locals 1
    .param p1, "sampledLocal"    # Z

    .line 298
    if-eqz p1, :cond_0

    .line 299
    iget v0, p0, Lbrave/propagation/TraceContext$Builder;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lbrave/propagation/TraceContext$Builder;->flags:I

    goto :goto_0

    .line 301
    :cond_0
    iget v0, p0, Lbrave/propagation/TraceContext$Builder;->flags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lbrave/propagation/TraceContext$Builder;->flags:I

    .line 303
    :goto_0
    return-object p0
.end method

.method public shared(Z)Lbrave/propagation/TraceContext$Builder;
    .locals 1
    .param p1, "shared"    # Z

    .line 329
    if-eqz p1, :cond_0

    .line 330
    iget v0, p0, Lbrave/propagation/TraceContext$Builder;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lbrave/propagation/TraceContext$Builder;->flags:I

    goto :goto_0

    .line 332
    :cond_0
    iget v0, p0, Lbrave/propagation/TraceContext$Builder;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lbrave/propagation/TraceContext$Builder;->flags:I

    .line 334
    :goto_0
    return-object p0
.end method

.method public spanId(J)Lbrave/propagation/TraceContext$Builder;
    .locals 0
    .param p1, "spanId"    # J

    .line 292
    iput-wide p1, p0, Lbrave/propagation/TraceContext$Builder;->spanId:J

    .line 293
    return-object p0
.end method

.method public traceId(J)Lbrave/propagation/TraceContext$Builder;
    .locals 0
    .param p1, "traceId"    # J

    .line 273
    iput-wide p1, p0, Lbrave/propagation/TraceContext$Builder;->traceId:J

    .line 274
    return-object p0
.end method

.method public traceIdHigh(J)Lbrave/propagation/TraceContext$Builder;
    .locals 0
    .param p1, "traceIdHigh"    # J

    .line 267
    iput-wide p1, p0, Lbrave/propagation/TraceContext$Builder;->traceIdHigh:J

    .line 268
    return-object p0
.end method
