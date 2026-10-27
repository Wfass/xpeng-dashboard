.class public Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$Constants;
.super Ljava/lang/Object;
.source "XMiniProgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Constants"
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_XP_VEHICLE:Ljava/lang/String; = "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

.field public static final ACCOUNT_USER_TYPE:Ljava/lang/String; = "user_type"

.field public static final AUTH_INFO_EXTRA_APP_ID:Ljava/lang/String; = "app_id"

.field public static final AUTH_INFO_EXTRA_APP_SECRET:Ljava/lang/String; = "app_secret"

.field public static final AUTH_TYPE_AUTH_CODE:Ljava/lang/String; = "com.xiaopeng.accountservice.AUTH_TYPE_AUTH_CODE"

.field public static final AUTH_TYPE_AUTH_OTP:Ljava/lang/String; = "com.xiaopeng.accountservice.AUTH_TYPE_AUTH_OTP"

.field public static final USER_DATA_EXTRA_AVATAR:Ljava/lang/String; = "avatar"

.field public static final USER_DATA_EXTRA_UID:Ljava/lang/String; = "uid"

.field public static final USER_DATA_EXTRA_UPDATE:Ljava/lang/String; = "update"

.field private static final USER_TYPE_DRIVER:I = 0x4

.field private static final USER_TYPE_TENANT:I = 0x3

.field private static final USER_TYPE_TOWNER:I = 0x1

.field private static final USER_TYPE_USER:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    .line 991
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$Constants;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
