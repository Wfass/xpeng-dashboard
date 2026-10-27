.class public interface abstract Lbrave/propagation/CurrentTraceContext$ScopeDecorator;
.super Ljava/lang/Object;
.source "CurrentTraceContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/CurrentTraceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScopeDecorator"
.end annotation


# virtual methods
.method public abstract decorateScope(Lbrave/propagation/TraceContext;Lbrave/propagation/CurrentTraceContext$Scope;)Lbrave/propagation/CurrentTraceContext$Scope;
    .param p1    # Lbrave/propagation/TraceContext;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param
.end method
