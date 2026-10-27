.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$poDzhsqckp-vK5mQueNXw0_U5h0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$poDzhsqckp-vK5mQueNXw0_U5h0;->f$0:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$poDzhsqckp-vK5mQueNXw0_U5h0;->f$0:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->lambda$observeData$1$ScenarioManager(Ljava/lang/String;)V

    return-void
.end method
