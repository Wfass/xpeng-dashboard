.class public abstract Lbrave/ScopedSpan;
.super Ljava/lang/Object;
.source "ScopedSpan.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract annotate(Ljava/lang/String;)Lbrave/ScopedSpan;
.end method

.method public abstract context()Lbrave/propagation/TraceContext;
.end method

.method public abstract error(Ljava/lang/Throwable;)Lbrave/ScopedSpan;
.end method

.method public abstract finish()V
.end method

.method public abstract isNoop()Z
.end method

.method public abstract tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/ScopedSpan;
.end method
