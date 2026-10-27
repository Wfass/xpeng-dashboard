.class Lbrave/handler/FinishedSpanHandler$1;
.super Lbrave/handler/FinishedSpanHandler;
.source "FinishedSpanHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/handler/FinishedSpanHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lbrave/handler/FinishedSpanHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z
    .locals 1
    .param p1, "context"    # Lbrave/propagation/TraceContext;
    .param p2, "span"    # Lbrave/handler/MutableSpan;

    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "NoopFinishedSpanHandler{}"

    return-object v0
.end method
