.class public final Lbrave/propagation/StrictScopeDecorator;
.super Ljava/lang/Object;
.source "StrictScopeDecorator.java"

# interfaces
.implements Lbrave/propagation/CurrentTraceContext$ScopeDecorator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/propagation/StrictScopeDecorator$StrictScope;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static create()Lbrave/propagation/CurrentTraceContext$ScopeDecorator;
    .locals 1

    .line 22
    new-instance v0, Lbrave/propagation/StrictScopeDecorator;

    invoke-direct {v0}, Lbrave/propagation/StrictScopeDecorator;-><init>()V

    return-object v0
.end method


# virtual methods
.method public decorateScope(Lbrave/propagation/TraceContext;Lbrave/propagation/CurrentTraceContext$Scope;)Lbrave/propagation/CurrentTraceContext$Scope;
    .locals 6
    .param p1, "currentSpan"    # Lbrave/propagation/TraceContext;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param
    .param p2, "scope"    # Lbrave/propagation/CurrentTraceContext$Scope;

    .line 27
    new-instance v0, Lbrave/propagation/StrictScopeDecorator$StrictScope;

    new-instance v1, Ljava/lang/Error;

    const-string v2, "Thread %s opened scope for %s here:"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 27
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p2, v1}, Lbrave/propagation/StrictScopeDecorator$StrictScope;-><init>(Lbrave/propagation/CurrentTraceContext$Scope;Ljava/lang/Throwable;)V

    return-object v0
.end method
