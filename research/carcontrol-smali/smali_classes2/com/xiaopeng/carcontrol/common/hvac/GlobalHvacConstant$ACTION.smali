.class public final Lcom/xiaopeng/carcontrol/common/hvac/GlobalHvacConstant$ACTION;
.super Ljava/lang/Object;
.source "GlobalHvacConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/common/hvac/GlobalHvacConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ACTION"
.end annotation


# static fields
.field public static final ACTION_AIR_PROTECT_REMIND:Ljava/lang/String; = "com.xiaopeng.broadcast.AIR_PROTECT_REMIND"

.field public static final ACTION_AUTO_SHOW_RECOVERY:Ljava/lang/String; = "com.xiaopeng.intent.action.ACTION_AUTO_SHOW_RECOVERY"

.field public static final ACTION_HVAC_SPEECH_COMMAND:Ljava/lang/String; = "com.xiaopeng.broadcast.HVAC_SPEECH_COMMAND"

.field public static final ACTION_OTA_HVAC_DATA_CHECK:Ljava/lang/String; = "com.xiaopeng.datacompare.broadcast"

.field public static final ACTION_SHOW_HVAC_PANEL:Ljava/lang/String; = "com.xiaopeng.carcontrol.intent.action.SHOW_HVAC_PANEL"

.field public static final ACTION_SHOW_SEAT_HEAT_VENT_DIRECT:Ljava/lang/String; = "ac/seat_heat_vent"

.field public static final ACTION_SHOW_SFS_DIRECT:Ljava/lang/String; = "perfume"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
