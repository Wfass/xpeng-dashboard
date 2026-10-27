.class public Lcom/irdeto/securesdk/upgrade/UpgradeManager;
.super Ljava/lang/Object;
.source "UpgradeManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static O000000o(Landroid/content/Context;Lcom/irdeto/securesdk/upgrade/Upgradelistener;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/irdeto/securesdk/upgrade/UpgradeManager;->nupgradeCheck(Landroid/content/Context;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static native nupgradeCheck(Landroid/content/Context;Ljava/lang/Object;)I
.end method
