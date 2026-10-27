.class public final synthetic Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$tdxQJ-c1uQZNONqacjR18EZeALg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/xpeng/guard/CarGuardModeManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Landroid/car/xpeng/guard/CarGuardModeManager;ILjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$tdxQJ-c1uQZNONqacjR18EZeALg;->f$0:Landroid/car/xpeng/guard/CarGuardModeManager;

    iput p2, p0, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$tdxQJ-c1uQZNONqacjR18EZeALg;->f$1:I

    iput-object p3, p0, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$tdxQJ-c1uQZNONqacjR18EZeALg;->f$2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$tdxQJ-c1uQZNONqacjR18EZeALg;->f$0:Landroid/car/xpeng/guard/CarGuardModeManager;

    iget v1, p0, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$tdxQJ-c1uQZNONqacjR18EZeALg;->f$1:I

    iget-object v2, p0, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$tdxQJ-c1uQZNONqacjR18EZeALg;->f$2:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Landroid/car/xpeng/guard/CarGuardModeManager;->lambda$dispatchOtherStatistics$2$CarGuardModeManager(ILjava/util/Map;)V

    return-void
.end method
