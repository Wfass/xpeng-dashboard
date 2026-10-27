.class public final Lbrave/sampler/DeclarativeSampler;
.super Ljava/lang/Object;
.source "DeclarativeSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/sampler/DeclarativeSampler$RateForMethod;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final NULL_SENTINEL:Lbrave/sampler/Sampler;


# instance fields
.field final methodsToSamplers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TM;",
            "Lbrave/sampler/Sampler;",
            ">;"
        }
    .end annotation
.end field

.field final rateForMethod:Lbrave/sampler/DeclarativeSampler$RateForMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/sampler/DeclarativeSampler$RateForMethod<",
            "TM;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lbrave/sampler/DeclarativeSampler$3;

    invoke-direct {v0}, Lbrave/sampler/DeclarativeSampler$3;-><init>()V

    sput-object v0, Lbrave/sampler/DeclarativeSampler;->NULL_SENTINEL:Lbrave/sampler/Sampler;

    return-void
.end method

.method constructor <init>(Lbrave/sampler/DeclarativeSampler$RateForMethod;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/sampler/DeclarativeSampler$RateForMethod<",
            "TM;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lbrave/sampler/DeclarativeSampler;, "Lbrave/sampler/DeclarativeSampler<TM;>;"
    .local p1, "rateForMethod":Lbrave/sampler/DeclarativeSampler$RateForMethod;, "Lbrave/sampler/DeclarativeSampler$RateForMethod<TM;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbrave/sampler/DeclarativeSampler;->methodsToSamplers:Ljava/util/concurrent/ConcurrentMap;

    .line 47
    iput-object p1, p0, Lbrave/sampler/DeclarativeSampler;->rateForMethod:Lbrave/sampler/DeclarativeSampler$RateForMethod;

    .line 48
    return-void
.end method

.method public static create(Lbrave/sampler/DeclarativeSampler$RateForMethod;)Lbrave/sampler/DeclarativeSampler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Lbrave/sampler/DeclarativeSampler$RateForMethod<",
            "TM;>;)",
            "Lbrave/sampler/DeclarativeSampler<",
            "TM;>;"
        }
    .end annotation

    .line 34
    .local p0, "rateForMethod":Lbrave/sampler/DeclarativeSampler$RateForMethod;, "Lbrave/sampler/DeclarativeSampler$RateForMethod<TM;>;"
    new-instance v0, Lbrave/sampler/DeclarativeSampler;

    invoke-direct {v0, p0}, Lbrave/sampler/DeclarativeSampler;-><init>(Lbrave/sampler/DeclarativeSampler$RateForMethod;)V

    return-object v0
.end method

.method private sample(Lbrave/sampler/Sampler;)Lbrave/propagation/SamplingFlags;
    .locals 2
    .param p1, "sampler"    # Lbrave/sampler/Sampler;

    .line 124
    .local p0, "this":Lbrave/sampler/DeclarativeSampler;, "Lbrave/sampler/DeclarativeSampler<TM;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lbrave/sampler/Sampler;->isSampled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lbrave/propagation/SamplingFlags;->SAMPLED:Lbrave/propagation/SamplingFlags;

    goto :goto_0

    .line 126
    :cond_0
    sget-object v0, Lbrave/propagation/SamplingFlags;->NOT_SAMPLED:Lbrave/propagation/SamplingFlags;

    .line 124
    :goto_0
    return-object v0
.end method


# virtual methods
.method public sample(Ljava/lang/Object;)Lbrave/propagation/SamplingFlags;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Lbrave/propagation/SamplingFlags;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lbrave/sampler/DeclarativeSampler;, "Lbrave/sampler/DeclarativeSampler<TM;>;"
    .local p1, "method":Ljava/lang/Object;, "TM;"
    if-nez p1, :cond_0

    sget-object v0, Lbrave/propagation/SamplingFlags;->EMPTY:Lbrave/propagation/SamplingFlags;

    return-object v0

    .line 107
    :cond_0
    iget-object v0, p0, Lbrave/sampler/DeclarativeSampler;->methodsToSamplers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrave/sampler/Sampler;

    .line 108
    .local v0, "sampler":Lbrave/sampler/Sampler;
    sget-object v1, Lbrave/sampler/DeclarativeSampler;->NULL_SENTINEL:Lbrave/sampler/Sampler;

    if-ne v0, v1, :cond_1

    sget-object v1, Lbrave/propagation/SamplingFlags;->EMPTY:Lbrave/propagation/SamplingFlags;

    return-object v1

    .line 109
    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lbrave/sampler/DeclarativeSampler;->sample(Lbrave/sampler/Sampler;)Lbrave/propagation/SamplingFlags;

    move-result-object v1

    return-object v1

    .line 111
    :cond_2
    iget-object v1, p0, Lbrave/sampler/DeclarativeSampler;->rateForMethod:Lbrave/sampler/DeclarativeSampler$RateForMethod;

    invoke-interface {v1, p1}, Lbrave/sampler/DeclarativeSampler$RateForMethod;->get(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v1

    .line 112
    .local v1, "rate":Ljava/lang/Float;
    if-nez v1, :cond_3

    .line 113
    iget-object v2, p0, Lbrave/sampler/DeclarativeSampler;->methodsToSamplers:Ljava/util/concurrent/ConcurrentMap;

    sget-object v3, Lbrave/sampler/DeclarativeSampler;->NULL_SENTINEL:Lbrave/sampler/Sampler;

    invoke-interface {v2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v2, Lbrave/propagation/SamplingFlags;->EMPTY:Lbrave/propagation/SamplingFlags;

    return-object v2

    .line 117
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Lbrave/sampler/CountingSampler;->create(F)Lbrave/sampler/Sampler;

    move-result-object v0

    .line 118
    iget-object v2, p0, Lbrave/sampler/DeclarativeSampler;->methodsToSamplers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbrave/sampler/Sampler;

    .line 119
    .local v2, "previousSampler":Lbrave/sampler/Sampler;
    if-eqz v2, :cond_4

    move-object v0, v2

    .line 120
    :cond_4
    invoke-direct {p0, v0}, Lbrave/sampler/DeclarativeSampler;->sample(Lbrave/sampler/Sampler;)Lbrave/propagation/SamplingFlags;

    move-result-object v3

    return-object v3
.end method

.method public toSampler(Ljava/lang/Object;)Lbrave/sampler/Sampler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Lbrave/sampler/Sampler;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lbrave/sampler/DeclarativeSampler;, "Lbrave/sampler/DeclarativeSampler<TM;>;"
    .local p1, "method":Ljava/lang/Object;, "TM;"
    if-eqz p1, :cond_0

    .line 68
    new-instance v0, Lbrave/sampler/DeclarativeSampler$1;

    invoke-direct {v0, p0, p1}, Lbrave/sampler/DeclarativeSampler$1;-><init>(Lbrave/sampler/DeclarativeSampler;Ljava/lang/Object;)V

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toSampler(Ljava/lang/Object;Lbrave/sampler/Sampler;)Lbrave/sampler/Sampler;
    .locals 2
    .param p2, "fallback"    # Lbrave/sampler/Sampler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lbrave/sampler/Sampler;",
            ")",
            "Lbrave/sampler/Sampler;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lbrave/sampler/DeclarativeSampler;, "Lbrave/sampler/DeclarativeSampler<TM;>;"
    .local p1, "method":Ljava/lang/Object;, "TM;"
    if-eqz p1, :cond_1

    .line 95
    if-eqz p2, :cond_0

    .line 96
    new-instance v0, Lbrave/sampler/DeclarativeSampler$2;

    invoke-direct {v0, p0, p1, p2}, Lbrave/sampler/DeclarativeSampler$2;-><init>(Lbrave/sampler/DeclarativeSampler;Ljava/lang/Object;Lbrave/sampler/Sampler;)V

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fallback == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
