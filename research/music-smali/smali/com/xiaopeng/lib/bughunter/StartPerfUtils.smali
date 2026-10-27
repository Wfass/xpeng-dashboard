.class public Lcom/xiaopeng/lib/bughunter/StartPerfUtils;
.super Ljava/lang/Object;
.source "StartPerfUtils.java"


# static fields
.field private static final PERFORM_EVENT:Ljava/lang/String; = "perf_start"

.field private static final TAG:Ljava/lang/String; = "StartPerfUtils"

.field private static appCreateBeginStamp:J = 0x0L

.field private static appCreateEndStamp:J = 0x0L

.field private static appCreateTime:J = 0x0L

.field private static appFirstFrameTime:J = 0x0L

.field private static appMainActTime:J = 0x0L

.field private static firstFrameEndStamp:J = 0x0L

.field private static volatile mIsColdStart:Z = true

.field private static mainActCreateBeginStamp:J

.field private static mainActCreateEndStamp:J

.field private static mainActCreateTime:J

.field private static mainActFirstFrameTime:J

.field private static mainActRestartBeginStamp:J

.field private static mainActRestartEndStamp:J

.field private static mainActRestartTime:J

.field private static mainActResumeBeginStamp:J

.field private static mainActResumeEndStamp:J

.field private static mainActResumeTime:J

.field private static mainActStartBeginStamp:J

.field private static mainActStartEndStamp:J

.field private static mainActStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appOnCreateBegin()V
    .locals 2

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->appCreateBeginStamp:J

    return-void
.end method

.method public static appOnCreateEnd()V
    .locals 4

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->appCreateEndStamp:J

    .line 126
    sget-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->appCreateEndStamp:J

    sget-wide v2, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->appCreateBeginStamp:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->appCreateTime:J

    return-void
.end method

.method public static firstFrameEnd(Landroid/content/Context;)V
    .locals 4

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->firstFrameEndStamp:J

    .line 156
    sget-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->firstFrameEndStamp:J

    sget-wide v2, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActCreateBeginStamp:J

    sub-long v2, v0, v2

    sput-wide v2, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActFirstFrameTime:J

    .line 158
    sget-wide v2, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->appCreateBeginStamp:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->appFirstFrameTime:J

    .line 160
    sget-boolean v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mIsColdStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 161
    sput-boolean v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mIsColdStart:Z

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 163
    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->appCreateTime:J

    .line 166
    :goto_0
    invoke-static {p0}, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->sendPerformData(Landroid/content/Context;)V

    return-void
.end method

.method public static onCreateBegin()V
    .locals 4

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActCreateBeginStamp:J

    .line 135
    sget-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActCreateBeginStamp:J

    sget-wide v2, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->appCreateEndStamp:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->appMainActTime:J

    return-void
.end method

.method public static onCreateEnd()V
    .locals 4

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActCreateEndStamp:J

    .line 146
    sget-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActCreateEndStamp:J

    sget-wide v2, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActCreateBeginStamp:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActCreateTime:J

    return-void
.end method

.method public static onReStartBegin()V
    .locals 2

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActRestartBeginStamp:J

    return-void
.end method

.method public static onReStartEnd()V
    .locals 4

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActRestartEndStamp:J

    .line 244
    sget-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActRestartEndStamp:J

    sget-wide v2, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActRestartBeginStamp:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActRestartTime:J

    return-void
.end method

.method public static onResumeBegin()V
    .locals 2

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActResumeBeginStamp:J

    return-void
.end method

.method public static onResumeEnd()V
    .locals 4

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActResumeEndStamp:J

    .line 261
    sget-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActResumeEndStamp:J

    sget-wide v2, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActResumeBeginStamp:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActResumeTime:J

    return-void
.end method

.method public static onStartBegin()V
    .locals 2

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActStartBeginStamp:J

    return-void
.end method

.method public static onStartEnd()V
    .locals 4

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActStartEndStamp:J

    .line 225
    sget-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActStartEndStamp:J

    sget-wide v2, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActStartBeginStamp:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActStartTime:J

    return-void
.end method

.method private static sendPerformData(Landroid/content/Context;)V
    .locals 4

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 180
    :try_start_0
    const-class v1, Lany;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 182
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<<< error, get IDataLog module occurred an exception, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StartPerfUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v2

    const-string v3, "appName"

    .line 195
    invoke-interface {v2, v3, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v2

    .line 196
    invoke-static {p0, v0}, Lape;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "appVer"

    invoke-interface {v2, v0, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    sget-wide v2, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->appCreateTime:J

    .line 197
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "appstep0"

    invoke-interface {p0, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    sget-wide v2, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->appMainActTime:J

    .line 198
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "appstep1"

    invoke-interface {p0, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    sget-wide v2, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActCreateTime:J

    .line 199
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "appstep2"

    invoke-interface {p0, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    sget-wide v2, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActFirstFrameTime:J

    .line 200
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "appstep3"

    invoke-interface {p0, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    sget-wide v2, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActStartTime:J

    .line 201
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "appstep4"

    invoke-interface {p0, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    sget-wide v2, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->appFirstFrameTime:J

    .line 202
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "appstepend"

    invoke-interface {p0, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    sget-wide v2, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActRestartTime:J

    .line 203
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "apprestart"

    invoke-interface {p0, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    sget-wide v2, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->mainActResumeTime:J

    .line 204
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "appresume0"

    invoke-interface {p0, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    const-string v0, "perf_start"

    .line 205
    invoke-interface {p0, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    .line 206
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object p0

    .line 194
    invoke-interface {v1, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    :cond_1
    return-void
.end method
