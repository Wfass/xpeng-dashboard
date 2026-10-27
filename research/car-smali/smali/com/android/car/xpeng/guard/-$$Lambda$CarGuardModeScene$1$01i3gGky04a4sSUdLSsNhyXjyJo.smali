.class public final synthetic Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeScene$1$01i3gGky04a4sSUdLSsNhyXjyJo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/xpeng/guard/CarGuardModeScene$1;

.field private final synthetic f$1:Landroid/car/hardware/property/CarPropertyEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/xpeng/guard/CarGuardModeScene$1;Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeScene$1$01i3gGky04a4sSUdLSsNhyXjyJo;->f$0:Lcom/android/car/xpeng/guard/CarGuardModeScene$1;

    iput-object p2, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeScene$1$01i3gGky04a4sSUdLSsNhyXjyJo;->f$1:Landroid/car/hardware/property/CarPropertyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeScene$1$01i3gGky04a4sSUdLSsNhyXjyJo;->f$0:Lcom/android/car/xpeng/guard/CarGuardModeScene$1;

    iget-object v1, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeScene$1$01i3gGky04a4sSUdLSsNhyXjyJo;->f$1:Landroid/car/hardware/property/CarPropertyEvent;

    invoke-static {v0, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene$1;->lambda$onEvent$0(Lcom/android/car/xpeng/guard/CarGuardModeScene$1;Landroid/car/hardware/property/CarPropertyEvent;)V

    return-void
.end method
