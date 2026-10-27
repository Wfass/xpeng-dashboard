.class public final Lbrave/sampler/BoundarySampler;
.super Lbrave/sampler/Sampler;
.source "BoundarySampler.java"


# static fields
.field static final SALT:J


# instance fields
.field private final boundary:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    sput-wide v0, Lbrave/sampler/BoundarySampler;->SALT:J

    return-void
.end method

.method constructor <init>(J)V
    .locals 0
    .param p1, "boundary"    # J

    .line 38
    invoke-direct {p0}, Lbrave/sampler/Sampler;-><init>()V

    .line 39
    iput-wide p1, p0, Lbrave/sampler/BoundarySampler;->boundary:J

    .line 40
    return-void
.end method

.method public static create(F)Lbrave/sampler/Sampler;
    .locals 4
    .param p0, "rate"    # F

    .line 27
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    sget-object v0, Lbrave/sampler/Sampler;->NEVER_SAMPLE:Lbrave/sampler/Sampler;

    return-object v0

    .line 28
    :cond_0
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    sget-object v0, Lbrave/sampler/BoundarySampler;->ALWAYS_SAMPLE:Lbrave/sampler/Sampler;

    return-object v0

    .line 29
    :cond_1
    const v0, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_2

    .line 32
    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr v0, p0

    float-to-long v0, v0

    .line 33
    .local v0, "boundary":J
    new-instance v2, Lbrave/sampler/BoundarySampler;

    invoke-direct {v2, v0, v1}, Lbrave/sampler/BoundarySampler;-><init>(J)V

    return-object v2

    .line 30
    .end local v0    # "boundary":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rate should be between 0.0001 and 1: was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public isSampled(J)Z
    .locals 6
    .param p1, "traceId"    # J

    .line 45
    sget-wide v0, Lbrave/sampler/BoundarySampler;->SALT:J

    xor-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 46
    .local v0, "t":J
    const-wide/16 v2, 0x2710

    rem-long v2, v0, v2

    iget-wide v4, p0, Lbrave/sampler/BoundarySampler;->boundary:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoundaryTraceIdSampler("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lbrave/sampler/BoundarySampler;->boundary:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
