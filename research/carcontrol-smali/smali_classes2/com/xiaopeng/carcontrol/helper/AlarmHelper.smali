.class public Lcom/xiaopeng/carcontrol/helper/AlarmHelper;
.super Ljava/lang/Object;
.source "AlarmHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelActivityIntent(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "requestCode"
        }
    .end annotation

    const/high16 v0, 0x20000000

    .line 136
    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    invoke-static {p0, p1}, Lcom/xiaopeng/carcontrol/helper/AlarmHelper;->cancelAlarmForPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public static cancelAlarmForPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "pIntent"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "AlarmHelper"

    const-string p1, "cancel the pending intent ,called with a null pIntent"

    .line 50
    invoke-static {p0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "alarm"

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 54
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 55
    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    return-void
.end method

.method public static cancelBroadcastIntent(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "requestCode"
        }
    .end annotation

    const/high16 v0, 0x20000000

    .line 95
    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    invoke-static {p0, p1}, Lcom/xiaopeng/carcontrol/helper/AlarmHelper;->cancelAlarmForPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public static cancelServiceIntent(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "requestCode"
        }
    .end annotation

    const/high16 v0, 0x20000000

    .line 178
    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 180
    invoke-static {p0, p1}, Lcom/xiaopeng/carcontrol/helper/AlarmHelper;->cancelAlarmForPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public static createOrUpdateActivityIntent(Landroid/content/Context;JLandroid/content/Intent;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "alarmTime",
            "intent",
            "requestCode"
        }
    .end annotation

    const/high16 v0, 0x8000000

    .line 110
    invoke-static {p0, p4, p3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 111
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/helper/AlarmHelper;->setAlarmForPendingIntent(Landroid/content/Context;JLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static createOrUpdateBroadcastIntent(Landroid/content/Context;JLandroid/content/Intent;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "alarmTime",
            "intent",
            "requestCode"
        }
    .end annotation

    const/high16 v0, 0x8000000

    .line 68
    invoke-static {p0, p4, p3, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 69
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/helper/AlarmHelper;->setAlarmForPendingIntent(Landroid/content/Context;JLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static createOrUpdateServiceIntent(Landroid/content/Context;JLandroid/content/Intent;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "alarmTime",
            "intent",
            "requestCode"
        }
    .end annotation

    const/high16 v0, 0x8000000

    .line 152
    invoke-static {p0, p4, p3, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 153
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/helper/AlarmHelper;->setAlarmForPendingIntent(Landroid/content/Context;JLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static isExistActivityIntent(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "requestCode"
        }
    .end annotation

    const/high16 v0, 0x20000000

    .line 124
    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isExistBroadcastIntent(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "requestCode"
        }
    .end annotation

    const/high16 v0, 0x20000000

    .line 83
    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isExistServiceIntent(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "requestCode"
        }
    .end annotation

    const/high16 v0, 0x20000000

    .line 166
    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setAlarmForPendingIntent(Landroid/content/Context;JLandroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "alarmTime",
            "pIntent"
        }
    .end annotation

    const-string v0, "alarm"

    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method
