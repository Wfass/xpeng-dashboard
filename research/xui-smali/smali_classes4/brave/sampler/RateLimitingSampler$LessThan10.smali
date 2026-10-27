.class final Lbrave/sampler/RateLimitingSampler$LessThan10;
.super Lbrave/sampler/RateLimitingSampler$MaxFunction;
.source "RateLimitingSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/sampler/RateLimitingSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LessThan10"
.end annotation


# instance fields
.field final tracesPerSecond:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "tracesPerSecond"    # I

    .line 84
    invoke-direct {p0}, Lbrave/sampler/RateLimitingSampler$MaxFunction;-><init>()V

    .line 85
    iput p1, p0, Lbrave/sampler/RateLimitingSampler$LessThan10;->tracesPerSecond:I

    .line 86
    return-void
.end method


# virtual methods
.method max(J)I
    .locals 1
    .param p1, "nanosUntilReset"    # J

    .line 89
    iget v0, p0, Lbrave/sampler/RateLimitingSampler$LessThan10;->tracesPerSecond:I

    return v0
.end method
