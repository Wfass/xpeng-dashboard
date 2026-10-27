.class public Lahx;
.super Ljava/lang/Object;
.source "CarPackageManagerUtils.java"


# direct methods
.method public static a(Landroid/car/content/pm/CarPackageManager;Landroid/app/PendingIntent;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Landroid/car/content/pm/CarPackageManager;->isPendingIntentDistractionOptimized(Landroid/app/PendingIntent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
