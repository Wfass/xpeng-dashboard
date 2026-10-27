.class public final synthetic Lcom/android/car/-$$Lambda$CarConditionService$4jwYjOVcD1M6Xg4fecAvPf2ASwY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarConditionService$4jwYjOVcD1M6Xg4fecAvPf2ASwY;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarConditionService$4jwYjOVcD1M6Xg4fecAvPf2ASwY;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/car/CarConditionService$Client;

    invoke-static {v0, p1}, Lcom/android/car/CarConditionService;->lambda$dump$1(Ljava/io/PrintWriter;Lcom/android/car/CarConditionService$Client;)V

    return-void
.end method
