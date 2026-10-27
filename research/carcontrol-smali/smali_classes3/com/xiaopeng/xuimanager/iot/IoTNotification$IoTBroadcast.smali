.class public final Lcom/xiaopeng/xuimanager/iot/IoTNotification$IoTBroadcast;
.super Ljava/lang/Object;
.source "IoTNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/iot/IoTNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IoTBroadcast"
.end annotation


# static fields
.field public static final ACTION_AIOT_NOTIFICATION:Ljava/lang/String; = "com.xiaopeng.intent.action.AIOT_NOTIFICATION"

.field public static final EXTRA_DEVICE_PROPERTY_NAME:Ljava/lang/String; = "extra_device_property_name"

.field public static final EXTRA_DEVICE_PROPERTY_VALUE:Ljava/lang/String; = "extra_device_property_value"

.field public static final EXTRA_DEVICE_TYPE:Ljava/lang/String; = "extra_device_type"

.field public static final KEY_BD_EVENT_TYPE:Ljava/lang/String; = "bd_event_type"

.field public static final KEY_EVENT_STAT_NOTIFY:Ljava/lang/String; = "key_event_stat_notify"

.field public static final TYPE_EVENT_PROP_RAW:Ljava/lang/String; = "type_event_prop_raw"

.field public static final TYPE_EVENT_STAT_NOTIFY:Ljava/lang/String; = "type_event_stat_notify"

.field public static final VAL_FRIDGE_DOOR_OPEN:Ljava/lang/String; = "notify_fridge_door_open"

.field public static final VAL_NOTIFY_FRAGRANCE_INSERT:Ljava/lang/String; = "notify_fragrance_insert"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
