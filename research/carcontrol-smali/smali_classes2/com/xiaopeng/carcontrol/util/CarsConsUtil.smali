.class public Lcom/xiaopeng/carcontrol/util/CarsConsUtil;
.super Ljava/lang/Object;
.source "CarsConsUtil.java"


# static fields
.field protected static final PROPERTY_BODY_COLOR:Ljava/lang/String; = "persist.sys.xiaopeng.bodyColor"

.field public static final PROPERTY_BODY_COLOR_BLACK:I = 0x13

.field public static final PROPERTY_BODY_COLOR_BLUE:I = 0x10

.field public static final PROPERTY_BODY_COLOR_BLUE2:I = 0x11

.field public static final PROPERTY_BODY_COLOR_GRAY:I = 0xf

.field public static final PROPERTY_BODY_COLOR_GREEN:I = 0x12

.field private static final PROPERTY_BODY_COLOR_INVALID:I = 0x0

.field public static final PROPERTY_BODY_COLOR_SILVER:I = 0xe

.field public static final PROPERTY_BODY_COLOR_WHITE:I = 0xc

.field private static final TAG:Ljava/lang/String; = "CarConfigHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getE38BodyColor()I
    .locals 4

    const-string v0, "persist.sys.xiaopeng.bodyColor"

    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Car body color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CarConfigHelper"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0xc

    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
