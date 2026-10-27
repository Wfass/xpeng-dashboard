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
    .locals 5
    .param p1    # Lbrave/propagation/TraceContext;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    .line 27
    new-instance v0, Lbrave/propagation/StrictScopeDecorator$StrictScope;

    new-instance v1, Ljava/lang/Error;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "Thread %s opened scope for %s here:"

    .line 27
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p2, v1}, Lbrave/propagation/StrictScopeDecorator$StrictScope;-><init>(Lbrave/propagation/CurrentTraceContext$Scope;Ljava/lang/Throwable;)V

    return-object v0
.end method
