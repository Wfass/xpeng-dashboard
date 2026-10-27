.class public Lcom/xiaopeng/factory/Constant$MCUTEST;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MCUTEST"
.end annotation


# static fields
.field public static final EEPROM_RESULT_FAILURE:I = 0x1

.field public static final EEPROM_RESULT_SUCCESS:I = 0x2

.field public static final MCU_SERVER_CONNECTED:Ljava/lang/String; = "true"

.field public static final MCU_SERVER_CONNECTION_RESULT_TAG:Ljava/lang/String; = "result"

.field public static final MESSAGE_BATTERY_TEST:I = 0x1

.field public static final MESSAGE_CAN_TEST:I = 0x1

.field public static final MESSAGE_EEPROM_TEST:I = 0x1

.field public static final MESSAGE_SENSOR_TEST:I = 0x1

.field public static final RESULT_FAILURE:I = 0x1

.field public static final RESULT_SUCCESS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
