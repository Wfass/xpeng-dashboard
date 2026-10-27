.class public final Landroid/car/builtin/app/PendingIntentHelper;
.super Ljava/lang/Object;
.source "PendingIntentHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;
    .locals 0

    .line 11
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
