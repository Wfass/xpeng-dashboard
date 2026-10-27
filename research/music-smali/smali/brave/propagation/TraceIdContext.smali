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
.field final g:J

.field final h:J


# direct methods
.method constructor <init>(IJJ)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lbrave/propagation/SamplingFlags;-><init>(I)V

    .line 102
    iput-wide p2, p0, Lbrave/propagation/TraceIdContext;->g:J

    .line 103
    iput-wide p4, p0, Lbrave/propagation/TraceIdContext;->h:J

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
    check-cast p1, Lbrave/propagation/TraceIdContext;

    .line 111
    iget-wide v3, p0, Lbrave/propagation/TraceIdContext;->g:J

    iget-wide v5, p1, Lbrave/propagation/TraceIdContext;->g:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lbrave/propagation/TraceIdContext;->h:J

    iget-wide v5, p1, Lbrave/propagation/TraceIdContext;->h:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 118
    iget-wide v0, p0, Lbrave/propagation/TraceIdContext;->g:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 120
    iget-wide v3, p0, Lbrave/propagation/TraceIdContext;->h:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toBuilder()Lbrave/propagation/TraceIdContext$Builder;
    .locals 3

    .line 31
    new-instance v0, Lbrave/propagation/TraceIdContext$Builder;

    invoke-direct {v0}, Lbrave/propagation/TraceIdContext$Builder;-><init>()V

    .line 32
    iget v1, p0, Lbrave/propagation/TraceIdContext;->a:I

    iput v1, v0, Lbrave/propagation/TraceIdContext$Builder;->c:I

    .line 33
    iget-wide v1, p0, Lbrave/propagation/TraceIdContext;->g:J

    iput-wide v1, v0, Lbrave/propagation/TraceIdContext$Builder;->a:J

    .line 34
    iget-wide v1, p0, Lbrave/propagation/TraceIdContext;->h:J

    iput-wide v1, v0, Lbrave/propagation/TraceIdContext$Builder;->b:J

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 41
    iget-wide v0, p0, Lbrave/propagation/TraceIdContext;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x10

    if-eqz v0, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    move v3, v2

    .line 42
    :goto_1
    new-array v3, v3, [C

    if-eqz v0, :cond_2

    .line 45
    iget-wide v4, p0, Lbrave/propagation/TraceIdContext;->g:J

    invoke-static {v3, v1, v4, v5}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    move v1, v2

    .line 48
    :cond_2
    iget-wide v4, p0, Lbrave/propagation/TraceIdContext;->h:J

    invoke-static {v3, v1, v4, v5}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    .line 49
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public traceId()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lbrave/propagation/TraceIdContext;->h:J

    return-wide v0
.end method

.method public traceIdHigh()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lbrave/propagation/TraceIdContext;->g:J

    return-wide v0
.end method
