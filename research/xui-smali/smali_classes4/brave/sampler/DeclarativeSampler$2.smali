.class Lbrave/sampler/DeclarativeSampler$2;
.super Lbrave/sampler/Sampler;
.source "DeclarativeSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbrave/sampler/DeclarativeSampler;->toSampler(Ljava/lang/Object;Lbrave/sampler/Sampler;)Lbrave/sampler/Sampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbrave/sampler/DeclarativeSampler;

.field final synthetic val$fallback:Lbrave/sampler/Sampler;

.field final synthetic val$method:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lbrave/sampler/DeclarativeSampler;Ljava/lang/Object;Lbrave/sampler/Sampler;)V
    .locals 0
    .param p1, "this$0"    # Lbrave/sampler/DeclarativeSampler;

    .line 96
    .local p0, "this":Lbrave/sampler/DeclarativeSampler$2;, "Lbrave/sampler/DeclarativeSampler$2;"
    iput-object p1, p0, Lbrave/sampler/DeclarativeSampler$2;->this$0:Lbrave/sampler/DeclarativeSampler;

    iput-object p2, p0, Lbrave/sampler/DeclarativeSampler$2;->val$method:Ljava/lang/Object;

    iput-object p3, p0, Lbrave/sampler/DeclarativeSampler$2;->val$fallback:Lbrave/sampler/Sampler;

    invoke-direct {p0}, Lbrave/sampler/Sampler;-><init>()V

    return-void
.end method


# virtual methods
.method public isSampled(J)Z
    .locals 2
    .param p1, "traceId"    # J

    .line 98
    .local p0, "this":Lbrave/sampler/DeclarativeSampler$2;, "Lbrave/sampler/DeclarativeSampler$2;"
    iget-object v0, p0, Lbrave/sampler/DeclarativeSampler$2;->this$0:Lbrave/sampler/DeclarativeSampler;

    iget-object v1, p0, Lbrave/sampler/DeclarativeSampler$2;->val$method:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lbrave/sampler/DeclarativeSampler;->sample(Ljava/lang/Object;)Lbrave/propagation/SamplingFlags;

    move-result-object v0

    invoke-virtual {v0}, Lbrave/propagation/SamplingFlags;->sampled()Ljava/lang/Boolean;

    move-result-object v0

    .line 99
    .local v0, "decision":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    iget-object v1, p0, Lbrave/sampler/DeclarativeSampler$2;->val$fallback:Lbrave/sampler/Sampler;

    invoke-virtual {v1, p1, p2}, Lbrave/sampler/Sampler;->isSampled(J)Z

    move-result v1

    return v1

    .line 100
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
