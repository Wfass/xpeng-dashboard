.class final Lbrave/propagation/ThreadLocalCurrentTraceContext$Builder;
.super Lbrave/propagation/CurrentTraceContext$Builder;
.source "ThreadLocalCurrentTraceContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/ThreadLocalCurrentTraceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lbrave/propagation/CurrentTraceContext$Builder;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public build()Lbrave/propagation/CurrentTraceContext;
    .locals 2

    .line 39
    new-instance v0, Lbrave/propagation/ThreadLocalCurrentTraceContext;

    sget-object v1, Lbrave/propagation/ThreadLocalCurrentTraceContext;->DEFAULT:Ljava/lang/ThreadLocal;

    invoke-direct {v0, p0, v1}, Lbrave/propagation/ThreadLocalCurrentTraceContext;-><init>(Lbrave/propagation/CurrentTraceContext$Builder;Ljava/lang/ThreadLocal;)V

    return-object v0
.end method
