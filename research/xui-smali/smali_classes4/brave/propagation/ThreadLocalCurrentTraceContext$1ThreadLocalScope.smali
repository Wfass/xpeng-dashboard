.class Lbrave/propagation/ThreadLocalCurrentTraceContext$1ThreadLocalScope;
.super Ljava/lang/Object;
.source "ThreadLocalCurrentTraceContext.java"

# interfaces
.implements Lbrave/propagation/CurrentTraceContext$Scope;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbrave/propagation/ThreadLocalCurrentTraceContext;->newScope(Lbrave/propagation/TraceContext;)Lbrave/propagation/CurrentTraceContext$Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadLocalScope"
.end annotation


# instance fields
.field final synthetic this$0:Lbrave/propagation/ThreadLocalCurrentTraceContext;

.field final synthetic val$previous:Lbrave/propagation/TraceContext;


# direct methods
.method constructor <init>(Lbrave/propagation/ThreadLocalCurrentTraceContext;Lbrave/propagation/TraceContext;)V
    .locals 0
    .param p1, "this$0"    # Lbrave/propagation/ThreadLocalCurrentTraceContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lbrave/propagation/ThreadLocalCurrentTraceContext$1ThreadLocalScope;->this$0:Lbrave/propagation/ThreadLocalCurrentTraceContext;

    iput-object p2, p0, Lbrave/propagation/ThreadLocalCurrentTraceContext$1ThreadLocalScope;->val$previous:Lbrave/propagation/TraceContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 69
    iget-object v0, p0, Lbrave/propagation/ThreadLocalCurrentTraceContext$1ThreadLocalScope;->this$0:Lbrave/propagation/ThreadLocalCurrentTraceContext;

    iget-object v0, v0, Lbrave/propagation/ThreadLocalCurrentTraceContext;->local:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lbrave/propagation/ThreadLocalCurrentTraceContext$1ThreadLocalScope;->val$previous:Lbrave/propagation/TraceContext;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 70
    return-void
.end method
