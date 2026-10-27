.class public Lcom/xiaopeng/xuiservice/utils/AccountUtil$Constants;
.super Ljava/lang/Object;
.source "AccountUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/AccountUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constants"
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_XP_VEHICLE:Ljava/lang/String; = "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

.field public static final ACCOUNT_USER_TYPE:Ljava/lang/String; = "user_type"

.field public static final ACTION_CAR_ACCOUNT_STATUS:Ljava/lang/String; = "com.xiaopeng.xuiservice.ACTION_MITU_DEVICE_BINDSTATUS"

.field public static final AUTH_INFO_EXTRA_APP_ID:Ljava/lang/String; = "app_id"

.field public static final AUTH_INFO_EXTRA_APP_SECRET:Ljava/lang/String; = "app_secret"

.field public static final AUTH_TYPE_AUTH_CODE:Ljava/lang/String; = "com.xiaopeng.accountservice.AUTH_TYPE_AUTH_CODE"

.field public static final AUTH_TYPE_AUTH_OTP:Ljava/lang/String; = "com.xiaopeng.accountservice.AUTH_TYPE_AUTH_OTP"

.field public static final MESSAGE_MITU_VALID_TIME:Ljava/lang/String; = "validTime"

.field public static final USER_DATA_EXTRA_AVATAR:Ljava/lang/String; = "avatar"

.field public static final USER_DATA_EXTRA_MUSIC_VIP:Ljava/lang/String; = "music_vip"

.field public static final USER_DATA_EXTRA_UID:Ljava/lang/String; = "uid"

.field public static final USER_DATA_EXTRA_UPDATE:Ljava/lang/String; = "update"

.field public static final USER_DATA_MITU_DEVICE_BIND_STATUS:Ljava/lang/String; = "mitu_device_bind_status"

.field public static final USER_DATA_MITU_OPEN_ID:Ljava/lang/String; = "mitu_openid"

.field private static final USER_TYPE_DRIVER:I = 0x4

.field private static final USER_TYPE_TENANT:I = 0x3

.field private static final USER_TYPE_TOWNER:I = 0x1

.field private static final USER_TYPE_USER:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
