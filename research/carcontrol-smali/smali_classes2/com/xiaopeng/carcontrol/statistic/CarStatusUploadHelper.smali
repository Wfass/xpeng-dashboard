.class public Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;
.super Ljava/lang/Object;
.source "CarStatusUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarStatusUploadHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper$1;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;
    .locals 1

    .line 77
    invoke-static {}, Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper$SingletonHolder;->access$100()Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;

    move-result-object v0

    return-object v0
.end method

.method private hasUpload()Z
    .locals 5

    .line 100
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getUploadResumeBITime()J

    move-result-wide v1

    .line 102
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 104
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    sget-object v2, Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uploadResumeStatus: lastUploadDayUploadDay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentDay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$uploadCarStatusBIForSmartOSFive$1()V
    .locals 4

    :try_start_0
    const-string v0, "com.xiaopeng.track.Track_AutoClass"

    .line 112
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "collect"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 113
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 114
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 116
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private uploadCarStatusBIForSmartOSFive()V
    .locals 1

    .line 110
    sget-object v0, Lcom/xiaopeng/carcontrol/statistic/-$$Lambda$CarStatusUploadHelper$29z8p9fe1y8ykYfp9mF1mxTFYaM;->INSTANCE:Lcom/xiaopeng/carcontrol/statistic/-$$Lambda$CarStatusUploadHelper$29z8p9fe1y8ykYfp9mF1mxTFYaM;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$uploadResumeStatus$0$CarStatusUploadHelper()V
    .locals 3

    .line 86
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 88
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 92
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;->uploadCarStatusBIForSmartOSFive()V

    .line 93
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setUploadResumeBITime(J)V

    :cond_0
    return-void
.end method

.method public uploadResumeStatus()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;->hasUpload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/xiaopeng/carcontrol/statistic/-$$Lambda$CarStatusUploadHelper$vP_rx9bsWnyFjC41yZgdHkao2vI;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/statistic/-$$Lambda$CarStatusUploadHelper$vP_rx9bsWnyFjC41yZgdHkao2vI;-><init>(Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
