.class public final Lbrave/sampler/ParameterizedSampler;
.super Ljava/lang/Object;
.source "ParameterizedSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/sampler/ParameterizedSampler$Rule;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lbrave/sampler/ParameterizedSampler$Rule<",
            "TP;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lbrave/sampler/ParameterizedSampler$Rule<",
            "TP;>;>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lbrave/sampler/ParameterizedSampler;->a:Ljava/util/List;

    return-void
.end method

.method public static create(Ljava/util/List;)Lbrave/sampler/ParameterizedSampler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lbrave/sampler/ParameterizedSampler$Rule<",
            "TP;>;>;)",
            "Lbrave/sampler/ParameterizedSampler<",
            "TP;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 22
    new-instance v0, Lbrave/sampler/ParameterizedSampler;

    invoke-direct {v0, p0}, Lbrave/sampler/ParameterizedSampler;-><init>(Ljava/util/List;)V

    return-object v0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rules == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public sample(Ljava/lang/Object;)Lbrave/propagation/SamplingFlags;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)",
            "Lbrave/propagation/SamplingFlags;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 52
    sget-object p1, Lbrave/propagation/SamplingFlags;->EMPTY:Lbrave/propagation/SamplingFlags;

    return-object p1

    .line 53
    :cond_0
    iget-object v0, p0, Lbrave/sampler/ParameterizedSampler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbrave/sampler/ParameterizedSampler$Rule;

    .line 54
    invoke-virtual {v1, p1}, Lbrave/sampler/ParameterizedSampler$Rule;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lbrave/sampler/ParameterizedSampler$Rule;->a()Lbrave/propagation/SamplingFlags;

    move-result-object p1

    return-object p1

    .line 56
    :cond_2
    sget-object p1, Lbrave/propagation/SamplingFlags;->EMPTY:Lbrave/propagation/SamplingFlags;

    return-object p1
.end method
