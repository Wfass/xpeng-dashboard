.class public final Lcom/xiaopeng/xuimanager/applist/ApplistConst;
.super Ljava/lang/Object;
.source "ApplistConst.java"


# static fields
.field public static final CATEGORY_ACCESS:I = 0x4

.field public static final CATEGORY_ALIPAY:I = 0x3

.field public static final CATEGORY_BROWSER_QUICK_LINK_APPS:I = 0x9

.field public static final CATEGORY_CARLINK:I = 0x6

.field public static final CATEGORY_DOWNLOADING_APPS:I = 0x8

.field public static final CATEGORY_HICAR:I = 0x5

.field public static final CATEGORY_MOBILE_APPS:I = 0xd

.field public static final CATEGORY_PRESET:I = 0x1

.field public static final CATEGORY_PRE_DOWNLOADED_APPS:I = 0xa

.field public static final CATEGORY_PRE_POSITION:I = 0x7

.field public static final CATEGORY_SECONDARY_AREA_APP:I = 0xb

.field public static final CATEGORY_THIRD:I = 0x2

.field public static final CATEGORY_XPAD_APPS:I = 0xc

.field public static final EVENT_APP_ADD:I = 0x2

.field public static final EVENT_APP_DATA_STATS_UPDATE:I = 0x7

.field public static final EVENT_APP_DOWNLOADING:I = 0x5

.field public static final EVENT_APP_INITIAL:I = 0x1

.field public static final EVENT_APP_IS_AUTHED:I = 0x8

.field public static final EVENT_APP_IS_LOADED:I = 0x9

.field public static final EVENT_APP_REMOVED:I = 0x4

.field public static final EVENT_APP_UPDATED:I = 0x3

.field public static final EVENT_APP_UPDATED_IN_SCREENS:I = 0x6

.field public static final INVALID_VALUE:I = -0x1

.field public static final KEY_APP_CHECK_HAS_ON_TOP:Ljava/lang/String; = "checkHasOnTop"

.field public static final KEY_APP_START_INTENT:Ljava/lang/String; = "startIntent"

.field public static final KEY_APP_START_TYPE:Ljava/lang/String; = "startType"

.field public static final KEY_IS_FIRST_LAUNCH:Ljava/lang/String; = "firstLaunch"

.field public static final KEY_SCREEN_ID:Ljava/lang/String; = "screenId"

.field public static final RET_APP_LAUNCH_EXCEPTION:I = -0x3ed

.field public static final RET_APP_LAUNCH_INTENT_NOT_EXIST:I = -0x3ec

.field public static final RET_APP_NOT_EXIST:I = -0x3ea

.field public static final RET_APP_NOT_FOREGROUND:I = -0x44c

.field public static final RET_APP_NOT_MATCH:I = -0x44d

.field public static final RET_BASE_ERROR:I = -0x3e8

.field public static final RET_CATEGORY_NOT_EXIST:I = -0x3ee

.field public static final RET_MANAGER_NOT_EXIST:I = -0x3eb

.field public static final RET_NOT_ALLOWED:I = -0x3e9

.field public static final RET_SUCCESS:I = 0x0

.field public static final STATUS_DOWNLOADING:I = 0x2

.field public static final STATUS_INSTALLING:I = 0x3

.field public static final STATUS_NORMAL:I = 0x1

.field public static final STATUS_POSITIONING:I = 0x4

.field public static final STATUS_REMOVED:I = 0x5

.field public static final STORE_PROVIDER_STATE_CANCELLED:I = 0x47e

.field public static final STORE_PROVIDER_STATE_COMPLETE:I = 0x44c

.field public static final STORE_PROVIDER_STATE_ERROR:I = 0x3e8

.field public static final STORE_PROVIDER_STATE_LOADING:I = 0x1

.field public static final STORE_PROVIDER_STATE_PAUSED:I = 0xc8

.field public static final STORE_PROVIDER_STATE_PENDING:I = 0x2

.field public static final STORE_PROVIDER_STATE_RUNNING:I = 0x64

.field public static final STORE_PROVIDER_STATE_RUNNING_DOWNLOAD:I = 0x65

.field public static final STORE_PROVIDER_STATE_RUNNING_INSTALLING:I = 0x66

.field public static final STORE_PROVIDER_STATE_UNKNOWN:I = 0x0

.field public static final VAL_APP_START_WITH_APPID:I = 0x0

.field public static final VAL_APP_START_WITH_PACKAGE_NAME:I = 0x1

.field private static final categoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/xiaopeng/xuimanager/applist/ApplistConst$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/applist/ApplistConst$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/applist/ApplistConst;->categoryMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCategoryMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 262
    sget-object v0, Lcom/xiaopeng/xuimanager/applist/ApplistConst;->categoryMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getCategoryName(I)Ljava/lang/String;
    .locals 2

    .line 266
    sget-object v0, Lcom/xiaopeng/xuimanager/applist/ApplistConst;->categoryMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Category"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
