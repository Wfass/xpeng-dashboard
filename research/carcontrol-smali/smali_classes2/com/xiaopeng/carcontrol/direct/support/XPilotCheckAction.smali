.class public Lcom/xiaopeng/carcontrol/direct/support/XPilotCheckAction;
.super Ljava/lang/Object;
.source "XPilotCheckAction.java"

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

    const-string v0, "persist.sys.xiaopeng.Package1"

    .line 11
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ConfigUtil;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
