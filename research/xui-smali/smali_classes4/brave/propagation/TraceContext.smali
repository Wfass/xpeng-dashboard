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
.field final extra:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile hashCode:I

.field final localRootId:J

.field volatile localRootIdString:Ljava/lang/String;

.field final parentId:J

.field volatile parentIdString:Ljava/lang/String;

.field final spanId:J

.field volatile spanIdString:Ljava/lang/String;

.field final traceId:J

.field final traceIdHigh:J

.field volatile traceIdString:Ljava/lang/String;


# direct methods
.method constructor <init>(IJJJJJLjava/util/List;)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "traceIdHigh"    # J
    .param p4, "traceId"    # J
    .param p6, "localRootId"    # J
    .param p8, "parentId"    # J
    .param p10, "spanId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJJJ",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 476
    .local p12, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lbrave/propagation/SamplingFlags;-><init>(I)V

    .line 477
    iput-wide p2, p0, Lbrave/propagation/TraceContext;->traceIdHigh:J

    .line 478
    iput-wide p4, p0, Lbrave/propagation/TraceContext;->traceId:J

    .line 479
    iput-wide p6, p0, Lbrave/propagation/TraceContext;->localRootId:J

    .line 480
    iput-wide p8, p0, Lbrave/propagation/TraceContext;->parentId:J

    .line 481
    iput-wide p10, p0, Lbrave/propagation/TraceContext;->spanId:J

    .line 482
    iput-object p12, p0, Lbrave/propagation/TraceContext;->extra:Ljava/util/List;

    .line 483
    return-void
.end method

.method static findExtra(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;
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

    .line 530
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p0, :cond_2

    .line 531
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 532
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 533
    .local v2, "nextExtra":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p0, :cond_0

    return-object v2

    .line 531
    .end local v2    # "nextExtra":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 535
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 530
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newBuilder()Lbrave/propagation/TraceContext$Builder;
    .locals 1

    .line 72
    new-instance v0, Lbrave/propagation/TraceContext$Builder;

    invoke-direct {v0}, Lbrave/propagation/TraceContext$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 492
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 494
    :cond_0
    instance-of v1, p1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    .line 495
    :cond_1
    instance-of v1, p1, Lbrave/propagation/TraceContext;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 496
    :cond_2
    move-object v1, p1

    check-cast v1, Lbrave/propagation/TraceContext;

    .line 497
    .local v1, "that":Lbrave/propagation/TraceContext;
    iget-wide v3, p0, Lbrave/propagation/TraceContext;->traceIdHigh:J

    iget-wide v5, v1, Lbrave/propagation/TraceContext;->traceIdHigh:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lbrave/propagation/TraceContext;->traceId:J

    iget-wide v5, v1, Lbrave/propagation/TraceContext;->traceId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lbrave/propagation/TraceContext;->spanId:J

    iget-wide v5, v1, Lbrave/propagation/TraceContext;->spanId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lbrave/propagation/TraceContext;->flags:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v1, Lbrave/propagation/TraceContext;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_3

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
    iget-object v0, p0, Lbrave/propagation/TraceContext;->extra:Ljava/util/List;

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
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lbrave/propagation/TraceContext;->extra:Ljava/util/List;

    invoke-static {p1, v0}, Lbrave/propagation/TraceContext;->findExtra(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .line 514
    iget v0, p0, Lbrave/propagation/TraceContext;->hashCode:I

    .line 515
    .local v0, "h":I
    if-nez v0, :cond_0

    .line 516
    const v0, 0xf4243

    .line 517
    iget-wide v1, p0, Lbrave/propagation/TraceContext;->traceIdHigh:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    iget-wide v4, p0, Lbrave/propagation/TraceContext;->traceIdHigh:J

    xor-long/2addr v1, v4

    long-to-int v1, v1

    xor-int/2addr v0, v1

    .line 518
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 519
    iget-wide v4, p0, Lbrave/propagation/TraceContext;->traceId:J

    ushr-long/2addr v4, v3

    iget-wide v6, p0, Lbrave/propagation/TraceContext;->traceId:J

    xor-long/2addr v4, v6

    long-to-int v2, v4

    xor-int/2addr v0, v2

    .line 520
    mul-int/2addr v0, v1

    .line 521
    iget-wide v4, p0, Lbrave/propagation/TraceContext;->spanId:J

    ushr-long v2, v4, v3

    iget-wide v4, p0, Lbrave/propagation/TraceContext;->spanId:J

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    .line 522
    mul-int/2addr v0, v1

    .line 523
    iget v1, p0, Lbrave/propagation/TraceContext;->flags:I

    and-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    .line 524
    iput v0, p0, Lbrave/propagation/TraceContext;->hashCode:I

    .line 526
    :cond_0
    return v0
.end method

.method public isLocalRoot()Z
    .locals 2

    .line 108
    iget v0, p0, Lbrave/propagation/TraceContext;->flags:I

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
    iget-wide v0, p0, Lbrave/propagation/TraceContext;->localRootId:J

    return-wide v0
.end method

.method public localRootIdString()Ljava/lang/String;
    .locals 5
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 215
    iget-object v0, p0, Lbrave/propagation/TraceContext;->localRootIdString:Ljava/lang/String;

    .line 216
    .local v0, "r":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-wide v1, p0, Lbrave/propagation/TraceContext;->localRootId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 217
    iget-wide v1, p0, Lbrave/propagation/TraceContext;->localRootId:J

    invoke-static {v1, v2}, Lbrave/internal/HexCodec;->toLowerHex(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbrave/propagation/TraceContext;->localRootIdString:Ljava/lang/String;

    move-object v0, v1

    .line 219
    :cond_0
    return-object v0
.end method

.method public final parentId()Ljava/lang/Long;
    .locals 4
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 117
    iget-wide v0, p0, Lbrave/propagation/TraceContext;->parentId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lbrave/propagation/TraceContext;->parentId:J

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
    iget-wide v0, p0, Lbrave/propagation/TraceContext;->parentId:J

    return-wide v0
.end method

.method public parentIdString()Ljava/lang/String;
    .locals 5
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 204
    iget-object v0, p0, Lbrave/propagation/TraceContext;->parentIdString:Ljava/lang/String;

    .line 205
    .local v0, "r":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-wide v1, p0, Lbrave/propagation/TraceContext;->parentId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 206
    iget-wide v1, p0, Lbrave/propagation/TraceContext;->parentId:J

    invoke-static {v1, v2}, Lbrave/internal/HexCodec;->toLowerHex(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbrave/propagation/TraceContext;->parentIdString:Ljava/lang/String;

    move-object v0, v1

    .line 208
    :cond_0
    return-object v0
.end method

.method public shared()Z
    .locals 2

    .line 149
    iget v0, p0, Lbrave/propagation/TraceContext;->flags:I

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
    iget-wide v0, p0, Lbrave/propagation/TraceContext;->spanId:J

    return-wide v0
.end method

.method public spanIdString()Ljava/lang/String;
    .locals 3

    .line 226
    iget-object v0, p0, Lbrave/propagation/TraceContext;->spanIdString:Ljava/lang/String;

    .line 227
    .local v0, "r":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 228
    iget-wide v1, p0, Lbrave/propagation/TraceContext;->spanId:J

    invoke-static {v1, v2}, Lbrave/internal/HexCodec;->toLowerHex(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbrave/propagation/TraceContext;->spanIdString:Ljava/lang/String;

    move-object v0, v1

    .line 230
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
    .locals 6

    .line 235
    iget-wide v0, p0, Lbrave/propagation/TraceContext;->traceIdHigh:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 236
    .local v0, "traceHi":Z
    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v1

    new-array v1, v2, [C

    .line 237
    .local v1, "result":[C
    const/4 v2, 0x0

    .line 238
    .local v2, "pos":I
    if-eqz v0, :cond_2

    .line 239
    iget-wide v3, p0, Lbrave/propagation/TraceContext;->traceIdHigh:J

    invoke-static {v1, v2, v3, v4}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    .line 240
    add-int/lit8 v2, v2, 0x10

    .line 242
    :cond_2
    iget-wide v3, p0, Lbrave/propagation/TraceContext;->traceId:J

    invoke-static {v1, v2, v3, v4}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    .line 243
    add-int/lit8 v2, v2, 0x10

    .line 244
    add-int/lit8 v3, v2, 0x1

    .local v3, "pos":I
    const/16 v4, 0x2f

    aput-char v4, v1, v2

    .line 245
    .end local v2    # "pos":I
    iget-wide v4, p0, Lbrave/propagation/TraceContext;->spanId:J

    invoke-static {v1, v3, v4, v5}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    .line 246
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public traceId()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lbrave/propagation/TraceContext;->traceId:J

    return-wide v0
.end method

.method public traceIdHigh()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lbrave/propagation/TraceContext;->traceIdHigh:J

    return-wide v0
.end method

.method public traceIdString()Ljava/lang/String;
    .locals 5

    .line 185
    iget-object v0, p0, Lbrave/propagation/TraceContext;->traceIdString:Ljava/lang/String;

    .line 186
    .local v0, "r":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 187
    iget-wide v1, p0, Lbrave/propagation/TraceContext;->traceIdHigh:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 188
    const/16 v1, 0x20

    new-array v1, v1, [C

    .line 189
    .local v1, "result":[C
    const/4 v2, 0x0

    iget-wide v3, p0, Lbrave/propagation/TraceContext;->traceIdHigh:J

    invoke-static {v1, v2, v3, v4}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    .line 190
    const/16 v2, 0x10

    iget-wide v3, p0, Lbrave/propagation/TraceContext;->traceId:J

    invoke-static {v1, v2, v3, v4}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    .line 191
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    move-object v0, v2

    .line 192
    .end local v1    # "result":[C
    goto :goto_0

    .line 193
    :cond_0
    iget-wide v1, p0, Lbrave/propagation/TraceContext;->traceId:J

    invoke-static {v1, v2}, Lbrave/internal/HexCodec;->toLowerHex(J)Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_0
    iput-object v0, p0, Lbrave/propagation/TraceContext;->traceIdString:Ljava/lang/String;

    .line 197
    :cond_1
    return-object v0
.end method

.method withExtra(Ljava/util/List;)Lbrave/propagation/TraceContext;
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
    .local p1, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v13, Lbrave/propagation/TraceContext;

    iget v1, p0, Lbrave/propagation/TraceContext;->flags:I

    iget-wide v2, p0, Lbrave/propagation/TraceContext;->traceIdHigh:J

    iget-wide v4, p0, Lbrave/propagation/TraceContext;->traceId:J

    iget-wide v6, p0, Lbrave/propagation/TraceContext;->localRootId:J

    iget-wide v8, p0, Lbrave/propagation/TraceContext;->parentId:J

    iget-wide v10, p0, Lbrave/propagation/TraceContext;->spanId:J

    move-object v0, v13

    move-object v12, p1

    invoke-direct/range {v0 .. v12}, Lbrave/propagation/TraceContext;-><init>(IJJJJJLjava/util/List;)V

    return-object v13
.end method

.method withFlags(I)Lbrave/propagation/TraceContext;
    .locals 14
    .param p1, "flags"    # I

    .line 461
    new-instance v13, Lbrave/propagation/TraceContext;

    iget-wide v2, p0, Lbrave/propagation/TraceContext;->traceIdHigh:J

    iget-wide v4, p0, Lbrave/propagation/TraceContext;->traceId:J

    iget-wide v6, p0, Lbrave/propagation/TraceContext;->localRootId:J

    iget-wide v8, p0, Lbrave/propagation/TraceContext;->parentId:J

    iget-wide v10, p0, Lbrave/propagation/TraceContext;->spanId:J

    iget-object v12, p0, Lbrave/propagation/TraceContext;->extra:Ljava/util/List;

    move-object v0, v13

    move v1, p1

    invoke-direct/range {v0 .. v12}, Lbrave/propagation/TraceContext;-><init>(IJJJJJLjava/util/List;)V

    return-object v13
.end method
