.class public Lcom/xiaopeng/xmlconfig/Support$Url;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xmlconfig/Support;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Url"
.end annotation


# static fields
.field public static final ACTIVATE_XPU:Ljava/lang/String; = "ACTIVATE_XPU"

.field public static final CAR_CODE:Ljava/lang/String; = "CAR_CODE"

.field public static final CDU_CERT_CHECK:Ljava/lang/String; = "CDU_CERT_CHECK"

.field public static final CELLULAR_DATA_INFO:Ljava/lang/String; = "CELLULAR_DATA_INFO"

.field public static final CHECK_CDU_KEY:Ljava/lang/String; = "CHECK_CDU_KEY"

.field public static final CHECK_TBOX_KEY:Ljava/lang/String; = "CHECK_TBOX_KEY"

.field public static final CHECK_V18_CDU_KEY:Ljava/lang/String; = "CHECK_V18_CDU_KEY"

.field public static final CHECK_WIFI_KEY:Ljava/lang/String; = "CHECK_WIFI_KEY"

.field public static final CHECK_XPU_ACTIVATE_STATUS:Ljava/lang/String; = "CHECK_XPU_ACTIVATE_STATUS"

.field public static final CHECK_XPU_FACTORY_ACTIVATE_STATUS:Ljava/lang/String; = "CHECK_XPU_FACTORY_ACTIVATE_STATUS"

.field public static final GEN_UUID:Ljava/lang/String; = "GEN_UUID"

.field public static final INDIV_SERVICE:Ljava/lang/String; = "INDIV_SERVICE"

.field public static final INDIV_TEST_DECRYPTION:Ljava/lang/String; = "INDIV_TEST_DECRYPTION"

.field public static final INDIV_TEST_ENCRYPTION:Ljava/lang/String; = "INDIV_TEST_ENCRYPTION"

.field public static final REPLACE_XPU:Ljava/lang/String; = "REPLACE_XPU"

.field public static final REQUEST_CDU_KEY:Ljava/lang/String; = "REQUEST_CDU_KEY"

.field public static final REQUEST_PSU_KEY:Ljava/lang/String; = "REQUEST_PSU_KEY"

.field public static final REQUEST_REPAIR_PSU:Ljava/lang/String; = "REQUEST_REPAIR_PSU"

.field public static final REQUEST_TARGET_CHECK_MODE:Ljava/lang/String; = "REQUEST_TARGET_CHECK_MODE"

.field public static final REQUEST_TBOX_KEY:Ljava/lang/String; = "REQUEST_TBOX_KEY"

.field public static final REQUEST_TO_ENTER_AUTH_MODE:Ljava/lang/String; = "REQUEST_TO_ENTER_AUTH_MODE"

.field public static final REQUEST_WIFI_KEY:Ljava/lang/String; = "REQUEST_WIFI_KEY"

.field public static final TAG:Ljava/lang/String; = "Url"

.field public static final UPDATE_BLEKEY_MACADDR:Ljava/lang/String; = "UPDATE_BLEKEY_MACADDR"

.field public static final UPDATE_CDUID:Ljava/lang/String; = "UPDATE_CDUID"

.field public static final UPDATE_ICCID:Ljava/lang/String; = "UPDATE_ICCID"

.field public static final UPDATE_NFC_SEID:Ljava/lang/String; = "UPDATE_NFC_SEID"

.field public static final UPLOAD_AUTH_MODE:Ljava/lang/String; = "UPLOAD_AUTH_MODE"

.field public static final UPLOAD_BLEKEYS_MACADDR:Ljava/lang/String; = "UPLOAD_BLEKEYS_MACADDR"

.field public static final UPLOAD_ERROR_CODE:Ljava/lang/String; = "UPLOAD_ERROR_CODE"

.field public static final UPLOAD_HW_INFO:Ljava/lang/String; = "UPLOAD_HW_INFO"

.field public static final UPLOAD_REPAIR_MODE:Ljava/lang/String; = "UPLOAD_REPAIR_MODE"

.field public static final UPLOAD_REPAIR_MODE_STATUS:Ljava/lang/String; = "UPLOAD_REPAIR_MODE_STATUS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 522
    const-string v0, "host"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 518
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
