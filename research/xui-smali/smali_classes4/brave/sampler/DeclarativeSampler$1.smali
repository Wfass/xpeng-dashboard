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
.field final synthetic this$0:Lbrave/sampler/DeclarativeSampler;

.field final synthetic val$method:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lbrave/sampler/DeclarativeSampler;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lbrave/sampler/DeclarativeSampler;

    .line 68
    .local p0, "this":Lbrave/sampler/DeclarativeSampler$1;, "Lbrave/sampler/DeclarativeSampler$1;"
    iput-object p1, p0, Lbrave/sampler/DeclarativeSampler$1;->this$0:Lbrave/sampler/DeclarativeSampler;

    iput-object p2, p0, Lbrave/sampler/DeclarativeSampler$1;->val$method:Ljava/lang/Object;

    invoke-direct {p0}, Lbrave/sampler/Sampler;-><init>()V

    return-void
.end method


# virtual methods
.method public isSampled(J)Z
    .locals 2
    .param p1, "traceId"    # J

    .line 70
    .local p0, "this":Lbrave/sampler/DeclarativeSampler$1;, "Lbrave/sampler/DeclarativeSampler$1;"
    iget-object v0, p0, Lbrave/sampler/DeclarativeSampler$1;->this$0:Lbrave/sampler/DeclarativeSampler;

    iget-object v1, p0, Lbrave/sampler/DeclarativeSampler$1;->val$method:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lbrave/sampler/DeclarativeSampler;->sample(Ljava/lang/Object;)Lbrave/propagation/SamplingFlags;

    move-result-object v0

    invoke-virtual {v0}, Lbrave/propagation/SamplingFlags;->sampled()Ljava/lang/Boolean;

    move-result-object v0

    .line 71
    .local v0, "decision":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
