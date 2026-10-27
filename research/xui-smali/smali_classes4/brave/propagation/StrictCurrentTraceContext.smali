.class public final Lbrave/propagation/StrictCurrentTraceContext;
.super Lbrave/propagation/ThreadLocalCurrentTraceContext;
.source "StrictCurrentTraceContext.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final SCOPE_DECORATING_BUILDER:Lbrave/propagation/CurrentTraceContext$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    invoke-static {}, Lbrave/propagation/ThreadLocalCurrentTraceContext;->newBuilder()Lbrave/propagation/CurrentTraceContext$Builder;

    move-result-object v0

    new-instance v1, Lbrave/propagation/StrictScopeDecorator;

    invoke-direct {v1}, Lbrave/propagation/StrictScopeDecorator;-><init>()V

    invoke-virtual {v0, v1}, Lbrave/propagation/CurrentTraceContext$Builder;->addScopeDecorator(Lbrave/propagation/CurrentTraceContext$ScopeDecorator;)Lbrave/propagation/CurrentTraceContext$Builder;

    move-result-object v0

    sput-object v0, Lbrave/propagation/StrictCurrentTraceContext;->SCOPE_DECORATING_BUILDER:Lbrave/propagation/CurrentTraceContext$Builder;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    sget-object v0, Lbrave/propagation/StrictCurrentTraceContext;->SCOPE_DECORATING_BUILDER:Lbrave/propagation/CurrentTraceContext$Builder;

    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    invoke-direct {p0, v0, v1}, Lbrave/propagation/ThreadLocalCurrentTraceContext;-><init>(Lbrave/propagation/CurrentTraceContext$Builder;Ljava/lang/ThreadLocal;)V

    .line 20
    return-void
.end method
