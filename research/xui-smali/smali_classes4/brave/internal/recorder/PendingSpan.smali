.class public final Lbrave/internal/recorder/PendingSpan;
.super Ljava/lang/Object;
.source "PendingSpan.java"


# instance fields
.field final clock:Lbrave/internal/recorder/TickClock;

.field final state:Lbrave/handler/MutableSpan;


# direct methods
.method constructor <init>(Lbrave/handler/MutableSpan;Lbrave/internal/recorder/TickClock;)V
    .locals 0
    .param p1, "state"    # Lbrave/handler/MutableSpan;
    .param p2, "clock"    # Lbrave/internal/recorder/TickClock;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lbrave/internal/recorder/PendingSpan;->state:Lbrave/handler/MutableSpan;

    .line 12
    iput-object p2, p0, Lbrave/internal/recorder/PendingSpan;->clock:Lbrave/internal/recorder/TickClock;

    .line 13
    return-void
.end method


# virtual methods
.method public clock()Lbrave/Clock;
    .locals 1

    .line 22
    iget-object v0, p0, Lbrave/internal/recorder/PendingSpan;->clock:Lbrave/internal/recorder/TickClock;

    return-object v0
.end method

.method public state()Lbrave/handler/MutableSpan;
    .locals 1

    .line 17
    iget-object v0, p0, Lbrave/internal/recorder/PendingSpan;->state:Lbrave/handler/MutableSpan;

    return-object v0
.end method
