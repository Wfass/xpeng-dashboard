.class public Lcom/xiaopeng/carcontrol/direct/support/MirrorControlCheckAction;
.super Ljava/lang/Object;
.source "MirrorControlCheckAction.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkSupport()Z
    .locals 1

    .line 11
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->checkIfMirrorControlPanelAvailable()Z

    move-result v0

    return v0
.end method
