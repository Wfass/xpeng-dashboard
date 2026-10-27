.class public final synthetic Landroid/car/xpeng/mode/-$$Lambda$CarLeaveModeManager$3rVOP__aS5qWQ40puJZWlofvXp0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/xpeng/mode/CarLeaveModeManager;

.field public final synthetic f$1:Landroid/car/xpeng/mode/CarLeaveModeEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/car/xpeng/mode/CarLeaveModeManager;Landroid/car/xpeng/mode/CarLeaveModeEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/mode/-$$Lambda$CarLeaveModeManager$3rVOP__aS5qWQ40puJZWlofvXp0;->f$0:Landroid/car/xpeng/mode/CarLeaveModeManager;

    iput-object p2, p0, Landroid/car/xpeng/mode/-$$Lambda$CarLeaveModeManager$3rVOP__aS5qWQ40puJZWlofvXp0;->f$1:Landroid/car/xpeng/mode/CarLeaveModeEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/car/xpeng/mode/-$$Lambda$CarLeaveModeManager$3rVOP__aS5qWQ40puJZWlofvXp0;->f$0:Landroid/car/xpeng/mode/CarLeaveModeManager;

    iget-object v1, p0, Landroid/car/xpeng/mode/-$$Lambda$CarLeaveModeManager$3rVOP__aS5qWQ40puJZWlofvXp0;->f$1:Landroid/car/xpeng/mode/CarLeaveModeEvent;

    invoke-virtual {v0, v1}, Landroid/car/xpeng/mode/CarLeaveModeManager;->lambda$handleCarLeaveModeEventChanged$0$CarLeaveModeManager(Landroid/car/xpeng/mode/CarLeaveModeEvent;)V

    return-void
.end method
