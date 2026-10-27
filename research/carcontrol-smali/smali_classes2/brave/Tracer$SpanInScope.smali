.class public final Lbrave/Tracer$SpanInScope;
.super Ljava/lang/Object;
.source "Tracer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpanInScope"
.end annotation


# instance fields
.field final scope:Lbrave/propagation/CurrentTraceContext$Scope;


# direct methods
.method constructor <init>(Lbrave/propagation/CurrentTraceContext$Scope;)V
    .locals 1

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "scope == null"

    .line 489
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 490
    iput-object p1, p0, Lbrave/Tracer$SpanInScope;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 495
    iget-object v0, p0, Lbrave/Tracer$SpanInScope;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    invoke-interface {v0}, Lbrave/propagation/CurrentTraceContext$Scope;->close()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 499
    iget-object v0, p0, Lbrave/Tracer$SpanInScope;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
