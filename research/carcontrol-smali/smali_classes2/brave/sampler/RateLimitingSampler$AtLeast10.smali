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
    .locals 4

    .line 107
    invoke-direct {p0}, Lbrave/sampler/RateLimitingSampler$MaxFunction;-><init>()V

    .line 108
    div-int/lit8 v0, p1, 0xa

    const/16 v1, 0xa

    rem-int/2addr p1, v1

    new-array v2, v1, [I

    .line 109
    iput-object v2, p0, Lbrave/sampler/RateLimitingSampler$AtLeast10;->max:[I

    add-int/2addr p1, v0

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    :goto_0
    if-ge p1, v1, :cond_0

    .line 112
    iget-object v2, p0, Lbrave/sampler/RateLimitingSampler$AtLeast10;->max:[I

    add-int/lit8 v3, p1, -0x1

    aget v3, v2, v3

    add-int/2addr v3, v0

    aput v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method max(J)I
    .locals 0

    long-to-int p1, p1

    .line 117
    sget p2, Lbrave/sampler/RateLimitingSampler;->NANOS_PER_DECISECOND:I

    div-int/2addr p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    rsub-int/lit8 p1, p1, 0xa

    .line 119
    :goto_0
    iget-object p2, p0, Lbrave/sampler/RateLimitingSampler$AtLeast10;->max:[I

    aget p1, p2, p1

    return p1
.end method
