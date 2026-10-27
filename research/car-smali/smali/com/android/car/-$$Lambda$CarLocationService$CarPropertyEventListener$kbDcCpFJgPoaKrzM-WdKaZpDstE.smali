.class public final synthetic Lcom/android/car/-$$Lambda$CarLocationService$CarPropertyEventListener$kbDcCpFJgPoaKrzM-WdKaZpDstE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/CarLocationService$CarPropertyEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/CarLocationService$CarPropertyEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarLocationService$CarPropertyEventListener$kbDcCpFJgPoaKrzM-WdKaZpDstE;->f$0:Lcom/android/car/CarLocationService$CarPropertyEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarLocationService$CarPropertyEventListener$kbDcCpFJgPoaKrzM-WdKaZpDstE;->f$0:Lcom/android/car/CarLocationService$CarPropertyEventListener;

    invoke-static {v0}, Lcom/android/car/CarLocationService$CarPropertyEventListener;->lambda$onEvent$0(Lcom/android/car/CarLocationService$CarPropertyEventListener;)V

    return-void
.end method
