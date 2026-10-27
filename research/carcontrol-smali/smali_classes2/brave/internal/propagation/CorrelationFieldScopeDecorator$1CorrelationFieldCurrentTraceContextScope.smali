.class Lbrave/internal/propagation/CorrelationFieldScopeDecorator$1CorrelationFieldCurrentTraceContextScope;
.super Ljava/lang/Object;
.source "CorrelationFieldScopeDecorator.java"

# interfaces
.implements Lbrave/propagation/CurrentTraceContext$Scope;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->decorateScope(Lbrave/propagation/TraceContext;Lbrave/propagation/CurrentTraceContext$Scope;)Lbrave/propagation/CurrentTraceContext$Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CorrelationFieldCurrentTraceContextScope"
.end annotation


# instance fields
.field final synthetic this$0:Lbrave/internal/propagation/CorrelationFieldScopeDecorator;

.field final synthetic val$previousParentId:Ljava/lang/String;

.field final synthetic val$previousSpanId:Ljava/lang/String;

.field final synthetic val$previousTraceId:Ljava/lang/String;

.field final synthetic val$scope:Lbrave/propagation/CurrentTraceContext$Scope;


# direct methods
.method constructor <init>(Lbrave/internal/propagation/CorrelationFieldScopeDecorator;Lbrave/propagation/CurrentTraceContext$Scope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lbrave/internal/propagation/CorrelationFieldScopeDecorator$1CorrelationFieldCurrentTraceContextScope;->this$0:Lbrave/internal/propagation/CorrelationFieldScopeDecorator;

    iput-object p2, p0, Lbrave/internal/propagation/CorrelationFieldScopeDecorator$1CorrelationFieldCurrentTraceContextScope;->val$scope:Lbrave/propagation/CurrentTraceContext$Scope;

    iput-object p3, p0, Lbrave/internal/propagation/CorrelationFieldScopeDecorator$1CorrelationFieldCurrentTraceContextScope;->val$previousTraceId:Ljava/lang/String;

    iput-object p4, p0, Lbrave/internal/propagation/CorrelationFieldScopeDecorator$1CorrelationFieldCurrentTraceContextScope;->val$previousParentId:Ljava/lang/String;

    iput-object p5, p0, Lbrave/internal/propagation/CorrelationFieldScopeDecorator$1CorrelationFieldCurrentTraceContextScope;->val$previousSpanId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 35
    iget-object v0, p0, Lbrave/internal/propagation/CorrelationFieldScopeDecorator$1CorrelationFieldCurrentTraceContextScope;->val$scope:Lbrave/propagation/CurrentTraceContext$Scope;

    invoke-interface {v0}, Lbrave/propagation/CurrentTraceContext$Scope;->close()V

    .line 36
    iget-object v0, p0, Lbrave/internal/propagation/CorrelationFieldScopeDecorator$1CorrelationFieldCurrentTraceContextScope;->this$0:Lbrave/internal/propagation/CorrelationFieldScopeDecorator;

    iget-object v1, p0, Lbrave/internal/propagation/CorrelationFieldScopeDecorator$1CorrelationFieldCurrentTraceContextScope;->val$previousTraceId:Ljava/lang/String;

    const-string/jumbo v2, "traceId"

    invoke-virtual {v0, v2, v1}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->replace(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lbrave/internal/propagation/CorrelationFieldScopeDecorator$1CorrelationFieldCurrentTraceContextScope;->this$0:Lbrave/internal/propagation/CorrelationFieldScopeDecorator;

    iget-object v1, p0, Lbrave/internal/propagation/CorrelationFieldScopeDecorator$1CorrelationFieldCurrentTraceContextScope;->val$previousParentId:Ljava/lang/String;

    const-string v2, "parentId"

    invoke-virtual {v0, v2, v1}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->replace(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lbrave/internal/propagation/CorrelationFieldScopeDecorator$1CorrelationFieldCurrentTraceContextScope;->this$0:Lbrave/internal/propagation/CorrelationFieldScopeDecorator;

    iget-object v1, p0, Lbrave/internal/propagation/CorrelationFieldScopeDecorator$1CorrelationFieldCurrentTraceContextScope;->val$previousSpanId:Ljava/lang/String;

    const-string/jumbo v2, "spanId"

    invoke-virtual {v0, v2, v1}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->replace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
