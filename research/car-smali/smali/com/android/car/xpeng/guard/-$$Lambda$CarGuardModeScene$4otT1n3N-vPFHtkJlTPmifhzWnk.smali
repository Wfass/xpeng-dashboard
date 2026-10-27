.class public final synthetic Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeScene$4otT1n3N-vPFHtkJlTPmifhzWnk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/xpeng/guard/CarGuardModeScene;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeScene$4otT1n3N-vPFHtkJlTPmifhzWnk;->f$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    iput p2, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeScene$4otT1n3N-vPFHtkJlTPmifhzWnk;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeScene$4otT1n3N-vPFHtkJlTPmifhzWnk;->f$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    iget v1, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeScene$4otT1n3N-vPFHtkJlTPmifhzWnk;->f$1:I

    invoke-static {v0, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->lambda$setCarGuardModeLevel$1(Lcom/android/car/xpeng/guard/CarGuardModeScene;I)V

    return-void
.end method
