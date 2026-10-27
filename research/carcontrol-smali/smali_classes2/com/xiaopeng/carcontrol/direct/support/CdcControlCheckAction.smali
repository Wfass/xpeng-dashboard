.class public Lcom/xiaopeng/carcontrol/direct/support/CdcControlCheckAction;
.super Ljava/lang/Object;
.source "CdcControlCheckAction.java"

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
    .locals 1

    const-string v0, "isSupportCdcControl"

    .line 12
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
