.class public abstract Lbrave/handler/FinishedSpanHandler;
.super Ljava/lang/Object;
.source "FinishedSpanHandler.java"


# static fields
.field public static final NOOP:Lbrave/handler/FinishedSpanHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lbrave/handler/FinishedSpanHandler$1;

    invoke-direct {v0}, Lbrave/handler/FinishedSpanHandler$1;-><init>()V

    sput-object v0, Lbrave/handler/FinishedSpanHandler;->NOOP:Lbrave/handler/FinishedSpanHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alwaysSampleLocal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z
.end method
