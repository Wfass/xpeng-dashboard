.class public final synthetic L-$$Lambda$qw$Z3540xF3W3NYE1NMwbzwbfXq6hc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lqw;


# instance fields
.field private final synthetic f$0:Lqw;

.field private final synthetic f$1:Lqw;


# direct methods
.method public synthetic constructor <init>(Lqw;Lqw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$qw$Z3540xF3W3NYE1NMwbzwbfXq6hc;->f$0:Lqw;

    iput-object p2, p0, L-$$Lambda$qw$Z3540xF3W3NYE1NMwbzwbfXq6hc;->f$1:Lqw;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, L-$$Lambda$qw$Z3540xF3W3NYE1NMwbzwbfXq6hc;->f$0:Lqw;

    iget-object v1, p0, L-$$Lambda$qw$Z3540xF3W3NYE1NMwbzwbfXq6hc;->f$1:Lqw;

    invoke-static {v0, v1, p1, p2, p3}, Lqw;->lambda$Z3540xF3W3NYE1NMwbzwbfXq6hc(Lqw;Lqw;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
