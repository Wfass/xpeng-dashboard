.class public Lcom/alibaba/sdk/android/man/crashreporter/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/man/crashreporter/a/b;


# static fields
.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:I


# instance fields
.field private a:Landroid/content/Context;

.field private a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;

.field private a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

.field private environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->k:I

    .line 41
    sput v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->l:I

    .line 42
    const/16 v0, 0xa

    sput v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->m:I

    .line 43
    sput v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->n:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;

    .line 45
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->m:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Ljava/util/Map;

    .line 49
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->n:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->o:Ljava/lang/String;

    .line 51
    const-string v1, ""

    iput-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->p:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    .line 54
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    .line 55
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    return-void
.end method

.method private a(ILcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;
    .locals 6

    .line 701
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 703
    return-object v1

    .line 706
    :cond_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-interface {p1}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->a()Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;

    move-result-object p1

    .line 708
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    .line 710
    :try_start_0
    invoke-virtual {p0, p2, p1, v2}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;I)V

    .line 711
    iput-object p5, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->userNick:Ljava/lang/String;

    .line 712
    iget-object p5, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object p5, p5, Lcom/alibaba/sdk/android/man/crashreporter/c;->appVersion:Ljava/lang/String;

    iput-object p5, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->appVersion:Ljava/lang/String;

    .line 714
    iget-boolean p2, p2, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDeduplication:Z

    if-nez p2, :cond_1

    .line 716
    iput-object v1, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->path:Ljava/lang/String;

    .line 717
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->times:Ljava/lang/Integer;

    .line 718
    iput-object v1, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->hashCode:Ljava/lang/String;

    .line 719
    iget-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-interface {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->a(Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;)V

    .line 720
    return-object v1

    .line 723
    :cond_1
    iget-object p2, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->hashCode:Ljava/lang/String;

    .line 724
    iget-object p5, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->path:Ljava/lang/String;

    .line 725
    iget-object v2, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->times:Ljava/lang/Integer;

    .line 727
    if-eqz p2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 728
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v3, :cond_2

    .line 730
    iput-object p2, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->hashCode:Ljava/lang/String;

    .line 731
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->times:Ljava/lang/Integer;

    .line 732
    iput-object p4, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->path:Ljava/lang/String;

    .line 733
    iget-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-interface {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->a(Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;)V

    goto :goto_0

    .line 734
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lt p3, v0, :cond_5

    .line 736
    iput-object p2, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->hashCode:Ljava/lang/String;

    .line 737
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->times:Ljava/lang/Integer;

    .line 738
    iput-object p5, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->path:Ljava/lang/String;

    .line 739
    iget-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-interface {p3, p1}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->a(Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;)V

    .line 741
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p5, p2}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->a(Ljava/lang/String;I)Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

    move-result-object p1

    .line 742
    if-nez p1, :cond_3

    .line 743
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-interface {p1, v3}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->b(Z)V

    .line 744
    return-object v1

    .line 746
    :cond_3
    return-object p1

    .line 751
    :cond_4
    iput-object p3, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->hashCode:Ljava/lang/String;

    .line 752
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->times:Ljava/lang/Integer;

    .line 753
    iput-object p4, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->path:Ljava/lang/String;

    .line 754
    iget-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-interface {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->a(Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 756
    :catch_0
    move-exception p1

    .line 757
    const-string p2, "parse base data file error."

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 758
    :cond_5
    :goto_0
    goto :goto_1

    .line 761
    :cond_6
    new-instance p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;-><init>()V

    .line 762
    const-string p2, "%s%s"

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "#APPLICATION_CRASHED:"

    aput-object v4, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->abortFlag:Ljava/lang/String;

    .line 763
    iput-object p4, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->path:Ljava/lang/String;

    .line 764
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->times:Ljava/lang/Integer;

    .line 765
    iget-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object p2, p2, Lcom/alibaba/sdk/android/man/crashreporter/c;->appVersion:Ljava/lang/String;

    iput-object p2, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->appVersion:Ljava/lang/String;

    .line 766
    iput-object p5, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->userNick:Ljava/lang/String;

    .line 767
    iput-object p3, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->hashCode:Ljava/lang/String;

    .line 768
    iget-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-interface {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->a(Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;)V

    .line 771
    :goto_1
    return-object v1
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 356
    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;)Ljava/lang/String;
    .locals 1

    .line 170
    const-string v0, ""

    .line 171
    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDumpAllThread:Z

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;->c()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_0
    return-object v0
.end method

.method private a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;)Ljava/lang/String;
    .locals 5

    .line 366
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 367
    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/man/crashreporter/a/d/a;->a(Ljava/util/Map;Landroid/content/Context;)V

    .line 369
    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;

    if-eqz v2, :cond_1

    .line 370
    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;

    invoke-interface {v2}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 371
    const-string v3, "appStatus"

    if-nez v2, :cond_0

    const-string v2, "no status info"

    :cond_0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_1
    nop

    .line 375
    iget-boolean p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDeduplication:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 376
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-interface {p1}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->a()Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;

    move-result-object p1

    .line 377
    if-eqz p1, :cond_2

    .line 378
    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->times:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 381
    :cond_2
    move p1, v2

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->times:Ljava/lang/Integer;

    .line 382
    iget-object p1, p2, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->times:Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 383
    iget-object p1, p2, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->times:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le p1, v2, :cond_3

    .line 384
    const-string p1, "%s"

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object p2, p2, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->times:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 385
    const-string p2, "ts"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    goto :goto_1

    .line 387
    :cond_3
    const-string p1, "ts"

    const-string p2, "1"

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_4
    :goto_1
    invoke-static {v1}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 392
    nop

    .line 393
    if-eqz p1, :cond_5

    .line 394
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/b;->b([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 396
    :cond_5
    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_6

    .line 397
    return-object p1

    .line 401
    :cond_6
    goto :goto_3

    .line 399
    :catch_0
    move-exception p1

    .line 400
    const-string p2, "getMetaData err!"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    :goto_3
    return-object v0
.end method

.method private a(Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;)Ljava/lang/String;
    .locals 0

    .line 184
    nop

    .line 185
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;->d()Ljava/util/Map;

    move-result-object p1

    .line 186
    invoke-virtual {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 188
    return-object p1
.end method

.method private a(Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;)Ljava/lang/String;
    .locals 4

    .line 275
    :try_start_0
    new-instance v0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;-><init>()V

    .line 276
    iget v1, p2, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableMaxThreadNumber:I

    iget v2, p2, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableMaxThreadStackTraceNumber:I

    iget v3, p2, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableSysLogcatMaxCount:I

    iget p2, p2, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableSysLogcatLinkMaxCount:I

    invoke-virtual {p0, v1, v2, v3, p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(IIII)Ljava/util/Map;

    move-result-object p2

    .line 278
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, v1, p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;Landroid/content/Context;Ljava/util/Map;)[B

    move-result-object p1

    .line 279
    if-nez p1, :cond_0

    .line 280
    const-string p2, "reporter build failure!"

    invoke-static {p2}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 283
    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/b;->b([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    return-object p1

    .line 285
    :catch_0
    move-exception p1

    .line 286
    const-string p2, "reporter build err!"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;IIII)V
    .locals 0

    .line 153
    if-eqz p1, :cond_0

    .line 154
    iput p2, p1, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableMaxThreadNumber:I

    .line 155
    iput p3, p1, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableMaxThreadStackTraceNumber:I

    .line 156
    iput p4, p1, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableSysLogcatMaxCount:I

    .line 157
    iput p5, p1, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableSysLogcatLinkMaxCount:I

    .line 159
    :cond_0
    return-void
.end method

.method private a(Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;)V
    .locals 4

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    if-nez v0, :cond_0

    .line 210
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/c;->userNick:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/c;->userNick:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 215
    :cond_1
    const-string v0, "user nick is null or length <= 0!"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-interface {v1}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/sdk/android/man/crashreporter/c;->userNick:Ljava/lang/String;

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/c;->appKey:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 220
    const-string v0, "use taobao default appKey,because your appKey is null!"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object v1, v1, Lcom/alibaba/sdk/android/man/crashreporter/c;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/sdk/android/man/crashreporter/c;->appKey:Ljava/lang/String;

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/c;->appVersion:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 225
    const-string v0, "use taobao app base or default Version,because your appVersion is null!"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/d/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_4

    .line 228
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iput-object v0, v1, Lcom/alibaba/sdk/android/man/crashreporter/c;->appVersion:Ljava/lang/String;

    goto :goto_0

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object v1, v1, Lcom/alibaba/sdk/android/man/crashreporter/c;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/sdk/android/man/crashreporter/c;->appVersion:Ljava/lang/String;

    .line 234
    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    .line 236
    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v1, "sdkname"

    const-string v2, "MOTU"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v1, "sdkVersion"

    const-string v2, "2.0.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v1, "platform"

    const-string v2, "ANDROID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v1, "launchedTime"

    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-wide v2, v2, Lcom/alibaba/sdk/android/man/crashreporter/c;->startupTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v1, "channel"

    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object v2, v2, Lcom/alibaba/sdk/android/man/crashreporter/c;->channel:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v1, "user"

    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object v2, v2, Lcom/alibaba/sdk/android/man/crashreporter/c;->userNick:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v1, "appKey"

    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object v2, v2, Lcom/alibaba/sdk/android/man/crashreporter/c;->appKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "appVersion"

    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object v1, v1, Lcom/alibaba/sdk/android/man/crashreporter/c;->appVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_6
    return-void

    .line 247
    :catch_0
    move-exception p1

    .line 248
    const-string v0, "set base info failure"

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    return-void
.end method

.method private a(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;)V
    .locals 5

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-interface {v0}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->i()Ljava/lang/String;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    iget-object v2, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->triggeredTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 260
    const-string v2, "%s/%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-interface {v4}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->path:Ljava/lang/String;

    .line 261
    iput-object v1, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->fileName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_0

    .line 262
    :catch_0
    move-exception p1

    .line 263
    const-string v0, "set crash report file path err"

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    :goto_0
    return-void
.end method

.method private a()Z
    .locals 2

    .line 196
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 197
    const/4 v0, 0x1

    return v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;
    .locals 1

    .line 489
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;
    .locals 8

    .line 593
    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getConfigure()Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;

    move-result-object v0

    .line 594
    const/16 v1, 0x1e

    sput v1, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->k:I

    .line 595
    const/4 v1, 0x5

    sput v1, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->l:I

    .line 596
    const/16 v1, 0x3c

    sput v1, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->m:I

    .line 597
    const/16 v1, 0x14

    sput v1, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->n:I

    .line 598
    sget v3, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->k:I

    sget v4, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->l:I

    sget v5, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->m:I

    sget v6, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->n:I

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;IIII)V

    .line 602
    if-eqz p1, :cond_0

    .line 603
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;->a(Ljava/lang/String;Z)Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;

    move-result-object p1

    goto :goto_0

    .line 605
    :cond_0
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;->a()Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;

    move-result-object p1

    .line 606
    :goto_0
    new-instance v1, Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;-><init>()V

    .line 608
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;->toString()Ljava/lang/String;

    move-result-object v2

    .line 609
    nop

    .line 610
    nop

    .line 611
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;->c()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 612
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;->e()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 615
    new-instance v3, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;-><init>()V

    .line 616
    new-instance v4, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

    invoke-direct {v4}, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;-><init>()V

    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->triggeredTime:Ljava/lang/Long;

    .line 619
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->type:Ljava/lang/Integer;

    .line 620
    invoke-direct {p0, v4}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;)V

    .line 622
    invoke-direct {p0, v3}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;)V

    .line 623
    iget-object v5, v3, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v6, "triggeredTime"

    iget-object v7, v4, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->triggeredTime:Ljava/lang/Long;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v5, v3, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v6, "exception"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v2, v3, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v5, "threads"

    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object p1, v3, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v2, "backtrace"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-object p1, v3, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v1, "isMainThread"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    iget-object p1, v3, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "ANDROID_ANR"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    invoke-direct {p0, v3, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->content:Ljava/lang/String;

    .line 631
    invoke-direct {p0, v0, v4}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->metaDataBase64:Ljava/lang/String;

    .line 632
    invoke-direct {p0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->utPage:Ljava/lang/String;

    .line 633
    const-string p1, "build stuck data end!"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 636
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-interface {p1, v4}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->b(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    return-object v4

    .line 639
    :catch_0
    move-exception p1

    .line 640
    const-string v0, "buildStuckReport err!"

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 642
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;
    .locals 14

    move-object v0, p0

    .line 425
    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getConfigure()Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;

    move-result-object v7

    .line 426
    const/4 v8, 0x0

    sput v8, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->k:I

    .line 427
    sput v8, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->l:I

    .line 428
    const/16 v1, 0x190

    sput v1, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->m:I

    .line 429
    const/16 v1, 0xc8

    sput v1, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->n:I

    .line 430
    sget v3, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->k:I

    sget v4, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->l:I

    sget v5, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->m:I

    sget v6, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->n:I

    move-object v1, v0

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;IIII)V

    .line 433
    const-string v1, ""

    invoke-static {v1, v8}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;->a(Ljava/lang/String;Z)Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;

    move-result-object v1

    .line 434
    new-instance v2, Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;-><init>()V

    .line 435
    invoke-direct {v0, v7, v1, v2}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;)Ljava/lang/String;

    move-result-object v9

    .line 436
    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;)Ljava/lang/String;

    move-result-object v10

    .line 439
    new-instance v11, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    invoke-direct {v11}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;-><init>()V

    .line 440
    new-instance v12, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

    invoke-direct {v12}, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;-><init>()V

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v12, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->triggeredTime:Ljava/lang/Long;

    .line 443
    move-object/from16 v1, p3

    iput-object v1, v12, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->toUTCrashMsg:Ljava/lang/String;

    .line 445
    const-string v1, "%s"

    const/4 v13, 0x1

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/alibaba/sdk/android/man/crashreporter/e/i;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->hashCode:Ljava/lang/String;

    .line 446
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->type:Ljava/lang/Integer;

    .line 447
    invoke-direct {v0, v12}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;)V

    .line 449
    invoke-direct {v0, v11}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;)V

    .line 450
    iget-object v1, v12, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, v12, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->hashCode:Ljava/lang/String;

    iget-object v5, v12, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->path:Ljava/lang/String;

    iget-object v1, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object v6, v1, Lcom/alibaba/sdk/android/man/crashreporter/c;->userNick:Ljava/lang/String;

    move-object v1, v0

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(ILcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

    move-result-object v1

    .line 451
    if-eqz v1, :cond_0

    .line 453
    return-object v1

    .line 455
    :cond_0
    iget-object v1, v11, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v2, "triggeredTime"

    iget-object v3, v12, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->triggeredTime:Ljava/lang/Long;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v1, v11, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v2, "exception"

    move-object v3, p1

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v1, v11, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v2, "backtrace"

    move-object/from16 v3, p2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v1, v11, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v2, "threads"

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v1, v11, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v2, "currentThread"

    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-direct {v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    iget-object v1, v11, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v2, "isMainThread"

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 463
    :cond_1
    iget-object v1, v11, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v2, "isMainThread"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :goto_0
    iget-object v1, v11, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v2, "type"

    const-string v3, "ANDROID"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-static/range {p4 .. p4}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 467
    iget-object v2, v11, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v3, "extData"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-direct {v0, v11, v7}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->content:Ljava/lang/String;

    .line 470
    invoke-direct {v0, v7, v12}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->metaDataBase64:Ljava/lang/String;

    .line 471
    invoke-direct {v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->utPage:Ljava/lang/String;

    .line 472
    const-string v1, "build java crash data end!"

    invoke-static {v1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 475
    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-interface {v0, v12}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->b(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    return-object v12

    .line 478
    :catch_0
    move-exception v0

    .line 479
    const-string v1, "buildJavaCrashReport err!"

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 298
    if-eqz p1, :cond_1

    .line 299
    const/4 v0, 0x0

    .line 301
    nop

    .line 302
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 305
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 306
    new-array v1, v1, [B

    .line 307
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 308
    new-instance v0, Ljava/lang/String;

    const-string v2, "GB2312"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 310
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/e;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    if-eqz v0, :cond_1

    .line 314
    return-object v0

    .line 319
    :catch_0
    move-exception p1

    .line 320
    const-string v0, "get native stack trace err!"

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 317
    :catch_1
    move-exception p1

    .line 318
    const-string v0, "native file not found err!"

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    :cond_1
    nop

    .line 323
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;

    invoke-interface {v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized a(IIII)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/Map<",
            "Lcom/alibaba/sdk/android/man/crashreporter/global/a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 91
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getConfigure()Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;

    move-result-object v3

    .line 92
    sput p1, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->k:I

    .line 93
    sput p2, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->l:I

    .line 94
    sput p3, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->m:I

    .line 95
    sput p4, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->n:I

    .line 96
    sget v4, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->k:I

    sget v5, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->l:I

    sget v6, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->m:I

    sget v7, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->n:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;IIII)V

    .line 98
    nop

    .line 99
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;

    if-nez p1, :cond_0

    .line 100
    new-instance p1, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    if-eqz p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;

    invoke-interface {p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;->b()Ljava/util/Map;

    move-result-object p1

    .line 107
    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;)V

    .line 108
    sget-object p2, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->I:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    iget-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/alibaba/sdk/android/man/crashreporter/e/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object p2, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->H:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    iget-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/alibaba/sdk/android/man/crashreporter/e/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object p2, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->C:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    iget-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object p3, p3, Lcom/alibaba/sdk/android/man/crashreporter/c;->appKey:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object p2, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->D:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    iget-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object p3, p3, Lcom/alibaba/sdk/android/man/crashreporter/c;->appVersion:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object p2, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->E:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    iget-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object p3, p3, Lcom/alibaba/sdk/android/man/crashreporter/c;->channel:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object p2, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->F:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    iget-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object p3, p3, Lcom/alibaba/sdk/android/man/crashreporter/c;->userNick:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object p2, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->v:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    iget-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;

    invoke-interface {p3}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;->b()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-object p1

    .line 119
    :cond_1
    monitor-exit p0

    return-object v0

    .line 90
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 120
    :catch_0
    move-exception p1

    .line 121
    :try_start_1
    const-string p2, "get internal Data failed"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    monitor-exit p0

    return-object v0

    .line 90
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;I)V
    .locals 6

    .line 653
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 654
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p2, :cond_6

    iget-boolean v5, p1, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableAbortCount:Z

    if-ne v5, v4, :cond_6

    .line 655
    if-nez p3, :cond_2

    .line 656
    iget-object p1, p2, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->abortFlag:Ljava/lang/String;

    .line 657
    if-eqz p1, :cond_0

    const-string p3, "#APPLICATION_CRASHED:"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 659
    const-string p3, "%s%s%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    const-string p1, "#APPLICATION_CRASHED:"

    aput-object p1, v5, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-static {p3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->abortFlag:Ljava/lang/String;

    goto :goto_0

    .line 660
    :cond_0
    if-nez p1, :cond_1

    .line 661
    const-string p1, "%s%s"

    new-array p3, v3, [Ljava/lang/Object;

    const-string v3, "#APPLICATION_CRASHED:"

    aput-object v3, p3, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p3, v4

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->abortFlag:Ljava/lang/String;

    .line 663
    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    if-ne p3, v4, :cond_4

    .line 664
    const-string p1, "abort content APPLICATION_STARTED"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 665
    iget-object p1, p2, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->abortFlag:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p2, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->abortFlag:Ljava/lang/String;

    const-string p3, "#APPLICATION_STARTED:"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 666
    return-void

    .line 668
    :cond_3
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/c;->appVersion:Ljava/lang/String;

    iput-object p1, p2, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->appVersion:Ljava/lang/String;

    .line 669
    const-string p1, "%s%s"

    new-array p3, v3, [Ljava/lang/Object;

    const-string v3, "#APPLICATION_STARTED:"

    aput-object v3, p3, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p3, v4

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->abortFlag:Ljava/lang/String;

    goto :goto_1

    .line 671
    :cond_4
    if-ne p3, v3, :cond_7

    .line 672
    const-string p1, "remove abort content flag "

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 673
    iget-object p1, p2, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->abortFlag:Ljava/lang/String;

    if-nez p1, :cond_5

    .line 675
    return-void

    .line 677
    :cond_5
    const/4 p1, 0x0

    iput-object p1, p2, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->abortFlag:Ljava/lang/String;

    goto :goto_1

    .line 681
    :cond_6
    iget-boolean p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableAbortCount:Z

    if-ne p1, v4, :cond_7

    if-ne p3, v4, :cond_7

    .line 682
    const-string p1, "abort content APPLICATION_STARTED"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 683
    new-instance p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;-><init>()V

    .line 684
    iget-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object p2, p2, Lcom/alibaba/sdk/android/man/crashreporter/c;->appVersion:Ljava/lang/String;

    iput-object p2, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->appVersion:Ljava/lang/String;

    .line 685
    const-string p2, "%s%s"

    new-array p3, v3, [Ljava/lang/Object;

    const-string v3, "#APPLICATION_STARTED:"

    aput-object v3, p3, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p3, v4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;->abortFlag:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :cond_7
    :goto_1
    goto :goto_2

    .line 688
    :catch_0
    move-exception p1

    .line 689
    const-string p2, "build abort flag failure!"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 691
    :goto_2
    return-void
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Ljava/util/Map;

    .line 412
    iput-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->n:Ljava/lang/String;

    .line 413
    iput-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->o:Ljava/lang/String;

    .line 414
    iput-object p4, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->p:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Lcom/alibaba/sdk/android/man/crashreporter/c;Lcom/alibaba/sdk/android/man/crashreporter/d/c;Lcom/alibaba/sdk/android/man/crashreporter/d/c;)Z
    .locals 2

    .line 60
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;-><init>()V

    iput-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Landroid/content/Context;

    .line 66
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;

    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Landroid/content/Context;

    invoke-interface {p1, p2, v1, p5, p0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;->a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Landroid/content/Context;Lcom/alibaba/sdk/android/man/crashreporter/d/c;Lcom/alibaba/sdk/android/man/crashreporter/a/b;)V

    .line 67
    iput-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    .line 68
    iput-object p5, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    .line 69
    iput-object p4, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    .line 70
    const/4 p1, 0x1

    return p1

    .line 75
    :catch_0
    move-exception p1

    goto :goto_0

    .line 72
    :cond_1
    const-string p1, "init builder failure!"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return v0

    .line 75
    :goto_0
    nop

    .line 76
    const-string p2, "init builder err!"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    return v0
.end method

.method public declared-synchronized a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;)Z
    .locals 0

    monitor-enter p0

    .line 140
    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;
    .locals 17

    move-object/from16 v0, p0

    .line 502
    if-nez p1, :cond_0

    .line 503
    :try_start_0
    iget-object v1, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->o:Ljava/lang/String;

    .line 505
    move-object v7, v1

    goto :goto_0

    .line 579
    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 505
    :cond_0
    move-object/from16 v7, p1

    :goto_0
    if-nez p3, :cond_1

    .line 506
    iget-object v1, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->p:Ljava/lang/String;

    .line 508
    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p3

    :goto_1
    if-nez p2, :cond_2

    .line 509
    iget-object v1, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->n:Ljava/lang/String;

    .line 511
    move-object v9, v1

    goto :goto_2

    :cond_2
    move-object/from16 v9, p2

    :goto_2
    if-nez p4, :cond_3

    .line 512
    iget-object v1, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a:Ljava/util/Map;

    .line 515
    move-object v10, v1

    goto :goto_3

    :cond_3
    move-object/from16 v10, p4

    :goto_3
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getConfigure()Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;

    move-result-object v11

    .line 516
    const/16 v1, 0xf

    sput v1, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->k:I

    .line 517
    sput v1, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->l:I

    .line 518
    const/16 v1, 0x64

    sput v1, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->m:I

    .line 519
    const/16 v1, 0x32

    sput v1, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->n:I

    .line 520
    sget v3, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->k:I

    sget v4, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->l:I

    sget v5, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->m:I

    sget v6, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->n:I

    move-object v1, v0

    move-object v2, v11

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;IIII)V

    .line 523
    const-string v1, ""

    const/4 v12, 0x0

    invoke-static {v1, v12}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;->a(Ljava/lang/String;Z)Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;

    move-result-object v1

    .line 524
    new-instance v2, Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;-><init>()V

    .line 525
    invoke-direct {v0, v11, v1, v2}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;)Ljava/lang/String;

    move-result-object v13

    .line 528
    new-instance v14, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    invoke-direct {v14}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;-><init>()V

    .line 529
    new-instance v15, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

    invoke-direct {v15}, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;-><init>()V

    .line 531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v15, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->triggeredTime:Ljava/lang/Long;

    .line 533
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_4

    .line 535
    nop

    .line 537
    move-object v8, v13

    :cond_4
    const-string v1, "%s"

    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v8}, Lcom/alibaba/sdk/android/man/crashreporter/e/i;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->hashCode:Ljava/lang/String;

    .line 538
    iput-object v7, v15, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->nativeCrashPath:Ljava/lang/String;

    .line 539
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v15, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->type:Ljava/lang/Integer;

    .line 541
    iget-object v1, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-interface {v1}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->i()Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 543
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 544
    const-string v3, "%s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v12

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->path:Ljava/lang/String;

    .line 545
    iput-object v2, v15, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->fileName:Ljava/lang/String;

    .line 547
    invoke-direct {v0, v14}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;)V

    .line 548
    iget-object v1, v15, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, v15, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->hashCode:Ljava/lang/String;

    iget-object v5, v15, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->path:Ljava/lang/String;

    iget-object v1, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-object v7, v1, Lcom/alibaba/sdk/android/man/crashreporter/c;->userNick:Ljava/lang/String;

    move-object v1, v0

    move-object v3, v11

    move v12, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(ILcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

    move-result-object v1

    .line 549
    if-eqz v1, :cond_5

    .line 551
    return-object v1

    .line 553
    :cond_5
    iget-object v1, v14, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v2, "triggeredTime"

    iget-object v3, v15, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->triggeredTime:Ljava/lang/Long;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object v1, v14, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v2, "exception"

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    iget-object v1, v14, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v2, "threads"

    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v1, v14, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v2, "currentThread"

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 558
    iget-object v1, v14, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v2, "isMainThread"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 560
    :cond_6
    iget-object v1, v14, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v2, "isMainThread"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    :goto_4
    iget-object v1, v14, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v2, "type"

    const-string v3, "ANDROID_NATIVE"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    invoke-static {v10}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 568
    iget-object v2, v14, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v3, "extData"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    invoke-direct {v0, v14, v11}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->content:Ljava/lang/String;

    .line 571
    invoke-direct {v0, v11, v15}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->metaDataBase64:Ljava/lang/String;

    .line 572
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->utPage:Ljava/lang/String;

    .line 573
    const-string v1, "build native crash data end!"

    invoke-static {v1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 576
    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-interface {v0, v15}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->b(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    return-object v15

    .line 579
    :goto_5
    nop

    .line 580
    const-string v1, "buildNativeCrashReport err!"

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    const/4 v0, 0x0

    return-object v0
.end method
