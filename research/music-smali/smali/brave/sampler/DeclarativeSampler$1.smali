.class Lbrave/sampler/DeclarativeSampler$1;
.super Lbrave/sampler/Sampler;
.source "DeclarativeSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbrave/sampler/DeclarativeSampler;->toSampler(Ljava/lang/Object;)Lbrave/sampler/Sampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lbrave/sampler/DeclarativeSampler;


# direct methods
.method constructor <init>(Lbrave/sampler/DeclarativeSampler;Ljava/lang/Object;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lbrave/sampler/DeclarativeSampler$1;->b:Lbrave/sampler/DeclarativeSampler;

    iput-object p2, p0, Lbrave/sampler/DeclarativeSampler$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lbrave/sampler/Sampler;-><init>()V

    return-void
.end method


# virtual methods
.method public isSampled(J)Z
    .locals 0

    .line 70
    iget-object p1, p0, Lbrave/sampler/DeclarativeSampler$1;->b:Lbrave/sampler/DeclarativeSampler;

    iget-object p2, p0, Lbrave/sampler/DeclarativeSampler$1;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lbrave/sampler/DeclarativeSampler;->sample(Ljava/lang/Object;)Lbrave/propagation/SamplingFlags;

    move-result-object p1

    invoke-virtual {p1}, Lbrave/propagation/SamplingFlags;->sampled()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
