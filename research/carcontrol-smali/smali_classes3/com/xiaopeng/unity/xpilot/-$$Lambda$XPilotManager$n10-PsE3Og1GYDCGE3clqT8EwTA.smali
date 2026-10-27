.class public final synthetic Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$n10-PsE3Og1GYDCGE3clqT8EwTA;
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

    iput-object p1, p0, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$n10-PsE3Og1GYDCGE3clqT8EwTA;->f$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/-$$Lambda$XPilotManager$n10-PsE3Og1GYDCGE3clqT8EwTA;->f$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    invoke-static {v0, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->lambda$n10-PsE3Og1GYDCGE3clqT8EwTA(Lcom/xiaopeng/unity/xpilot/XPilotManager;Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;)V

    return-void
.end method
