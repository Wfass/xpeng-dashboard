.class public Lcom/xiaopeng/libconfig/ipc/AccountConfig;
.super Ljava/lang/Object;
.source "AccountConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/libconfig/ipc/AccountConfig$FaceIDRegisterAction;,
        Lcom/xiaopeng/libconfig/ipc/AccountConfig$AccountCommandBean;
    }
.end annotation


# static fields
.field public static final ACCOUNT_GRANT_LOGIN:I = 0x1

.field public static final ACCOUNT_GRANT_UNLOGIN:I = 0x2

.field public static final ACTION_ACCOUNT_OVER_TIME:Ljava/lang/String; = "com.xiaopeng.action.OVER_TIME"

.field public static final ACTION_OPEN_PAGE:Ljava/lang/String; = "com.xiaopeng.action.OPEN_ACCOUNT_RN_PAGE"

.field public static final ACTION_QR_LOGIN:Ljava/lang/String; = "com.xiaopeng.action.QR_LOGIN"

.field public static final CMD_FACEID_CLICK_RETRY:Ljava/lang/String; = "cmd_faceid_click_retry"

.field public static final CMD_FACEID_REGISTER_ON_ACTION:Ljava/lang/String; = "cmd_faceid_register_on_action"

.field public static final CMD_FACEID_REGISTER_ON_FAULT:Ljava/lang/String; = "cmd_faceid_register_on_fault"

.field public static final CMD_FACEID_REGISTER_ON_SHIELD:Ljava/lang/String; = "cmd_faceid_register_on_shield"

.field public static final CMD_FACEID_REGISTER_ON_SUCCESS:Ljava/lang/String; = "cmd_faceid_register_on_success"

.field public static final CMD_FACEID_REGISTER_ON_TERMINATED:Ljava/lang/String; = "cmd_faceid_register_on_terminated"

.field public static final CMD_FACEID_SKIP_REGISTER:Ljava/lang/String; = "cmd_faceid_skip_register"

.field public static final CMD_FACEID_START_REGISTER:Ljava/lang/String; = "cmd_faceid_start_register"

.field public static final FACEID_STARTUP_FAULT:Ljava/lang/String; = "faceid_startup_fault"

.field public static final FACEID_STARTUP_TIMED_OUT:Ljava/lang/String; = "faceid_startup_timed_out"

.field public static final GRADE_DRIVER:I = 0x4

.field public static final GRADE_OWNER:I = 0x1

.field public static final GRADE_TEMP:I = -0x1

.field public static final GRADE_TENANT:I = 0x3

.field public static final GRADE_USER:I = 0x2

.field public static final INVALID_TOKEN:Ljava/lang/String; = "invalid_token"

.field public static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final KEY_APP_ID:Ljava/lang/String; = "app_id"

.field public static final KEY_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final KEY_CLIENT:Ljava/lang/String; = "Client"

.field public static final KEY_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field public static final KEY_SIGN:Ljava/lang/String; = "sign"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final OVER_TIME_KEY:Ljava/lang/String; = "OVER_TIME_KEY"

.field public static final TEMP_NAME:Ljava/lang/String; = "\u672a\u767b\u5f55"

.field public static final TEMP_PHONE:Ljava/lang/String; = "\u65e0"

.field public static final TEMP_UID:J = -0x1L

.field public static final VALUE_CAR_CLIENT_DEFAULT:Ljava/lang/String; = "car.xmart.com/v1.0.0"

.field public static final VALUE_DEFAULT_TYPE_JSON:Ljava/lang/String; = "application/json"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
