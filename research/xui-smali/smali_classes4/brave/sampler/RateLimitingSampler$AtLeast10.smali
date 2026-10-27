.class final Lbrave/sampler/RateLimitingSampler$AtLeast10;
.super Lbrave/sampler/RateLimitingSampler$MaxFunction;
.source "RateLimitingSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/sampler/RateLimitingSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AtLeast10"
.end annotation


# instance fields
.field final max:[I


# direct methods
.method constructor <init>(I)V
    .locals 7
    .param p1, "tracesPerSecond"    # I

    .line 107
    invoke-direct {p0}, Lbrave/sampler/RateLimitingSampler$MaxFunction;-><init>()V

    .line 108
    div-int/lit8 v0, p1, 0xa

    .local v0, "tracesPerDecisecond":I
    rem-int/lit8 v1, p1, 0xa

    .line 109
    .local v1, "remainder":I
    const/16 v2, 0xa

    new-array v3, v2, [I

    iput-object v3, p0, Lbrave/sampler/RateLimitingSampler$AtLeast10;->max:[I

    .line 110
    iget-object v3, p0, Lbrave/sampler/RateLimitingSampler$AtLeast10;->max:[I

    add-int v4, v0, v1

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 111
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 112
    iget-object v4, p0, Lbrave/sampler/RateLimitingSampler$AtLeast10;->max:[I

    iget-object v5, p0, Lbrave/sampler/RateLimitingSampler$AtLeast10;->max:[I

    add-int/lit8 v6, v3, -0x1

    aget v5, v5, v6

    add-int/2addr v5, v0

    aput v5, v4, v3

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v3    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method max(J)I
    .locals 3
    .param p1, "nanosUntilReset"    # J

    .line 117
    long-to-int v0, p1

    sget v1, Lbrave/sampler/RateLimitingSampler;->NANOS_PER_DECISECOND:I

    div-int/2addr v0, v1

    .line 118
    .local v0, "decisecondsUntilReset":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, v0, 0xa

    .line 119
    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lbrave/sampler/RateLimitingSampler$AtLeast10;->max:[I

    aget v2, v2, v1

    return v2
.end method
