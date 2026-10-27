.class public final synthetic Lcom/android/car/-$$Lambda$CarLocationService$qmNEicprx6IBpqW77REQuhk132M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/CarLocationService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/CarLocationService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarLocationService$qmNEicprx6IBpqW77REQuhk132M;->f$0:Lcom/android/car/CarLocationService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarLocationService$qmNEicprx6IBpqW77REQuhk132M;->f$0:Lcom/android/car/CarLocationService;

    invoke-static {v0}, Lcom/android/car/CarLocationService;->lambda$onReceive$1(Lcom/android/car/CarLocationService;)V

    return-void
.end method
