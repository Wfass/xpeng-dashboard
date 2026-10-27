.class public abstract Lbrave/sampler/ParameterizedSampler$Rule;
.super Ljava/lang/Object;
.source "ParameterizedSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/sampler/ParameterizedSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Rule"
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
.field final sampler:Lbrave/sampler/Sampler;


# direct methods
.method protected constructor <init>(F)V
    .locals 1
    .param p1, "rate"    # F

    .line 31
    .local p0, "this":Lbrave/sampler/ParameterizedSampler$Rule;, "Lbrave/sampler/ParameterizedSampler$Rule<TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lbrave/sampler/CountingSampler;->create(F)Lbrave/sampler/Sampler;

    move-result-object v0

    iput-object v0, p0, Lbrave/sampler/ParameterizedSampler$Rule;->sampler:Lbrave/sampler/Sampler;

    .line 33
    return-void
.end method


# virtual methods
.method isSampled()Lbrave/propagation/SamplingFlags;
    .locals 3

    .line 39
    .local p0, "this":Lbrave/sampler/ParameterizedSampler$Rule;, "Lbrave/sampler/ParameterizedSampler$Rule<TP;>;"
    iget-object v0, p0, Lbrave/sampler/ParameterizedSampler$Rule;->sampler:Lbrave/sampler/Sampler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lbrave/sampler/Sampler;->isSampled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lbrave/propagation/SamplingFlags;->SAMPLED:Lbrave/propagation/SamplingFlags;

    goto :goto_0

    .line 41
    :cond_0
    sget-object v0, Lbrave/propagation/SamplingFlags;->NOT_SAMPLED:Lbrave/propagation/SamplingFlags;

    .line 39
    :goto_0
    return-object v0
.end method

.method public abstract matches(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)Z"
        }
    .end annotation
.end method
