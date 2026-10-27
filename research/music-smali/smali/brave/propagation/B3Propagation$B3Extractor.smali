.class final Lbrave/propagation/B3Propagation$B3Extractor;
.super Ljava/lang/Object;
.source "B3Propagation.java"

# interfaces
.implements Lbrave/propagation/TraceContext$Extractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/B3Propagation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "B3Extractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbrave/propagation/TraceContext$Extractor<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final a:Lbrave/propagation/B3Propagation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/B3Propagation<",
            "TK;>;"
        }
    .end annotation
.end field

.field final b:Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/B3SinglePropagation$B3SingleExtractor<",
            "TC;TK;>;"
        }
    .end annotation
.end field

.field final c:Lbrave/propagation/Propagation$Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/Propagation$Getter<",
            "TC;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbrave/propagation/B3Propagation;Lbrave/propagation/Propagation$Getter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/B3Propagation<",
            "TK;>;",
            "Lbrave/propagation/Propagation$Getter<",
            "TC;TK;>;)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lbrave/propagation/B3Propagation$B3Extractor;->a:Lbrave/propagation/B3Propagation;

    .line 109
    new-instance v0, Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;

    iget-object p1, p1, Lbrave/propagation/B3Propagation;->a:Ljava/lang/Object;

    invoke-direct {v0, p1, p2}, Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;-><init>(Ljava/lang/Object;Lbrave/propagation/Propagation$Getter;)V

    iput-object v0, p0, Lbrave/propagation/B3Propagation$B3Extractor;->b:Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;

    .line 110
    iput-object p2, p0, Lbrave/propagation/B3Propagation$B3Extractor;->c:Lbrave/propagation/Propagation$Getter;

    return-void
.end method


# virtual methods
.method public extract(Ljava/lang/Object;)Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lbrave/propagation/TraceContextOrSamplingFlags;"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 117
    iget-object v0, p0, Lbrave/propagation/B3Propagation$B3Extractor;->b:Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;

    invoke-virtual {v0, p1}, Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;->extract(Ljava/lang/Object;)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object v0

    .line 118
    sget-object v1, Lbrave/propagation/TraceContextOrSamplingFlags;->EMPTY:Lbrave/propagation/TraceContextOrSamplingFlags;

    invoke-virtual {v0, v1}, Lbrave/propagation/TraceContextOrSamplingFlags;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 122
    :cond_0
    iget-object v0, p0, Lbrave/propagation/B3Propagation$B3Extractor;->c:Lbrave/propagation/Propagation$Getter;

    iget-object v1, p0, Lbrave/propagation/B3Propagation$B3Extractor;->a:Lbrave/propagation/B3Propagation;

    iget-object v1, v1, Lbrave/propagation/B3Propagation;->e:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lbrave/propagation/Propagation$Getter;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "1"

    if-eqz v0, :cond_3

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 126
    :goto_2
    iget-object v3, p0, Lbrave/propagation/B3Propagation$B3Extractor;->c:Lbrave/propagation/Propagation$Getter;

    iget-object v4, p0, Lbrave/propagation/B3Propagation$B3Extractor;->a:Lbrave/propagation/B3Propagation;

    iget-object v4, v4, Lbrave/propagation/B3Propagation;->f:Ljava/lang/Object;

    invoke-interface {v3, p1, v4}, Lbrave/propagation/Propagation$Getter;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 128
    iget-object v3, p0, Lbrave/propagation/B3Propagation$B3Extractor;->c:Lbrave/propagation/Propagation$Getter;

    iget-object v4, p0, Lbrave/propagation/B3Propagation$B3Extractor;->a:Lbrave/propagation/B3Propagation;

    iget-object v4, v4, Lbrave/propagation/B3Propagation;->b:Ljava/lang/Object;

    invoke-interface {v3, p1, v4}, Lbrave/propagation/Propagation$Getter;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 130
    invoke-static {v0, v2}, Lbrave/propagation/TraceContextOrSamplingFlags;->create(Ljava/lang/Boolean;Z)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object p1

    return-object p1

    .line 133
    :cond_4
    invoke-static {}, Lbrave/propagation/TraceContext;->newBuilder()Lbrave/propagation/TraceContext$Builder;

    move-result-object v4

    .line 134
    iget-object v5, p0, Lbrave/propagation/B3Propagation$B3Extractor;->a:Lbrave/propagation/B3Propagation;

    iget-object v5, v5, Lbrave/propagation/B3Propagation;->b:Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Lbrave/propagation/TraceContext$Builder;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lbrave/propagation/B3Propagation$B3Extractor;->c:Lbrave/propagation/Propagation$Getter;

    iget-object v5, p0, Lbrave/propagation/B3Propagation$B3Extractor;->a:Lbrave/propagation/B3Propagation;

    iget-object v5, v5, Lbrave/propagation/B3Propagation;->c:Ljava/lang/Object;

    .line 135
    invoke-virtual {v4, v3, p1, v5}, Lbrave/propagation/TraceContext$Builder;->b(Lbrave/propagation/Propagation$Getter;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lbrave/propagation/B3Propagation$B3Extractor;->c:Lbrave/propagation/Propagation$Getter;

    iget-object v5, p0, Lbrave/propagation/B3Propagation$B3Extractor;->a:Lbrave/propagation/B3Propagation;

    iget-object v5, v5, Lbrave/propagation/B3Propagation;->d:Ljava/lang/Object;

    .line 136
    invoke-virtual {v4, v3, p1, v5}, Lbrave/propagation/TraceContext$Builder;->a(Lbrave/propagation/Propagation$Getter;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v0, :cond_5

    .line 137
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v4, p1}, Lbrave/propagation/TraceContext$Builder;->sampled(Z)Lbrave/propagation/TraceContext$Builder;

    :cond_5
    if-eqz v2, :cond_6

    .line 138
    invoke-virtual {v4, v1}, Lbrave/propagation/TraceContext$Builder;->debug(Z)Lbrave/propagation/TraceContext$Builder;

    .line 139
    :cond_6
    invoke-virtual {v4}, Lbrave/propagation/TraceContext$Builder;->build()Lbrave/propagation/TraceContext;

    move-result-object p1

    invoke-static {p1}, Lbrave/propagation/TraceContextOrSamplingFlags;->create(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object p1

    return-object p1

    .line 141
    :cond_7
    sget-object p1, Lbrave/propagation/TraceContextOrSamplingFlags;->EMPTY:Lbrave/propagation/TraceContextOrSamplingFlags;

    return-object p1

    .line 114
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "carrier == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
