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
    .locals 2
    .param p1, "scope"    # Lbrave/propagation/CurrentTraceContext$Scope;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    if-eqz p1, :cond_0

    .line 490
    iput-object p1, p0, Lbrave/Tracer$SpanInScope;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    .line 491
    return-void

    .line 489
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scope == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 495
    iget-object v0, p0, Lbrave/Tracer$SpanInScope;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    invoke-interface {v0}, Lbrave/propagation/CurrentTraceContext$Scope;->close()V

    .line 496
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
