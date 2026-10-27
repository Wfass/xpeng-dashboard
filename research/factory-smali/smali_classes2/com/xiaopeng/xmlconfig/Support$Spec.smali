.class public Lcom/xiaopeng/xmlconfig/Support$Spec;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xmlconfig/Support;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# static fields
.field public static final BUILD_SPECIAL_FACTORY:Ljava/lang/String; = "BUILD_SPECIAL_FACTORY"

.field public static final PROPERTY_PROCESS_CONSOLE:Ljava/lang/String; = "PROPERTY_PROCESS_CONSOLE"

.field public static final PROPERTY_VALUE_CHN_REGION:Ljava/lang/String; = "PROPERTY_VALUE_CHN_REGION"

.field public static final PROPERTY_VALUE_ENG:Ljava/lang/String; = "PROPERTY_VALUE_ENG"

.field public static final PROPERTY_VALUE_FALSE:Ljava/lang/String; = "PROPERTY_VALUE_FALSE"

.field public static final PROPERTY_VALUE_HCILOG_OFF:Ljava/lang/String; = "PROPERTY_VALUE_HCILOG_OFF"

.field public static final PROPERTY_VALUE_HCILOG_ON:Ljava/lang/String; = "PROPERTY_VALUE_HCILOG_ON"

.field public static final PROPERTY_VALUE_MTP_ADB:Ljava/lang/String; = "PROPERTY_VALUE_MTP_ADB"

.field public static final PROPERTY_VALUE_NONE:Ljava/lang/String; = "PROPERTY_VALUE_NONE"

.field public static final PROPERTY_VALUE_OFF:Ljava/lang/String; = "PROPERTY_VALUE_OFF"

.field public static final PROPERTY_VALUE_ON:Ljava/lang/String; = "PROPERTY_VALUE_ON"

.field public static final PROPERTY_VALUE_RAMDUMP_ON:Ljava/lang/String; = "PROPERTY_VALUE_RAMDUMP_ON"

.field public static final PROPERTY_VALUE_RUNNING:Ljava/lang/String; = "PROPERTY_VALUE_RUNNING"

.field public static final PROPERTY_VALUE_STOPPED:Ljava/lang/String; = "PROPERTY_VALUE_STOPPED"

.field public static final PROPERTY_VALUE_TRUE:Ljava/lang/String; = "PROPERTY_VALUE_TRUE"

.field public static final PROPERTY_VALUE_USER:Ljava/lang/String; = "PROPERTY_VALUE_USER"

.field public static final PROPERTY_VALUE_USERDEBUG:Ljava/lang/String; = "PROPERTY_VALUE_USERDEBUG"

.field public static final SCREEN_HW_VER_CMD:Ljava/lang/String; = "SCREEN_HW_VER_CMD"

.field public static final SCREEN_SW_VER_CMD:Ljava/lang/String; = "SCREEN_SW_VER_CMD"

.field public static final TAG:Ljava/lang/String; = "Spec"

.field public static final TOUCH_TEST_HEIGTH:Ljava/lang/String; = "TOUCH_TEST_HEIGTH"

.field public static final TOUCH_TEST_WIDTH:Ljava/lang/String; = "TOUCH_TEST_WIDTH"

.field public static final USB_MODE_HOST:Ljava/lang/String; = "USB_MODE_HOST"

.field public static final USB_MODE_PERIPHERAL:Ljava/lang/String; = "USB_MODE_PERIPHERAL"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 112
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getByte(Ljava/lang/String;)B
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 116
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$300(Ljava/lang/String;Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public static getDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .line 136
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$600(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFloat(Ljava/lang/String;)F
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 132
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$500(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 124
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$400(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .line 128
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$700(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 120
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
