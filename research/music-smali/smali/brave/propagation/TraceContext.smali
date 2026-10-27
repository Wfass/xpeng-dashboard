.class public final Lbrave/propagation/TraceContext;
.super Lbrave/propagation/SamplingFlags;
.source "TraceContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/propagation/TraceContext$Builder;,
        Lbrave/propagation/TraceContext$Extractor;,
        Lbrave/propagation/TraceContext$Injector;
    }
.end annotation


# instance fields
.field volatile g:Ljava/lang/String;

.field volatile h:Ljava/lang/String;

.field volatile i:Ljava/lang/String;

.field volatile j:Ljava/lang/String;

.field final k:J

.field final l:J

.field final m:J

.field final n:J

.field final o:J

.field final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile q:I


# direct methods
.method constructor <init>(IJJJJJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJJJ",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 476
    invoke-direct {p0, p1}, Lbrave/propagation/SamplingFlags;-><init>(I)V

    .line 477
    iput-wide p2, p0, Lbrave/propagation/TraceContext;->k:J

    .line 478
    iput-wide p4, p0, Lbrave/propagation/TraceContext;->l:J

    .line 479
    iput-wide p6, p0, Lbrave/propagation/TraceContext;->m:J

    .line 480
    iput-wide p8, p0, Lbrave/propagation/TraceContext;->n:J

    .line 481
    iput-wide p10, p0, Lbrave/propagation/TraceContext;->o:J

    .line 482
    iput-object p12, p0, Lbrave/propagation/TraceContext;->p:Ljava/util/List;

    return-void
.end method

.method static a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 531
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 532
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 533
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 530
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "type == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newBuilder()Lbrave/propagation/TraceContext$Builder;
    .locals 1

    .line 72
    new-instance v0, Lbrave/propagation/TraceContext$Builder;

    invoke-direct {v0}, Lbrave/propagation/TraceContext$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method a(Ljava/util/List;)Lbrave/propagation/TraceContext;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lbrave/propagation/TraceContext;"
        }
    .end annotation

    .line 457
    new-instance v13, Lbrave/propagation/TraceContext;

    iget v1, p0, Lbrave/propagation/TraceContext;->a:I

    iget-wide v2, p0, Lbrave/propagation/TraceContext;->k:J

    iget-wide v4, p0, Lbrave/propagation/TraceContext;->l:J

    iget-wide v6, p0, Lbrave/propagation/TraceContext;->m:J

    iget-wide v8, p0, Lbrave/propagation/TraceContext;->n:J

    iget-wide v10, p0, Lbrave/propagation/TraceContext;->o:J

    move-object v0, v13

    move-object v12, p1

    invoke-direct/range {v0 .. v12}, Lbrave/propagation/TraceContext;-><init>(IJJJJJLjava/util/List;)V

    return-object v13
.end method

.method c(I)Lbrave/propagation/TraceContext;
    .locals 14

    .line 461
    new-instance v13, Lbrave/propagation/TraceContext;

    iget-wide v2, p0, Lbrave/propagation/TraceContext;->k:J

    iget-wide v4, p0, Lbrave/propagation/TraceContext;->l:J

    iget-wide v6, p0, Lbrave/propagation/TraceContext;->m:J

    iget-wide v8, p0, Lbrave/propagation/TraceContext;->n:J

    iget-wide v10, p0, Lbrave/propagation/TraceContext;->o:J

    iget-object v12, p0, Lbrave/propagation/TraceContext;->p:Ljava/util/List;

    move-object v0, v13

    move v1, p1

    invoke-direct/range {v0 .. v12}, Lbrave/propagation/TraceContext;-><init>(IJJJJJLjava/util/List;)V

    return-object v13
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 494
    :cond_0
    instance-of v1, p1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    .line 495
    :cond_1
    instance-of v1, p1, Lbrave/propagation/TraceContext;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 496
    :cond_2
    check-cast p1, Lbrave/propagation/TraceContext;

    .line 497
    iget-wide v3, p0, Lbrave/propagation/TraceContext;->k:J

    iget-wide v5, p1, Lbrave/propagation/TraceContext;->k:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-wide v3, p0, Lbrave/propagation/TraceContext;->l:J

    iget-wide v5, p1, Lbrave/propagation/TraceContext;->l:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-wide v3, p0, Lbrave/propagation/TraceContext;->o:J

    iget-wide v5, p1, Lbrave/propagation/TraceContext;->o:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget v1, p0, Lbrave/propagation/TraceContext;->a:I

    and-int/lit8 v1, v1, 0x10

    iget p1, p1, Lbrave/propagation/TraceContext;->a:I

    and-int/lit8 p1, p1, 0x10

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public extra()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lbrave/propagation/TraceContext;->p:Ljava/util/List;

    return-object v0
.end method

.method public findExtra(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lbrave/propagation/TraceContext;->p:Ljava/util/List;

    invoke-static {p1, v0}, Lbrave/propagation/TraceContext;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 7

    .line 514
    iget v0, p0, Lbrave/propagation/TraceContext;->q:I

    if-nez v0, :cond_0

    .line 517
    iget-wide v0, p0, Lbrave/propagation/TraceContext;->k:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 519
    iget-wide v3, p0, Lbrave/propagation/TraceContext;->l:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    .line 521
    iget-wide v3, p0, Lbrave/propagation/TraceContext;->o:J

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 523
    iget v1, p0, Lbrave/propagation/TraceContext;->a:I

    and-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    .line 524
    iput v0, p0, Lbrave/propagation/TraceContext;->q:I

    :cond_0
    return v0
.end method

.method public isLocalRoot()Z
    .locals 2

    .line 108
    iget v0, p0, Lbrave/propagation/TraceContext;->a:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public localRootId()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lbrave/propagation/TraceContext;->m:J

    return-wide v0
.end method

.method public localRootIdString()Ljava/lang/String;
    .locals 5
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 215
    iget-object v0, p0, Lbrave/propagation/TraceContext;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 216
    iget-wide v1, p0, Lbrave/propagation/TraceContext;->m:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 217
    invoke-static {v1, v2}, Lbrave/internal/HexCodec;->toLowerHex(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/TraceContext;->i:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final parentId()Ljava/lang/Long;
    .locals 4
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 117
    iget-wide v0, p0, Lbrave/propagation/TraceContext;->n:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public parentIdAsLong()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lbrave/propagation/TraceContext;->n:J

    return-wide v0
.end method

.method public parentIdString()Ljava/lang/String;
    .locals 5
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 204
    iget-object v0, p0, Lbrave/propagation/TraceContext;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 205
    iget-wide v1, p0, Lbrave/propagation/TraceContext;->n:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 206
    invoke-static {v1, v2}, Lbrave/internal/HexCodec;->toLowerHex(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/TraceContext;->h:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public shared()Z
    .locals 2

    .line 149
    iget v0, p0, Lbrave/propagation/TraceContext;->a:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public spanId()J
    .locals 2

    .line 135
    iget-wide v0, p0, Lbrave/propagation/TraceContext;->o:J

    return-wide v0
.end method

.method public spanIdString()Ljava/lang/String;
    .locals 2

    .line 226
    iget-object v0, p0, Lbrave/propagation/TraceContext;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 228
    iget-wide v0, p0, Lbrave/propagation/TraceContext;->o:J

    invoke-static {v0, v1}, Lbrave/internal/HexCodec;->toLowerHex(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/TraceContext;->j:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public toBuilder()Lbrave/propagation/TraceContext$Builder;
    .locals 1

    .line 178
    new-instance v0, Lbrave/propagation/TraceContext$Builder;

    invoke-direct {v0, p0}, Lbrave/propagation/TraceContext$Builder;-><init>(Lbrave/propagation/TraceContext;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 235
    iget-wide v0, p0, Lbrave/propagation/TraceContext;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    const/16 v4, 0x10

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 236
    new-array v2, v3, [C

    if-eqz v0, :cond_2

    .line 239
    iget-wide v5, p0, Lbrave/propagation/TraceContext;->k:J

    invoke-static {v2, v1, v5, v6}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    move v1, v4

    .line 242
    :cond_2
    iget-wide v5, p0, Lbrave/propagation/TraceContext;->l:J

    invoke-static {v2, v1, v5, v6}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    add-int/2addr v1, v4

    add-int/lit8 v0, v1, 0x1

    const/16 v3, 0x2f

    .line 244
    aput-char v3, v2, v1

    .line 245
    iget-wide v3, p0, Lbrave/propagation/TraceContext;->o:J

    invoke-static {v2, v0, v3, v4}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    .line 246
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public traceId()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lbrave/propagation/TraceContext;->l:J

    return-wide v0
.end method

.method public traceIdHigh()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lbrave/propagation/TraceContext;->k:J

    return-wide v0
.end method

.method public traceIdString()Ljava/lang/String;
    .locals 5

    .line 185
    iget-object v0, p0, Lbrave/propagation/TraceContext;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 187
    iget-wide v0, p0, Lbrave/propagation/TraceContext;->k:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    .line 188
    new-array v2, v2, [C

    const/4 v3, 0x0

    .line 189
    invoke-static {v2, v3, v0, v1}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    const/16 v0, 0x10

    .line 190
    iget-wide v3, p0, Lbrave/propagation/TraceContext;->l:J

    invoke-static {v2, v0, v3, v4}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    .line 191
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 193
    :cond_0
    iget-wide v0, p0, Lbrave/propagation/TraceContext;->l:J

    invoke-static {v0, v1}, Lbrave/internal/HexCodec;->toLowerHex(J)Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_0
    iput-object v0, p0, Lbrave/propagation/TraceContext;->g:Ljava/lang/String;

    :cond_1
    return-object v0
.end method
