.class Lcom/android/car/xpeng/guard/CarGuardModeService$1;
.super Ljava/lang/Object;
.source "CarGuardModeService.java"

# interfaces
.implements Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/xpeng/guard/CarGuardModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/xpeng/guard/CarGuardModeService;


# direct methods
.method constructor <init>(Lcom/android/car/xpeng/guard/CarGuardModeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/xpeng/guard/CarGuardModeService;

    .line 65
    iput-object p1, p0, Lcom/android/car/xpeng/guard/CarGuardModeService$1;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarGuardModeActiveChanged(ZI)V
    .locals 1
    .param p1, "ready"    # Z
    .param p2, "reason"    # I

    .line 78
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService$1;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/xpeng/guard/CarGuardModeService;->dispatchCarGuardModeActiveChanged(ZI)V

    .line 79
    return-void
.end method

.method public onCarGuardModeChanged(Landroid/car/xpeng/guard/CarGuardModeEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/car/xpeng/guard/CarGuardModeEvent;

    .line 68
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService$1;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeService;

    invoke-virtual {v0, p1}, Lcom/android/car/xpeng/guard/CarGuardModeService;->dispatchCarGuardModeChanged(Landroid/car/xpeng/guard/CarGuardModeEvent;)V

    .line 69
    return-void
.end method

.method public onCarGuardModeLevelChanged(II)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "reason"    # I

    .line 73
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService$1;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/xpeng/guard/CarGuardModeService;->dispatchCarGuardModeLevel(II)V

    .line 74
    return-void
.end method

.method public onOtherStatistics(ILjava/util/Map;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService$1;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/xpeng/guard/CarGuardModeService;->dispatchOtherStatistics(ILjava/util/Map;)V

    .line 84
    return-void
.end method
