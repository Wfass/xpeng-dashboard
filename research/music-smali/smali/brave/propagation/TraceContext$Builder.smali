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
.field static final synthetic h:Z


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field e:J

.field f:I

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 249
    const-class v0, Lbrave/propagation/TraceContext;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lbrave/propagation/TraceContext$Builder;->h:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/TraceContext$Builder;->g:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lbrave/propagation/TraceContext;)V
    .locals 2

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/TraceContext$Builder;->g:Ljava/util/List;

    .line 256
    iget-wide v0, p1, Lbrave/propagation/TraceContext;->k:J

    iput-wide v0, p0, Lbrave/propagation/TraceContext$Builder;->a:J

    .line 257
    iget-wide v0, p1, Lbrave/propagation/TraceContext;->l:J

    iput-wide v0, p0, Lbrave/propagation/TraceContext$Builder;->b:J

    .line 258
    iget-wide v0, p1, Lbrave/propagation/TraceContext;->m:J

    iput-wide v0, p0, Lbrave/propagation/TraceContext$Builder;->e:J

    .line 259
    iget-wide v0, p1, Lbrave/propagation/TraceContext;->n:J

    iput-wide v0, p0, Lbrave/propagation/TraceContext$Builder;->c:J

    .line 260
    iget-wide v0, p1, Lbrave/propagation/TraceContext;->o:J

    iput-wide v0, p0, Lbrave/propagation/TraceContext$Builder;->d:J

    .line 261
    iget v0, p1, Lbrave/propagation/TraceContext;->a:I

    iput v0, p0, Lbrave/propagation/TraceContext$Builder;->f:I

    .line 262
    iget-object p1, p1, Lbrave/propagation/TraceContext;->p:Ljava/util/List;

    iput-object p1, p0, Lbrave/propagation/TraceContext$Builder;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 3

    .line 439
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    const-string v1, "{0} is not a lower-hex string"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method final a(Lbrave/propagation/Propagation$Getter;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
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
    invoke-interface {p1, p2, p3}, Lbrave/propagation/Propagation$Getter;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 397
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    .line 398
    invoke-virtual {p0, p3, v0, v1}, Lbrave/propagation/TraceContext$Builder;->a(Ljava/lang/Object;II)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    return v1

    .line 400
    :cond_1
    invoke-static {p1, v1, v0}, Lbrave/internal/HexCodec;->lenientLowerHexToUnsignedLong(Ljava/lang/CharSequence;II)J

    move-result-wide v2

    iput-wide v2, p0, Lbrave/propagation/TraceContext$Builder;->c:J

    .line 401
    iget-wide v2, p0, Lbrave/propagation/TraceContext$Builder;->c:J

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-eqz p3, :cond_2

    return p2

    .line 402
    :cond_2
    invoke-virtual {p0, p1}, Lbrave/propagation/TraceContext$Builder;->a(Ljava/lang/String;)V

    return v1
.end method

.method a(Ljava/lang/Object;II)Z
    .locals 2

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    if-gt p2, p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 424
    :cond_0
    sget-boolean p2, Lbrave/propagation/TraceContext$Builder;->h:Z

    const/16 v1, 0x20

    if-nez p2, :cond_2

    if-eq p3, v1, :cond_2

    const/16 p2, 0x10

    if-ne p3, p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 425
    :cond_2
    :goto_0
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object p2

    if-ne p3, v1, :cond_3

    const-string p3, "{0} should be a 1 to 32 character lower-hex string with no prefix"

    goto :goto_1

    :cond_3
    const-string p3, "{0} should be a 1 to 16 character lower-hex string with no prefix"

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p2, p3, p1, v1}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return v0
.end method

.method a(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 434
    :cond_0
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "{0} was null"

    invoke-virtual {p2, v1, p1, v0}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method final a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6

    .line 370
    invoke-virtual {p0, p2, p1}, Lbrave/propagation/TraceContext$Builder;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 371
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x20

    .line 372
    invoke-virtual {p0, p2, v0, v2}, Lbrave/propagation/TraceContext$Builder;->a(Ljava/lang/Object;II)Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, v0, -0x10

    .line 375
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const-wide/16 v2, 0x0

    if-lez p2, :cond_2

    .line 377
    invoke-static {p1, v1, p2}, Lbrave/internal/HexCodec;->lenientLowerHexToUnsignedLong(Ljava/lang/CharSequence;II)J

    move-result-wide v4

    iput-wide v4, p0, Lbrave/propagation/TraceContext$Builder;->a:J

    .line 378
    iget-wide v4, p0, Lbrave/propagation/TraceContext$Builder;->a:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    .line 379
    invoke-virtual {p0, p1}, Lbrave/propagation/TraceContext$Builder;->a(Ljava/lang/String;)V

    return v1

    .line 385
    :cond_2
    invoke-static {p1, p2, v0}, Lbrave/internal/HexCodec;->lenientLowerHexToUnsignedLong(Ljava/lang/CharSequence;II)J

    move-result-wide v4

    iput-wide v4, p0, Lbrave/propagation/TraceContext$Builder;->b:J

    .line 386
    iget-wide v4, p0, Lbrave/propagation/TraceContext$Builder;->b:J

    cmp-long p2, v4, v2

    if-nez p2, :cond_3

    .line 387
    invoke-virtual {p0, p1}, Lbrave/propagation/TraceContext$Builder;->a(Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method final b(Lbrave/propagation/Propagation$Getter;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
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
    invoke-interface {p1, p2, p3}, Lbrave/propagation/Propagation$Getter;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 409
    invoke-virtual {p0, p3, p1}, Lbrave/propagation/TraceContext$Builder;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    .line 410
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v1, 0x10

    .line 411
    invoke-virtual {p0, p3, p2, v1}, Lbrave/propagation/TraceContext$Builder;->a(Ljava/lang/Object;II)Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    .line 413
    :cond_1
    invoke-static {p1, v0, p2}, Lbrave/internal/HexCodec;->lenientLowerHexToUnsignedLong(Ljava/lang/CharSequence;II)J

    move-result-wide p2

    iput-wide p2, p0, Lbrave/propagation/TraceContext$Builder;->d:J

    .line 414
    iget-wide p2, p0, Lbrave/propagation/TraceContext$Builder;->d:J

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-nez p2, :cond_2

    .line 415
    invoke-virtual {p0, p1}, Lbrave/propagation/TraceContext$Builder;->a(Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final build()Lbrave/propagation/TraceContext;
    .locals 15

    .line 444
    iget-wide v0, p0, Lbrave/propagation/TraceContext$Builder;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, ""

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " traceId"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 445
    :goto_0
    iget-wide v4, p0, Lbrave/propagation/TraceContext$Builder;->d:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " spanId"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 447
    new-instance v0, Lbrave/propagation/TraceContext;

    iget v3, p0, Lbrave/propagation/TraceContext$Builder;->f:I

    iget-wide v4, p0, Lbrave/propagation/TraceContext$Builder;->a:J

    iget-wide v6, p0, Lbrave/propagation/TraceContext$Builder;->b:J

    iget-wide v8, p0, Lbrave/propagation/TraceContext$Builder;->e:J

    iget-wide v10, p0, Lbrave/propagation/TraceContext$Builder;->c:J

    iget-wide v12, p0, Lbrave/propagation/TraceContext$Builder;->d:J

    iget-object v1, p0, Lbrave/propagation/TraceContext$Builder;->g:Ljava/util/List;

    .line 448
    invoke-static {v1}, Lbrave/internal/Lists;->ensureImmutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lbrave/propagation/TraceContext;-><init>(IJJJJJLjava/util/List;)V

    return-object v0

    .line 446
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public debug(Z)Lbrave/propagation/TraceContext$Builder;
    .locals 1

    .line 323
    iget v0, p0, Lbrave/propagation/TraceContext$Builder;->f:I

    invoke-static {p1, v0}, Lbrave/propagation/SamplingFlags;->a(ZI)I

    move-result p1

    iput p1, p0, Lbrave/propagation/TraceContext$Builder;->f:I

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
    iput-object p1, p0, Lbrave/propagation/TraceContext$Builder;->g:Ljava/util/List;

    return-object p0
.end method

.method public parentId(J)Lbrave/propagation/TraceContext$Builder;
    .locals 0

    .line 279
    iput-wide p1, p0, Lbrave/propagation/TraceContext$Builder;->c:J

    return-object p0
.end method

.method public parentId(Ljava/lang/Long;)Lbrave/propagation/TraceContext$Builder;
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 285
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 286
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lbrave/propagation/TraceContext$Builder;->c:J

    return-object p0
.end method

.method public sampled(Ljava/lang/Boolean;)Lbrave/propagation/TraceContext$Builder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 315
    iget p1, p0, Lbrave/propagation/TraceContext$Builder;->f:I

    and-int/lit8 p1, p1, -0x7

    iput p1, p0, Lbrave/propagation/TraceContext$Builder;->f:I

    return-object p0

    .line 318
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lbrave/propagation/TraceContext$Builder;->sampled(Z)Lbrave/propagation/TraceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public sampled(Z)Lbrave/propagation/TraceContext$Builder;
    .locals 1

    .line 308
    iget v0, p0, Lbrave/propagation/TraceContext$Builder;->f:I

    invoke-static {p1, v0}, Lbrave/internal/InternalPropagation;->sampled(ZI)I

    move-result p1

    iput p1, p0, Lbrave/propagation/TraceContext$Builder;->f:I

    return-object p0
.end method

.method public sampledLocal(Z)Lbrave/propagation/TraceContext$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 299
    iget p1, p0, Lbrave/propagation/TraceContext$Builder;->f:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lbrave/propagation/TraceContext$Builder;->f:I

    goto :goto_0

    .line 301
    :cond_0
    iget p1, p0, Lbrave/propagation/TraceContext$Builder;->f:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lbrave/propagation/TraceContext$Builder;->f:I

    :goto_0
    return-object p0
.end method

.method public shared(Z)Lbrave/propagation/TraceContext$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 330
    iget p1, p0, Lbrave/propagation/TraceContext$Builder;->f:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lbrave/propagation/TraceContext$Builder;->f:I

    goto :goto_0

    .line 332
    :cond_0
    iget p1, p0, Lbrave/propagation/TraceContext$Builder;->f:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lbrave/propagation/TraceContext$Builder;->f:I

    :goto_0
    return-object p0
.end method

.method public spanId(J)Lbrave/propagation/TraceContext$Builder;
    .locals 0

    .line 292
    iput-wide p1, p0, Lbrave/propagation/TraceContext$Builder;->d:J

    return-object p0
.end method

.method public traceId(J)Lbrave/propagation/TraceContext$Builder;
    .locals 0

    .line 273
    iput-wide p1, p0, Lbrave/propagation/TraceContext$Builder;->b:J

    return-object p0
.end method

.method public traceIdHigh(J)Lbrave/propagation/TraceContext$Builder;
    .locals 0

    .line 267
    iput-wide p1, p0, Lbrave/propagation/TraceContext$Builder;->a:J

    return-object p0
.end method
