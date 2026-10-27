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
.field final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lbrave/sampler/RateLimitingSampler$MaxFunction;-><init>()V

    .line 85
    iput p1, p0, Lbrave/sampler/RateLimitingSampler$LessThan10;->a:I

    return-void
.end method


# virtual methods
.method a(J)I
    .locals 0

    .line 89
    iget p1, p0, Lbrave/sampler/RateLimitingSampler$LessThan10;->a:I

    return p1
.end method
