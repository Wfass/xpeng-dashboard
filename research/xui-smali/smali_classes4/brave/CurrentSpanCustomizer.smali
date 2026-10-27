.class public final Lbrave/CurrentSpanCustomizer;
.super Ljava/lang/Object;
.source "CurrentSpanCustomizer.java"

# interfaces
.implements Lbrave/SpanCustomizer;


# instance fields
.field private final tracer:Lbrave/Tracer;


# direct methods
.method constructor <init>(Lbrave/Tracing;)V
    .locals 1
    .param p1, "tracing"    # Lbrave/Tracing;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Lbrave/Tracing;->tracer()Lbrave/Tracer;

    move-result-object v0

    iput-object v0, p0, Lbrave/CurrentSpanCustomizer;->tracer:Lbrave/Tracer;

    .line 19
    return-void
.end method

.method public static create(Lbrave/Tracing;)Lbrave/CurrentSpanCustomizer;
    .locals 1
    .param p0, "tracing"    # Lbrave/Tracing;

    .line 14
    new-instance v0, Lbrave/CurrentSpanCustomizer;

    invoke-direct {v0, p0}, Lbrave/CurrentSpanCustomizer;-><init>(Lbrave/Tracing;)V

    return-object v0
.end method


# virtual methods
.method public annotate(Ljava/lang/String;)Lbrave/SpanCustomizer;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lbrave/CurrentSpanCustomizer;->tracer:Lbrave/Tracer;

    invoke-virtual {v0}, Lbrave/Tracer;->currentSpanCustomizer()Lbrave/SpanCustomizer;

    move-result-object v0

    invoke-interface {v0, p1}, Lbrave/SpanCustomizer;->annotate(Ljava/lang/String;)Lbrave/SpanCustomizer;

    move-result-object v0

    return-object v0
.end method

.method public name(Ljava/lang/String;)Lbrave/SpanCustomizer;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lbrave/CurrentSpanCustomizer;->tracer:Lbrave/Tracer;

    invoke-virtual {v0}, Lbrave/Tracer;->currentSpanCustomizer()Lbrave/SpanCustomizer;

    move-result-object v0

    invoke-interface {v0, p1}, Lbrave/SpanCustomizer;->name(Ljava/lang/String;)Lbrave/SpanCustomizer;

    move-result-object v0

    return-object v0
.end method

.method public tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/SpanCustomizer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lbrave/CurrentSpanCustomizer;->tracer:Lbrave/Tracer;

    invoke-virtual {v0}, Lbrave/Tracer;->currentSpanCustomizer()Lbrave/SpanCustomizer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lbrave/SpanCustomizer;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/SpanCustomizer;

    move-result-object v0

    return-object v0
.end method
