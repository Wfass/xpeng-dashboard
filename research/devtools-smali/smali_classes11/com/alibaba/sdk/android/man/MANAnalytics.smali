.class public Lcom/alibaba/sdk/android/man/MANAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/man/MANAnalytics$Singleton;
    }
.end annotation


# static fields
.field private static final PRODUCT:Ljava/lang/String; = "man"

.field private static final crashLimitCount:I = 0xa

.field private static final initTimeSecond:I = 0x5


# instance fields
.field public final TAG:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private volatile isEnabled:Ljava/lang/Boolean;

.field private turnOnDebug:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->appVersion:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->channel:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->turnOnDebug:Ljava/lang/Boolean;

    .line 28
    const-string v0, "MAN_MANAnalytics"

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->isEnabled:Ljava/lang/Boolean;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/man/MANAnalytics$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alibaba/sdk/android/man/MANAnalytics;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/sdk/android/man/MANAnalytics;)Ljava/lang/Boolean;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->isEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alibaba/sdk/android/man/MANAnalytics;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->isEnabled:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/sdk/android/man/MANAnalytics;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/sdk/android/man/MANAnalytics;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->channel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/sdk/android/man/MANAnalytics;)Ljava/lang/Boolean;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->turnOnDebug:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected static getInstance()Lcom/alibaba/sdk/android/man/MANAnalytics;
    .locals 1

    .line 44
    sget-object v0, Lcom/alibaba/sdk/android/man/MANAnalytics$Singleton;->instance:Lcom/alibaba/sdk/android/man/MANAnalytics;

    return-object v0
.end method

.method private innerInit(Landroid/app/Application;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->appVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p2}, Lcom/alibaba/sdk/android/man/util/ToolKit;->getMetaDataAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->appVersion:Ljava/lang/String;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->channel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-static {p2}, Lcom/alibaba/sdk/android/man/util/ToolKit;->getMetaDataChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->channel:Ljava/lang/String;

    .line 142
    :cond_1
    invoke-static {p3, p4, p1}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->utInit(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    .line 144
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/man/MANAnalytics$2;

    invoke-direct {v1, p0, p3, p4}, Lcom/alibaba/sdk/android/man/MANAnalytics$2;-><init>(Lcom/alibaba/sdk/android/man/MANAnalytics;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/ut/mini/UTAnalytics;->setAppApplicationInstance(Landroid/app/Application;Lcom/ut/mini/IUTApplication;)V

    .line 182
    invoke-static {}, Lcom/alibaba/sdk/android/man/MANTracker;->getInstance()Lcom/alibaba/sdk/android/man/MANTracker;

    move-result-object p1

    .line 183
    iput-object p3, p1, Lcom/alibaba/sdk/android/man/MANTracker;->appKey:Ljava/lang/String;

    .line 185
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->appVersion:Ljava/lang/String;

    invoke-virtual {p0, p2, p3, p1}, Lcom/alibaba/sdk/android/man/MANAnalytics;->initMANInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {p2}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitDAUEvent(Landroid/content/Context;)V

    .line 188
    return-void
.end method

.method private setMetaDataChannel(Landroid/content/Context;)V
    .locals 1

    .line 273
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/util/ToolKit;->getMetaDataChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 274
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->channel:Ljava/lang/String;

    .line 277
    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultTracker()Lcom/alibaba/sdk/android/man/MANTracker;
    .locals 1

    .line 48
    invoke-static {}, Lcom/alibaba/sdk/android/man/MANTracker;->getInstance()Lcom/alibaba/sdk/android/man/MANTracker;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Application;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 104
    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;->getInstance(Landroid/app/Application;)Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;

    move-result-object v0

    const-string v1, "man"

    const-string v2, "1.2.4"

    const/16 v3, 0xa

    const/4 v4, 0x5

    new-instance v5, Lcom/alibaba/sdk/android/man/MANAnalytics$1;

    invoke-direct {v5, p0}, Lcom/alibaba/sdk/android/man/MANAnalytics$1;-><init>(Lcom/alibaba/sdk/android/man/MANAnalytics;)V

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;->registerCrashDefend(Ljava/lang/String;Ljava/lang/String;IILcom/alibaba/sdk/android/utils/crashdefend/SDKMessageCallback;)Z

    .line 126
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->isEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const-string v0, "MAN_MANAnalytics"

    const-string v1, "isEnabled is true, so execute init function!"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/man/util/MANLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/man/MANAnalytics;->innerInit(Landroid/app/Application;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_1
    return-void

    .line 105
    :cond_2
    :goto_0
    const-string p1, "MAN_MANAnalytics"

    const-string p2, "MAN init failed, app context can\'t be null."

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public init(Landroid/app/Application;Landroid/content/Context;)Z
    .locals 4

    .line 73
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {p2}, Lcom/alibaba/sdk/android/utils/AMSConfigUtils;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {p2}, Lcom/alibaba/sdk/android/utils/AMSConfigUtils;->getAppSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v1}, Lcom/alibaba/sdk/android/man/util/ToolKit;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    invoke-static {p2}, Lcom/alibaba/sdk/android/man/util/ToolKit;->getMetaDataAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 83
    :cond_1
    invoke-static {v2}, Lcom/alibaba/sdk/android/man/util/ToolKit;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    invoke-static {p2}, Lcom/alibaba/sdk/android/man/util/ToolKit;->getMetaDataAppSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 88
    :cond_2
    invoke-static {v1}, Lcom/alibaba/sdk/android/man/util/ToolKit;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/alibaba/sdk/android/man/util/ToolKit;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 89
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/alibaba/sdk/android/man/MANAnalytics;->init(Landroid/app/Application;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 p1, 0x1

    return p1

    .line 92
    :cond_3
    const-string p1, "MAN_MANAnalytics"

    const-string p2, "MAN init failed, invalid appKey/appSecret."

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return v0

    .line 74
    :cond_4
    :goto_0
    const-string p1, "MAN_MANAnalytics"

    const-string p2, "MAN init failed, app context can\'t be null."

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return v0
.end method

.method public initMANInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 203
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/man/MANAnalytics;->setMetaDataChannel(Landroid/content/Context;)V

    .line 212
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->enable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 213
    const-string p1, "CrashReporter"

    const-string p2, "Turn on success."

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/man/util/MANLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_0
    const-string p1, "CrashReporter"

    const-string p2, "Turn on fail."

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_0
    return-void
.end method

.method public sendCustomPerformance(Lcom/alibaba/sdk/android/man/customperf/MANCustomPerformance;)V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->isEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string p1, "MAN_MANAnalytics"

    const-string v0, "MAN init failed,can not work for now!"

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 56
    :cond_0
    if-eqz p1, :cond_3

    .line 57
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/man/customperf/MANCustomPerformance;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/man/customperf/MANCustomPerformance;->getEventLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/util/ToolKit;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/util/EventCommitTool;->commitCustomPerformanceEvent(Lcom/alibaba/sdk/android/man/customperf/MANCustomPerformance;)V

    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    return-void

    .line 63
    :cond_3
    :goto_1
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 1

    .line 224
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->appVersion:Ljava/lang/String;

    .line 227
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->setAppVersion(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTAnalytics;->setAppVersion(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->channel:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public turnOffAutoPageTrack()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->isEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    const-string v0, "MAN_MANAnalytics"

    const-string v1, "MAN init failed,can not work for now!"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void

    .line 269
    :cond_0
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper;->turnOffAutoPageTrack()V

    .line 270
    return-void
.end method

.method public turnOffCrashReporter()V
    .locals 2

    .line 197
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->turnoffCrashReporter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "CrashReporter"

    const-string v1, "Turn off success."

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/man/util/MANLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method public turnOnDebug()V
    .locals 1

    .line 242
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->turnOnDebug:Ljava/lang/Boolean;

    .line 243
    invoke-static {}, Lcom/alibaba/sdk/android/man/util/MANLog;->enableLog()V

    .line 244
    return-void
.end method

.method public updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->isEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const-string p1, "MAN_MANAnalytics"

    const-string p2, "MAN init failed,can not work for now!"

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void

    .line 251
    :cond_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTAnalytics;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string p1, "2"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitUserEvent(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public userRegister(Ljava/lang/String;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics;->isEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const-string p1, "MAN_MANAnalytics"

    const-string v0, "MAN init failed,can not work for now!"

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void

    .line 260
    :cond_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTAnalytics;->userRegister(Ljava/lang/String;)V

    .line 261
    const-string p1, "1"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitUserEvent(Ljava/lang/String;)V

    .line 262
    return-void
.end method
