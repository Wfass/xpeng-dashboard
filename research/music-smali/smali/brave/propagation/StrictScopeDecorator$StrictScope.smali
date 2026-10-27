.class final Lbrave/propagation/StrictScopeDecorator$StrictScope;
.super Ljava/lang/Object;
.source "StrictScopeDecorator.java"

# interfaces
.implements Lbrave/propagation/CurrentTraceContext$Scope;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/StrictScopeDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrictScope"
.end annotation


# instance fields
.field final a:Lbrave/propagation/CurrentTraceContext$Scope;

.field final b:Ljava/lang/Throwable;

.field final c:J


# direct methods
.method constructor <init>(Lbrave/propagation/CurrentTraceContext$Scope;Ljava/lang/Throwable;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lbrave/propagation/StrictScopeDecorator$StrictScope;->c:J

    .line 37
    iput-object p1, p0, Lbrave/propagation/StrictScopeDecorator$StrictScope;->a:Lbrave/propagation/CurrentTraceContext$Scope;

    .line 38
    iput-object p2, p0, Lbrave/propagation/StrictScopeDecorator$StrictScope;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lbrave/propagation/StrictScopeDecorator$StrictScope;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lbrave/propagation/StrictScopeDecorator$StrictScope;->a:Lbrave/propagation/CurrentTraceContext$Scope;

    invoke-interface {v0}, Lbrave/propagation/CurrentTraceContext$Scope;->close()V

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scope closed in a different thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbrave/propagation/StrictScopeDecorator$StrictScope;->b:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lbrave/propagation/StrictScopeDecorator$StrictScope;->b:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
