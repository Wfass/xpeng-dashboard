.class public Lcom/alibaba/sdk/android/man/util/UTWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BIZ_CRASH_ACTIVE:Ljava/lang/String; = "biz_crash_active"

.field public static final BIZ_CUSTOM_ACTIVE:Ljava/lang/String; = "biz_custom_active"

.field public static final BIZ_PAGE_ACTIVE:Ljava/lang/String; = "biz_page_active"

.field public static final BIZ_PERF_ACTIVE:Ljava/lang/String; = "biz_perf_active"

.field public static final BIZ_USER_ACTIVE:Ljava/lang/String; = "biz_user_active"

.field public static final BZ_ACTIVE:Ljava/lang/String; = "biz_active"

.field private static final ERR_LISTENER:Lcom/alibaba/sdk/android/beacon/Beacon$OnServiceErrListener;

.field private static final MODULE:Ljava/lang/String; = "man"

.field public static final PAGE_ASSIST_TYPE:Ljava/lang/String; = "1"

.field public static final PAGE_BASIC_TYPE:Ljava/lang/String; = "2"

.field public static final PERF_ADVANCE_TYPE:Ljava/lang/String; = "2"

.field public static final PERF_CUSTOM_TYPE:Ljava/lang/String; = "3"

.field public static final PERF_STANDARD_TYPE:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "UTWrapper"

.field private static final UPDATE_LISTENER:Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;

.field public static final USER_LOGIN_TYPE:Ljava/lang/String; = "2"

.field public static final USER_REGIST_TYPE:Ljava/lang/String; = "1"

.field private static beacon:Lcom/alibaba/sdk/android/beacon/Beacon;

.field private static enable:Z

.field private static isAlreadySendUtMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static tracker:Lcom/alibaba/sdk/android/utils/AlicloudTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->enable:Z

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->isAlreadySendUtMap:Ljava/util/Map;

    .line 90
    new-instance v0, Lcom/alibaba/sdk/android/man/util/UTWrapper$1;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/man/util/UTWrapper$1;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->UPDATE_LISTENER:Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;

    .line 122
    new-instance v0, Lcom/alibaba/sdk/android/man/util/UTWrapper$2;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/man/util/UTWrapper$2;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->ERR_LISTENER:Lcom/alibaba/sdk/android/beacon/Beacon$OnServiceErrListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/alibaba/sdk/android/beacon/Beacon;
    .locals 1

    .line 23
    sget-object v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->beacon:Lcom/alibaba/sdk/android/beacon/Beacon;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 23
    sput-boolean p0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->enable:Z

    return p0
.end method

.method public static commitCrashEvent()V
    .locals 1

    .line 180
    sget-boolean v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->enable:Z

    if-eqz v0, :cond_1

    const-string v0, "biz_crash_active"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->isAlreadySendUI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    const-string v0, "biz_crash_active"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitEvent(Ljava/lang/String;)V

    .line 184
    return-void

    .line 181
    :cond_1
    :goto_0
    return-void
.end method

.method public static commitCustomEvent()V
    .locals 1

    .line 173
    sget-boolean v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->enable:Z

    if-eqz v0, :cond_1

    const-string v0, "biz_custom_active"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->isAlreadySendUI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    const-string v0, "biz_custom_active"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitEvent(Ljava/lang/String;)V

    .line 177
    return-void

    .line 174
    :cond_1
    :goto_0
    return-void
.end method

.method public static commitDAUEvent(Landroid/content/Context;)V
    .locals 3

    .line 132
    sget-boolean v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->enable:Z

    if-eqz v0, :cond_0

    const-string v0, "biz_active"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->isAlreadySendUI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const-string v0, "biz_active"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitEvent(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;->AMS_EXTINFO_KEY_VERSION:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.2.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_MAN:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    invoke-static {p0, v1, v0}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->asyncReport(Landroid/content/Context;Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V

    .line 139
    :cond_0
    return-void
.end method

.method private static commitEvent(Ljava/lang/String;)V
    .locals 3

    .line 142
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitEvent(Ljava/lang/String;JLjava/util/Map;)V

    .line 143
    return-void
.end method

.method private static commitEvent(Ljava/lang/String;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 187
    sget-boolean v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->enable:Z

    if-nez v0, :cond_0

    .line 188
    return-void

    .line 191
    :cond_0
    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->tracker:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->sendCustomHit(Ljava/lang/String;JLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    goto :goto_0

    .line 192
    :catch_0
    move-exception p1

    .line 193
    const-string p2, "UTWrapper"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "commitEvent "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Exception "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    :goto_0
    return-void
.end method

.method public static commitPageEvent(Ljava/lang/String;)V
    .locals 3

    .line 146
    sget-boolean v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->enable:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "biz_page_active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->isAlreadySendUI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    const-string v1, "type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string p0, "biz_page_active"

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitEvent(Ljava/lang/String;JLjava/util/Map;)V

    .line 152
    return-void

    .line 147
    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPerfEvent(Ljava/lang/String;)V
    .locals 3

    .line 164
    sget-boolean v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->enable:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "biz_perf_active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->isAlreadySendUI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 168
    const-string v1, "type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string p0, "biz_perf_active"

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitEvent(Ljava/lang/String;JLjava/util/Map;)V

    .line 170
    return-void

    .line 165
    :cond_1
    :goto_0
    return-void
.end method

.method public static commitUserEvent(Ljava/lang/String;)V
    .locals 3

    .line 155
    sget-boolean v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->enable:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "biz_user_active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->isAlreadySendUI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 159
    const-string v1, "type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string p0, "biz_user_active"

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitEvent(Ljava/lang/String;JLjava/util/Map;)V

    .line 161
    return-void

    .line 156
    :cond_1
    :goto_0
    return-void
.end method

.method private static isAlreadySendUI(Ljava/lang/String;)Z
    .locals 3

    .line 209
    sget-object v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->isAlreadySendUtMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->isAlreadySendUtMap:Ljava/util/Map;

    .line 213
    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->isAlreadySendUtMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 214
    sget-object v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->isAlreadySendUtMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const/4 p0, 0x0

    return p0

    .line 217
    :cond_1
    return v1
.end method

.method public static isApkDebugable(Landroid/content/Context;)Z
    .locals 1

    .line 200
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 201
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 202
    :catch_0
    move-exception p0

    .line 205
    return v0
.end method

.method public static utInit(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    .locals 3

    .line 59
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->isApkDebugable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->setLogEnabled(Z)V

    .line 62
    :cond_0
    invoke-static {p2}, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;->getInstance(Landroid/app/Application;)Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;

    move-result-object v0

    const-string v1, "man"

    const-string v2, "1.2.4"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;->getTracker(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->tracker:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    .line 63
    sget-object v0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->tracker:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    const-string v1, "appKey"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->setGlobalProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    const-string v1, "sdkId"

    const-string v2, "man"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "sdkVer"

    const-string v2, "1.2.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "UTWrapper"

    const-string v2, "call utInit"

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/man/util/MANLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v1, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;-><init>()V

    .line 71
    invoke-virtual {v1, p0}, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;->appKey(Ljava/lang/String;)Lcom/alibaba/sdk/android/beacon/Beacon$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;->appSecret(Ljava/lang/String;)Lcom/alibaba/sdk/android/beacon/Beacon$Builder;

    move-result-object p0

    const-wide/32 v1, 0x36ee80

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;->loopInterval(J)Lcom/alibaba/sdk/android/beacon/Beacon$Builder;

    move-result-object p0

    .line 73
    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;->extras(Ljava/util/Map;)Lcom/alibaba/sdk/android/beacon/Beacon$Builder;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;->build()Lcom/alibaba/sdk/android/beacon/Beacon;

    move-result-object p0

    sput-object p0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->beacon:Lcom/alibaba/sdk/android/beacon/Beacon;

    .line 75
    sget-object p0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->beacon:Lcom/alibaba/sdk/android/beacon/Beacon;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/beacon/Beacon;->stop()V

    .line 77
    sget-object p0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->beacon:Lcom/alibaba/sdk/android/beacon/Beacon;

    sget-object p1, Lcom/alibaba/sdk/android/man/util/UTWrapper;->UPDATE_LISTENER:Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/beacon/Beacon;->addUpdateListener(Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;)V

    .line 78
    sget-object p0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->beacon:Lcom/alibaba/sdk/android/beacon/Beacon;

    sget-object p1, Lcom/alibaba/sdk/android/man/util/UTWrapper;->ERR_LISTENER:Lcom/alibaba/sdk/android/beacon/Beacon$OnServiceErrListener;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/beacon/Beacon;->addServiceErrListener(Lcom/alibaba/sdk/android/beacon/Beacon$OnServiceErrListener;)V

    .line 79
    sget-object p0, Lcom/alibaba/sdk/android/man/util/UTWrapper;->beacon:Lcom/alibaba/sdk/android/beacon/Beacon;

    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/beacon/Beacon;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 81
    :catch_0
    move-exception p0

    .line 82
    const-string p1, "UTWrapper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "utInit Exception "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    :goto_0
    return-void
.end method
