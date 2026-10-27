.class public final synthetic Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$1PBQqmTcgCY-ciYV7NGuna67IGk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/xpeng/guard/CarGuardModeService;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/xpeng/guard/CarGuardModeService;ILjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$1PBQqmTcgCY-ciYV7NGuna67IGk;->f$0:Lcom/android/car/xpeng/guard/CarGuardModeService;

    iput p2, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$1PBQqmTcgCY-ciYV7NGuna67IGk;->f$1:I

    iput-object p3, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$1PBQqmTcgCY-ciYV7NGuna67IGk;->f$2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$1PBQqmTcgCY-ciYV7NGuna67IGk;->f$0:Lcom/android/car/xpeng/guard/CarGuardModeService;

    iget v1, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$1PBQqmTcgCY-ciYV7NGuna67IGk;->f$1:I

    iget-object v2, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$1PBQqmTcgCY-ciYV7NGuna67IGk;->f$2:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/android/car/xpeng/guard/CarGuardModeService;->lambda$dispatchOtherStatistics$3(Lcom/android/car/xpeng/guard/CarGuardModeService;ILjava/util/Map;)V

    return-void
.end method
