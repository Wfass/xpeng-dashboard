.class public Lcom/xiaopeng/carcontrol/CarConfig;
.super Ljava/lang/Object;
.source "CarConfig.java"


# static fields
.field public static final ACCOUNT_APP_ID:Ljava/lang/String;

.field public static final APP_ID:Ljava/lang/String; = "xp_car_setting_car"

.field public static final KEYCODE_CAR_SLIDE_DOWN:I = 0x43c

.field public static final KEYCODE_CAR_SLIDE_UP:I = 0x43b

.field public static final KEYCODE_LEFT_DOWN:I = 0x3e9

.field public static final KEYCODE_LEFT_LEFT:I = 0x3ea

.field public static final KEYCODE_LEFT_RIGHT:I = 0x3eb

.field public static final KEYCODE_LEFT_UP:I = 0x3e8

.field public static final KEYCODE_LONG_BACK:I = 0x40c

.field public static final KEYCODE_LONG_LEFT_DOWN:I = 0x3fd

.field public static final KEYCODE_LONG_LEFT_LEFT:I = 0x3fe

.field public static final KEYCODE_LONG_LEFT_RIGHT:I = 0x3ff

.field public static final KEYCODE_LONG_LEFT_UP:I = 0x3fc

.field public static final KEYCODE_LONG_RIGHT_DOWN:I = 0x408

.field public static final KEYCODE_LONG_RIGHT_LEFT:I = 0x409

.field public static final KEYCODE_LONG_RIGHT_RIGHT:I = 0x40a

.field public static final KEYCODE_LONG_RIGHT_UP:I = 0x407

.field public static final KEYCODE_NEW_LONG_LEFT_DOWN:I = 0x4c5

.field public static final KEYCODE_NEW_LONG_LEFT_LEFT:I = 0x4c6

.field public static final KEYCODE_NEW_LONG_LEFT_RIGHT:I = 0x4c7

.field public static final KEYCODE_NEW_LONG_LEFT_UP:I = 0x4c4

.field public static final KEYCODE_NEW_LONG_RIGHT_DOWN:I = 0x4c9

.field public static final KEYCODE_NEW_LONG_RIGHT_LEFT:I = 0x4ca

.field public static final KEYCODE_NEW_LONG_RIGHT_RIGHT:I = 0x4cb

.field public static final KEYCODE_NEW_LONG_RIGHT_UP:I = 0x4c8

.field public static final KEYCODE_OK:I = 0x3f7

.field public static final KEYCODE_RIGHT_DOWN:I = 0x3f4

.field public static final KEYCODE_RIGHT_LEFT:I = 0x3f5

.field public static final KEYCODE_RIGHT_RIGHT:I = 0x3f6

.field public static final KEYCODE_RIGHT_UP:I = 0x3f3

.field public static final PKG_NAME:Ljava/lang/String; = "com.xiaopeng.carcontrol"

.field public static final TPMS_USE_BAR:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_CONTROL:Ljava/lang/String;

    sput-object v0, Lcom/xiaopeng/carcontrol/CarConfig;->ACCOUNT_APP_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
