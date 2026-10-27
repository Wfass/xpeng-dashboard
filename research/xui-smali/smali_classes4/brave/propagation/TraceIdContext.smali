.class public final Lbrave/propagation/TraceIdContext;
.super Lbrave/propagation/SamplingFlags;
.source "TraceIdContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/propagation/TraceIdContext$Builder;
    }
.end annotation


# instance fields
.field final traceId:J

.field final traceIdHigh:J


# direct methods
.method constructor <init>(IJJ)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "traceIdHigh"    # J
    .param p4, "traceId"    # J

    .line 101
    invoke-direct {p0, p1}, Lbrave/propagation/SamplingFlags;-><init>(I)V

    .line 102
    iput-wide p2, p0, Lbrave/propagation/TraceIdContext;->traceIdHigh:J

    .line 103
    iput-wide p4, p0, Lbrave/propagation/TraceIdContext;->traceId:J

    .line 104
    return-void
.end method

.method public static newBuilder()Lbrave/propagation/TraceIdContext$Builder;
    .locals 1

    .line 17
    new-instance v0, Lbrave/propagation/TraceIdContext$Builder;

    invoke-direct {v0}, Lbrave/propagation/TraceIdContext$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 108
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 109
    :cond_0
    instance-of v1, p1, Lbrave/propagation/TraceIdContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 110
    :cond_1
    move-object v1, p1

    check-cast v1, Lbrave/propagation/TraceIdContext;

    .line 111
    .local v1, "that":Lbrave/propagation/TraceIdContext;
    iget-wide v3, p0, Lbrave/propagation/TraceIdContext;->traceIdHigh:J

    iget-wide v5, v1, Lbrave/propagation/TraceIdContext;->traceIdHigh:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lbrave/propagation/TraceIdContext;->traceId:J

    iget-wide v5, v1, Lbrave/propagation/TraceIdContext;->traceId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, "h":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 118
    iget-wide v2, p0, Lbrave/propagation/TraceIdContext;->traceIdHigh:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    iget-wide v5, p0, Lbrave/propagation/TraceIdContext;->traceIdHigh:J

    xor-long/2addr v2, v5

    long-to-int v2, v2

    xor-int/2addr v0, v2

    .line 119
    mul-int/2addr v0, v1

    .line 120
    iget-wide v1, p0, Lbrave/propagation/TraceIdContext;->traceId:J

    ushr-long/2addr v1, v4

    iget-wide v3, p0, Lbrave/propagation/TraceIdContext;->traceId:J

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    .line 121
    return v0
.end method

.method public toBuilder()Lbrave/propagation/TraceIdContext$Builder;
    .locals 3

    .line 31
    new-instance v0, Lbrave/propagation/TraceIdContext$Builder;

    invoke-direct {v0}, Lbrave/propagation/TraceIdContext$Builder;-><init>()V

    .line 32
    .local v0, "result":Lbrave/propagation/TraceIdContext$Builder;
    iget v1, p0, Lbrave/propagation/TraceIdContext;->flags:I

    iput v1, v0, Lbrave/propagation/TraceIdContext$Builder;->flags:I

    .line 33
    iget-wide v1, p0, Lbrave/propagation/TraceIdContext;->traceIdHigh:J

    iput-wide v1, v0, Lbrave/propagation/TraceIdContext$Builder;->traceIdHigh:J

    .line 34
    iget-wide v1, p0, Lbrave/propagation/TraceIdContext;->traceId:J

    iput-wide v1, v0, Lbrave/propagation/TraceIdContext$Builder;->traceId:J

    .line 35
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 41
    iget-wide v0, p0, Lbrave/propagation/TraceIdContext;->traceIdHigh:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 42
    .local v0, "traceHi":Z
    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    new-array v1, v1, [C

    .line 43
    .local v1, "result":[C
    const/4 v2, 0x0

    .line 44
    .local v2, "pos":I
    if-eqz v0, :cond_2

    .line 45
    iget-wide v3, p0, Lbrave/propagation/TraceIdContext;->traceIdHigh:J

    invoke-static {v1, v2, v3, v4}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    .line 46
    add-int/lit8 v2, v2, 0x10

    .line 48
    :cond_2
    iget-wide v3, p0, Lbrave/propagation/TraceIdContext;->traceId:J

    invoke-static {v1, v2, v3, v4}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    .line 49
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public traceId()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lbrave/propagation/TraceIdContext;->traceId:J

    return-wide v0
.end method

.method public traceIdHigh()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lbrave/propagation/TraceIdContext;->traceIdHigh:J

    return-wide v0
.end method
