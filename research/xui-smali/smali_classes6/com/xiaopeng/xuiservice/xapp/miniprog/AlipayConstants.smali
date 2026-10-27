.class public Lcom/xiaopeng/xuiservice/xapp/miniprog/AlipayConstants;
.super Ljava/lang/Object;
.source "AlipayConstants.java"


# static fields
.field public static final AROME_API_TIME_OUT:J = 0x1d4c0L

.field public static final CONFIG_WIDTH:I = 0x262

.field public static final HARDWARE_ID:Ljava/lang/String;

.field public static final HARDWARE_NAME:Ljava/lang/String; = "xiaopeng p5"

.field public static final HOST_APP_ID:Ljava/lang/String; = "2021001153668035"

.field public static final KEY_MINI_PROG_SIGNATURE:Ljava/lang/String; = "MiniProgSignature"

.field public static final MINI_ALIPAY_PACKAGE_NAME:Ljava/lang/String; = "com.alipay.arome.app"

.field public static final MINI_ALIPAY_VERISON_NAME:Ljava/lang/String; = "MINI_ALIPAY_VERISON_NAME"

.field public static final PARAMS_QUERY:Ljava/lang/String; = "query"

.field public static final PARMAS_CONFIG:Ljava/lang/String; = "config"

.field public static final PARMAS_PAGE:Ljava/lang/String; = "page"

.field public static final PRODUCT_ID:J = 0x495599L

.field public static final TEST_DEVICE_ID:Ljava/lang/String; = "SNH100050000"

.field public static final TEST_HOST_APP_ID:Ljava/lang/String; = "2021001154663090"

.field public static final TEST_MINI_PROG_DEBUG:Z = false

.field public static final TEST_PRODUCT_ID:J = 0x4954ddL

.field public static final TEST_SIGNATURE:Ljava/lang/String; = "SWWotAXDfz62MzFco2Ir4pbvMOF7oFNznxQ/QV+pijHmy3nWtE0q7pkXjx3GLvlCEVAnsLzn1Pu7ZyqX6Xvaljnhuz1c1hLi90jc02TeHBklx6dpAptLoiwZnbwXQYjcTd8r86fp9xqCcu59XSfMnvuKkaT47OaotLNzvzx7s5yJHehmvaXnwisUPtCIpepum9EGs51nbtuWEW/ggVWeaJNPfP4Ijsf09aSlVPSVXaeHjSno+BtV8B9yAjLOvsig0aBmJG2lajQ+xYCheR/bIwqyqZ9/cZ5HhF5lMkZ4PlLnNOXKlVFuMT9Bc5fxBKWGN+MXy78K8Ui/yk+tnb2LQQ=="

.field public static final THEME_ACCENT_TITLE_COLOR:Ljava/lang/String; = "#8fFFFFFF"

.field public static final THEME_BG_COLOR:Ljava/lang/String; = "#5c000000"

.field public static final THEME_CONFIG_SHOW_TYPE:I = 0x15

.field public static final THEME_PANEL_BG_COLOR:Ljava/lang/String; = "#404752"

.field public static final THEME_SUB_TITLE_COLOR:Ljava/lang/String; = "#8fFFFFFF"

.field public static final THEME_TITLE_COLOR:Ljava/lang/String; = "#FFFFFF"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "persist.sys.mcu.hardwareId"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AlipayConstants;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AlipayConstants;->HARDWARE_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .line 59
    const-string v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
