.class public Lcom/android/car/ui/core/b;
.super Ljava/lang/Object;
.source "CarUi.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# direct methods
.method public static a(Landroid/app/Activity;)Lcom/android/car/ui/toolbar/c;
    .locals 0

    .line 96
    invoke-static {p0}, Lcom/android/car/ui/core/a;->a(Landroid/app/Activity;)Lcom/android/car/ui/core/a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/car/ui/core/a;->a()Lcom/android/car/ui/toolbar/c;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/app/Activity;)Lcom/android/car/ui/baselayout/a;
    .locals 0

    .line 154
    invoke-static {p0}, Lcom/android/car/ui/core/a;->a(Landroid/app/Activity;)Lcom/android/car/ui/core/a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/car/ui/core/a;->b()Lcom/android/car/ui/baselayout/a;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
