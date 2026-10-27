.class public Lcom/xiaopeng/lludancemanager/helper/LluDanceAlarmHelper;
.super Ljava/lang/Object;
.source "LluDanceAlarmHelper.java"


# static fields
.field public static final ACTIVITY_CHANGED_RECEIVER_ACTION:Ljava/lang/String; = "com.xiaopeng.intent.action.ACTIVITY_CHANGED"

.field public static final DANCE_ORDER_TIME_ALARM_ACTION:Ljava/lang/String; = "com.xiaopeng.llu.dance.ALARM_TIME_OUT"

.field public static final EXTRA_WINDOW_LEVEL:Ljava/lang/String; = "android.intent.extra.WINDOW_LEVEL"

.field public static final ORDER_PLAY_DANCE_ITEM_RES_EFFECT_NAME:Ljava/lang/String; = "order_play_dance_item_res_effect_name"

.field public static final ORDER_PLAY_DANCE_ITEM_RES_ID:Ljava/lang/String; = "order_play_dance_item_res_id"

.field public static final ORDER_PLAY_DANCE_ITEM_TIME:Ljava/lang/String; = "order_play_dance_item_time"

.field public static final ORDER_PLAY_DANCE_TITLE:Ljava/lang/String; = "order_play_dance_item_title"

.field private static final ORDER_PLAY_TIME_REQUEST_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LluDanceAlarmHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alarmUpForDance(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 38
    invoke-static {}, Lcom/xiaopeng/lludancemanager/helper/LluDanceAlarmHelper;->buildIntentForDanceAlarm()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x20000000

    .line 39
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 40
    sget-object v0, Lcom/xiaopeng/lludancemanager/helper/LluDanceAlarmHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alarm up = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static buildIntentForDanceAlarm()Landroid/content/Intent;
    .locals 2

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.llu.dance.ALARM_TIME_OUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cancelAlarmForDance(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/xiaopeng/lludancemanager/helper/LluDanceAlarmHelper;->buildIntentForDanceAlarm()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 46
    invoke-static {p0, v0, v1}, Lcom/xiaopeng/carcontrol/helper/AlarmHelper;->cancelBroadcastIntent(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 47
    sget-object p0, Lcom/xiaopeng/lludancemanager/helper/LluDanceAlarmHelper;->TAG:Ljava/lang/String;

    const-string v0, "cancel alarm for dance"

    invoke-static {p0, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAlarmForDance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resId",
            "effectName",
            "orderedTime",
            "title"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/xiaopeng/lludancemanager/helper/LluDanceAlarmHelper;->buildIntentForDanceAlarm()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "order_play_dance_item_res_id"

    .line 27
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "order_play_dance_item_res_effect_name"

    .line 28
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "order_play_dance_item_time"

    .line 29
    invoke-virtual {v0, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "order_play_dance_item_title"

    .line 30
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    sget-object p2, Lcom/xiaopeng/lludancemanager/helper/LluDanceAlarmHelper;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "schedule to play res id = "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 33
    invoke-static {p0, p3, p4, v0, p1}, Lcom/xiaopeng/carcontrol/helper/AlarmHelper;->createOrUpdateBroadcastIntent(Landroid/content/Context;JLandroid/content/Intent;I)V

    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "time sync for llu dance, system current time = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "trigger at millis = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
