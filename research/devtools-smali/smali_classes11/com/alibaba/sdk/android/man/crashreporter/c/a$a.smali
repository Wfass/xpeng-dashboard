.class final Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/man/crashreporter/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final D:I

.field private final E:I

.field private final F:I

.field private final G:I

.field private final MOTU_PATH:Ljava/lang/String;

.field private a:Landroid/content/Context;

.field final synthetic a:Lcom/alibaba/sdk/android/man/crashreporter/c/a;

.field private final a:Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alibaba/sdk/android/man/crashreporter/global/a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final w:I


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/man/crashreporter/c/a;ILcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Lcom/alibaba/sdk/android/man/crashreporter/global/a;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 p1, 0x1

    iput p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->E:I

    .line 100
    const p1, 0xee4e

    iput p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->F:I

    .line 101
    const p1, 0xee4f

    iput p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->G:I

    .line 102
    const p1, 0xee4d

    iput p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->w:I

    .line 103
    const-string p1, "motu"

    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->MOTU_PATH:Ljava/lang/String;

    .line 114
    iput p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->D:I

    .line 115
    iput-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

    .line 116
    iput-object p4, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Landroid/content/Context;

    .line 117
    iput-object p5, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->d:Ljava/util/Map;

    .line 118
    return-void
.end method

.method private a(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;)Ljava/lang/String;
    .locals 2

    .line 196
    :try_start_0
    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->nativeCrashPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/a;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->nativeCrashPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_2

    .line 199
    iget-object v1, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->content:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 200
    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->content:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/b;->decode([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/g;->a([B)Ljava/util/Map;

    move-result-object p1

    .line 201
    if-eqz p1, :cond_0

    .line 202
    const-string v1, "backtrace"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/g;->c(Ljava/util/Map;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/b;->b([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 205
    :cond_0
    goto :goto_0

    .line 206
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 207
    const-string v1, "backtrace"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/g;->c(Ljava/util/Map;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/b;->b([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 214
    :cond_2
    :goto_0
    goto :goto_1

    .line 212
    :catch_0
    move-exception p1

    .line 213
    const-string v0, "get native crash content failure"

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method private a(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;I)V
    .locals 7

    .line 224
    if-eqz p1, :cond_7

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/a;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->b(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->a(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 227
    const-string p2, "start send crash file!"

    invoke-static {p2}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 229
    const/4 p2, 0x0

    .line 230
    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 231
    nop

    .line 239
    move v2, v1

    goto :goto_1

    .line 232
    :cond_0
    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 233
    const p2, 0xee4e

    .line 234
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->content:Ljava/lang/String;

    .line 239
    :cond_1
    :goto_0
    move v2, p2

    goto :goto_1

    .line 235
    :cond_2
    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 236
    const p2, 0xee4f

    goto :goto_0

    .line 239
    :goto_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 240
    iget-object p2, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->toUTCrashMsg:Ljava/lang/String;

    .line 241
    if-eqz p2, :cond_3

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StackTrace=====>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "--invalid--"

    invoke-interface {v6, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_3
    iget-object v4, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->content:Ljava/lang/String;

    .line 246
    if-eqz v4, :cond_4

    .line 247
    const-string p2, "content_base64 is not null"

    invoke-static {p2}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 250
    :cond_4
    iget-object v5, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->metaDataBase64:Ljava/lang/String;

    .line 252
    iget-object v1, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->utPage:Ljava/lang/String;

    .line 254
    const-string v3, "MOTU_REPORTER_SDK_2.0.0_PRIVATE"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p2

    .line 256
    if-eqz p2, :cond_5

    .line 257
    const-string p2, "delete crash file!"

    invoke-static {p2}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 258
    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->path:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/e;->i(Ljava/lang/String;)V

    goto :goto_2

    .line 260
    :cond_5
    const-string p1, "send file failure!"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_6
    :goto_2
    goto :goto_3

    .line 263
    :catch_0
    move-exception p1

    .line 264
    const-string p2, "send crashReport err."

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    :cond_7
    :goto_3
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 7

    .line 282
    if-nez p6, :cond_0

    .line 283
    :try_start_0
    new-instance p6, Ljava/util/HashMap;

    invoke-direct {p6}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 292
    :catch_0
    move-exception p1

    goto :goto_1

    .line 285
    :cond_0
    :goto_0
    move-object v6, p6

    const-string p6, "MAS_VER"

    const-string v0, "MBAAS_MAS_ANDROID_1.2.4"

    invoke-interface {v6, p6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string p6, "MotuCrashReporter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commitEventFinally : eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", arg3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {p6, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance p6, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    move-object v0, p6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 290
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object p1

    const-string p2, "aliyun_mbaas"

    invoke-virtual {p1, p2}, Lcom/ut/mini/UTAnalytics;->getTracker(Ljava/lang/String;)Lcom/ut/mini/UTTracker;

    move-result-object p1

    invoke-virtual {p6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    const/4 p1, 0x1

    return p1

    .line 292
    :goto_1
    nop

    .line 293
    const-string p2, "send crashReport err."

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    const/4 p1, 0x0

    return p1
.end method

.method private d()V
    .locals 10

    .line 156
    :try_start_0
    const-string v0, "start send abort content!"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/a;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->a()Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;

    move-result-object v0

    .line 159
    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 160
    iget-object v2, v0, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->abortFlag:Ljava/lang/String;

    .line 161
    if-eqz v2, :cond_1

    .line 162
    iget-object v3, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->d:Ljava/util/Map;

    sget-object v4, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->D:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 163
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->appVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    const-string v4, "CRASH_NOT_CAUGHT"

    .line 165
    const-string v5, "#APPLICATION_CRASHED:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    const-string v4, "CRASH_CAUGHT"

    .line 168
    :cond_0
    move-object v7, v4

    const-string v4, "Application"

    const v5, 0xee4d

    const-string v6, "MOTU_ANDROID_ABORT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 171
    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/a;

    invoke-static {v2}, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getConfigure()Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/a/b;->a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;I)V

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/a;

    invoke-static {v2}, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getConfigure()Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v4}, Lcom/alibaba/sdk/android/man/crashreporter/a/b;->a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;I)V

    .line 178
    if-eqz v0, :cond_2

    .line 179
    const-string v2, "%s%s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v5, "FOREGROUND:"

    aput-object v5, v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->appStatus:Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/a;

    invoke-static {v1}, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->a(Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;)V

    .line 183
    :cond_2
    const-string v0, "end send abort content!"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    const-string v1, "start send abort content err"

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;)Z
    .locals 6

    .line 126
    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    .line 127
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getConfigure()Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDeduplication:Z

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->times:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->triggeredTime:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->times:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 135
    return v1

    .line 136
    :cond_1
    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->times:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->triggeredTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->times:Ljava/lang/Integer;

    .line 139
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_2

    goto :goto_0

    .line 148
    :cond_2
    const/4 p1, 0x0

    return p1

    .line 140
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/a;

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->b(Z)V

    .line 141
    return v1

    .line 145
    :cond_4
    return v1

    .line 130
    :cond_5
    :goto_1
    return v1
.end method

.method public e()V
    .locals 12

    .line 321
    :try_start_0
    iget v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->D:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_5

    .line 322
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/a;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->b(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->a(I)[Ljava/lang/String;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1

    .line 324
    array-length v5, v0

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v0, v6

    .line 325
    const-string v8, "find file and start send:"

    invoke-static {v8, v7}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v8, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/a;

    invoke-static {v8}, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->b(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->b(Ljava/lang/String;)Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

    move-result-object v7

    .line 327
    invoke-virtual {p0, v7}, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 328
    invoke-direct {p0, v7, v3}, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;I)V

    .line 324
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 334
    :cond_1
    nop

    .line 335
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/a;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->b(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->a(I)[Ljava/lang/String;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_4

    .line 337
    array-length v5, v0

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v0, v6

    .line 338
    const-string v8, "find file and start send:"

    invoke-static {v8, v7}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v8, "start send native crash here."

    invoke-static {v8}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 340
    iget-object v8, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/a;

    invoke-static {v8}, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->b(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->b(Ljava/lang/String;)Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

    move-result-object v8

    .line 341
    if-nez v8, :cond_2

    .line 342
    new-instance v8, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

    invoke-direct {v8}, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;-><init>()V

    .line 343
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v8, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->type:Ljava/lang/Integer;

    .line 344
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v8, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->times:Ljava/lang/Integer;

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v8, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->triggeredTime:Ljava/lang/Long;

    .line 346
    const/4 v9, 0x0

    iput-object v9, v8, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->path:Ljava/lang/String;

    .line 347
    iget-object v9, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/a;

    invoke-static {v9}, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->b(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    move-result-object v9

    invoke-interface {v9}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->i()Ljava/lang/String;

    move-result-object v9

    .line 349
    const-string v10, "%s/%s/%s"

    new-array v11, v2, [Ljava/lang/Object;

    aput-object v9, v11, v3

    const-string v9, "motu"

    aput-object v9, v11, v4

    aput-object v7, v11, v1

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->nativeCrashPath:Ljava/lang/String;

    .line 352
    :cond_2
    invoke-virtual {p0, v8}, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 353
    invoke-direct {p0, v8, v4}, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;I)V

    .line 337
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 359
    :cond_4
    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->D:I

    if-eq v0, v4, :cond_6

    iget v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->D:I

    if-ne v0, v1, :cond_7

    .line 360
    :cond_6
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 361
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

    invoke-direct {p0, v0, v3}, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :cond_7
    :goto_2
    goto :goto_3

    .line 364
    :catch_0
    move-exception v0

    .line 365
    const-string v1, "start send crash failure"

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    :goto_3
    return-void
.end method

.method public run()V
    .locals 4

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/a;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 306
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/a;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 309
    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/a;

    invoke-static {v3}, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 313
    :cond_0
    :goto_0
    goto :goto_1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    const-string v1, "send error."

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    :goto_1
    return-void
.end method
