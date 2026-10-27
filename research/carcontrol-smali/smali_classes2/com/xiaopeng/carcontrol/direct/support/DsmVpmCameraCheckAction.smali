.class public Lcom/xiaopeng/carcontrol/direct/support/DsmVpmCameraCheckAction;
.super Ljava/lang/Object;
.source "DsmVpmCameraCheckAction.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkSupport()Z
    .locals 3

    const-string v0, "isSupportDsmCamera"

    .line 12
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "isVpmHwMiss"

    .line 13
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "isVpmSwReady"

    .line 14
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    :cond_0
    return v1
.end method
