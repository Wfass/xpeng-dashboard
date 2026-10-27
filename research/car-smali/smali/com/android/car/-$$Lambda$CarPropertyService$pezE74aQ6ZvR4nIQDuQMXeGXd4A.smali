.class public final synthetic Lcom/android/car/-$$Lambda$CarPropertyService$pezE74aQ6ZvR4nIQDuQMXeGXd4A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/car/CarPropertyService;

.field private final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/CarPropertyService;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarPropertyService$pezE74aQ6ZvR4nIQDuQMXeGXd4A;->f$0:Lcom/android/car/CarPropertyService;

    iput-object p2, p0, Lcom/android/car/-$$Lambda$CarPropertyService$pezE74aQ6ZvR4nIQDuQMXeGXd4A;->f$1:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarPropertyService$pezE74aQ6ZvR4nIQDuQMXeGXd4A;->f$0:Lcom/android/car/CarPropertyService;

    iget-object v1, p0, Lcom/android/car/-$$Lambda$CarPropertyService$pezE74aQ6ZvR4nIQDuQMXeGXd4A;->f$1:Ljava/io/PrintWriter;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, v1, p1}, Lcom/android/car/CarPropertyService;->lambda$dump$7(Lcom/android/car/CarPropertyService;Ljava/io/PrintWriter;Ljava/util/Map$Entry;)V

    return-void
.end method
