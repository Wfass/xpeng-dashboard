.class public final synthetic Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$VsJ2CHw-STFfxapyIaUhAZKFoZI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/xpeng/guard/CarGuardModeService;

.field private final synthetic f$1:Landroid/car/xpeng/guard/CarGuardModeEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/xpeng/guard/CarGuardModeService;Landroid/car/xpeng/guard/CarGuardModeEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$VsJ2CHw-STFfxapyIaUhAZKFoZI;->f$0:Lcom/android/car/xpeng/guard/CarGuardModeService;

    iput-object p2, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$VsJ2CHw-STFfxapyIaUhAZKFoZI;->f$1:Landroid/car/xpeng/guard/CarGuardModeEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$VsJ2CHw-STFfxapyIaUhAZKFoZI;->f$0:Lcom/android/car/xpeng/guard/CarGuardModeService;

    iget-object v1, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$VsJ2CHw-STFfxapyIaUhAZKFoZI;->f$1:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-static {v0, v1}, Lcom/android/car/xpeng/guard/CarGuardModeService;->lambda$dispatchCarGuardModeChanged$0(Lcom/android/car/xpeng/guard/CarGuardModeService;Landroid/car/xpeng/guard/CarGuardModeEvent;)V

    return-void
.end method
