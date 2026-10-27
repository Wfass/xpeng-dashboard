.class public final synthetic Lcom/android/car/-$$Lambda$CallbackStatistics$46x2cRSeBPCn9vV_355BLTtqkho;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CallbackStatistics$46x2cRSeBPCn9vV_355BLTtqkho;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/car/-$$Lambda$CallbackStatistics$46x2cRSeBPCn9vV_355BLTtqkho;->f$1:I

    iput-object p3, p0, Lcom/android/car/-$$Lambda$CallbackStatistics$46x2cRSeBPCn9vV_355BLTtqkho;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CallbackStatistics$46x2cRSeBPCn9vV_355BLTtqkho;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/android/car/-$$Lambda$CallbackStatistics$46x2cRSeBPCn9vV_355BLTtqkho;->f$1:I

    iget-object v2, p0, Lcom/android/car/-$$Lambda$CallbackStatistics$46x2cRSeBPCn9vV_355BLTtqkho;->f$2:Landroid/os/IBinder;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/android/car/CallbackStatistics;->lambda$addPropMethodCallCount$0(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Lcom/android/car/CallbackStatistics$ProcessInfo;

    move-result-object p1

    return-object p1
.end method
