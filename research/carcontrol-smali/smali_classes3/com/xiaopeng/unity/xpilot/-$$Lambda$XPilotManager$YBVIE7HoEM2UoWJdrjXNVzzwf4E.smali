.class public final synthetic Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$YBVIE7HoEM2UoWJdrjXNVzzwf4E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$YBVIE7HoEM2UoWJdrjXNVzzwf4E;->f$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$YBVIE7HoEM2UoWJdrjXNVzzwf4E;->f$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->lambda$observeData$35$XPilotManager(Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;)V

    return-void
.end method
