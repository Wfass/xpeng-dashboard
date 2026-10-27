.class public final synthetic Lcom/android/car/-$$Lambda$CallbackStatistics$Be2wkbQ3a22EU9jht7rdi7_3lNU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/car/CallbackStatistics;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/CallbackStatistics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CallbackStatistics$Be2wkbQ3a22EU9jht7rdi7_3lNU;->f$0:Lcom/android/car/CallbackStatistics;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CallbackStatistics$Be2wkbQ3a22EU9jht7rdi7_3lNU;->f$0:Lcom/android/car/CallbackStatistics;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/android/car/CallbackStatistics;->lambda$checkClientsCallback$5(Lcom/android/car/CallbackStatistics;Ljava/util/Map$Entry;)V

    return-void
.end method
