.class public final Lbrave/propagation/CurrentTraceContext$Default;
.super Lbrave/propagation/ThreadLocalCurrentTraceContext;
.source "CurrentTraceContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/CurrentTraceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# static fields
.field static final INHERITABLE:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal<",
            "Lbrave/propagation/TraceContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 178
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    sput-object v0, Lbrave/propagation/CurrentTraceContext$Default;->INHERITABLE:Ljava/lang/InheritableThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 199
    new-instance v0, Lbrave/propagation/ThreadLocalCurrentTraceContext$Builder;

    invoke-direct {v0}, Lbrave/propagation/ThreadLocalCurrentTraceContext$Builder;-><init>()V

    sget-object v1, Lbrave/propagation/CurrentTraceContext$Default;->INHERITABLE:Ljava/lang/InheritableThreadLocal;

    invoke-direct {p0, v0, v1}, Lbrave/propagation/ThreadLocalCurrentTraceContext;-><init>(Lbrave/propagation/CurrentTraceContext$Builder;Ljava/lang/ThreadLocal;)V

    .line 200
    return-void
.end method

.method public static create()Lbrave/propagation/CurrentTraceContext;
    .locals 3

    .line 182
    new-instance v0, Lbrave/propagation/ThreadLocalCurrentTraceContext;

    new-instance v1, Lbrave/propagation/ThreadLocalCurrentTraceContext$Builder;

    invoke-direct {v1}, Lbrave/propagation/ThreadLocalCurrentTraceContext$Builder;-><init>()V

    sget-object v2, Lbrave/propagation/CurrentTraceContext$Default;->DEFAULT:Ljava/lang/ThreadLocal;

    invoke-direct {v0, v1, v2}, Lbrave/propagation/ThreadLocalCurrentTraceContext;-><init>(Lbrave/propagation/CurrentTraceContext$Builder;Ljava/lang/ThreadLocal;)V

    return-object v0
.end method

.method public static inheritable()Lbrave/propagation/CurrentTraceContext;
    .locals 1

    .line 195
    new-instance v0, Lbrave/propagation/CurrentTraceContext$Default;

    invoke-direct {v0}, Lbrave/propagation/CurrentTraceContext$Default;-><init>()V

    return-object v0
.end method
