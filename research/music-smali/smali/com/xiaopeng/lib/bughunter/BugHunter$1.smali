.class final Lcom/xiaopeng/lib/bughunter/BugHunter$1;
.super Ljava/lang/Object;
.source "BugHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/bughunter/BugHunter;->reportCantonEvent(ILjava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:I


# direct methods
.method constructor <init>([Ljava/lang/String;JJI)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/BugHunter$1;->a:[Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaopeng/lib/bughunter/BugHunter$1;->b:J

    iput-wide p4, p0, Lcom/xiaopeng/lib/bughunter/BugHunter$1;->c:J

    iput p6, p0, Lcom/xiaopeng/lib/bughunter/BugHunter$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 189
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v8

    .line 190
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 191
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/BugHunter$1;->a:[Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/xiaopeng/lib/bughunter/BugHunter;->wrapStackTracesString([Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    .line 194
    sget-boolean v0, Lapb;->b:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object v3, p0, Lcom/xiaopeng/lib/bughunter/BugHunter$1;->a:[Ljava/lang/String;

    iget-wide v4, p0, Lcom/xiaopeng/lib/bughunter/BugHunter$1;->b:J

    iget-wide v6, p0, Lcom/xiaopeng/lib/bughunter/BugHunter$1;->c:J

    move-object v0, v11

    move-object v1, v8

    move-object v2, v9

    invoke-static/range {v0 .. v7}, Lcom/xiaopeng/lib/bughunter/BugHunter;->access$000(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v1, 0x0

    .line 200
    const-class v2, Lany;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v2

    const-string v3, "libBugHunter"

    if-eqz v2, :cond_1

    .line 203
    :try_start_0
    const-class v4, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v2, v4}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 205
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<<< error, get IDataLog module occurred an exception, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v2, "<<<< error, can not get DataLogModuleEntry"

    .line 209
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v1, :cond_2

    .line 214
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v4, "perf_caton"

    .line 215
    invoke-interface {v2, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setEvent(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "P00010"

    .line 216
    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "B001"

    .line 217
    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "appName"

    .line 218
    invoke-interface {v4, v5, v9}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    .line 219
    invoke-static {v8, v9}, Lcom/xiaopeng/lib/bughunter/BugHunter;->access$100(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "appVer"

    invoke-interface {v4, v6, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "anr"

    .line 220
    invoke-interface {v4, v6, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Z)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "md5"

    .line 221
    invoke-interface {v4, v5, v11}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/xiaopeng/lib/bughunter/BugHunter$1;->b:J

    .line 222
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "elapseTime"

    invoke-interface {v4, v6, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    .line 223
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "stackInfo"

    invoke-interface {v4, v6, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "memInfo"

    .line 224
    invoke-interface {v4, v5, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v0

    iget v4, p0, Lcom/xiaopeng/lib/bughunter/BugHunter$1;->d:I

    .line 225
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "catonType"

    invoke-interface {v0, v5, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v0

    .line 226
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getFullSystemVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cduVer"

    invoke-interface {v0, v5, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v0

    .line 227
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/d;->a()Lcom/xiaopeng/lib/bughunter/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/lib/bughunter/d;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "igOnState"

    invoke-interface {v0, v5, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v0

    .line 228
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/d;->a()Lcom/xiaopeng/lib/bughunter/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/lib/bughunter/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "igOnTime"

    invoke-interface {v0, v5, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v0

    .line 229
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/d;->a()Lcom/xiaopeng/lib/bughunter/d;

    move-result-object v4

    .line 230
    invoke-virtual {v4}, Lcom/xiaopeng/lib/bughunter/d;->e()I

    move-result v4

    .line 229
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "screenDisplayState"

    invoke-interface {v0, v5, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v0

    .line 231
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/d;->a()Lcom/xiaopeng/lib/bughunter/d;

    move-result-object v4

    .line 232
    invoke-virtual {v4}, Lcom/xiaopeng/lib/bughunter/d;->f()J

    move-result-wide v4

    .line 231
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "screenDisplayChangeTime"

    invoke-interface {v0, v5, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    const-string v0, "reportCantonEvent sendStatData "

    .line 233
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    .line 237
    :cond_2
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/BugHunter;->access$200()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    invoke-static {v8, v9}, Lcom/xiaopeng/lib/bughunter/BugHunter;->access$100(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/xiaopeng/lib/bughunter/BugHunter$1;->b:J

    .line 240
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/xiaopeng/lib/bughunter/BugHunter$1;->d:I

    move-object v0, v8

    move-object v1, v9

    move-object v5, v11

    .line 238
    invoke-static/range {v0 .. v7}, Lcom/xiaopeng/lib/bughunter/BugHunter;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "/sdcard/Log/caton"

    .line 242
    invoke-static {v1, v9, v0}, Lcom/xiaopeng/lib/bughunter/BugHunter;->access$400(Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_3
    return-void
.end method
