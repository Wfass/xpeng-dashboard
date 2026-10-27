.class public Lcom/xiaopeng/commonfunc/model/test/StabilityTest;
.super Ljava/lang/Object;
.source "StabilityTest.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, "xptest"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "StabilityTest"

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/StabilityTest;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "StabilityTest"

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/StabilityTest;->TAG:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/StabilityTest;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private static native native_get_cpu_available_frequencies(I)Ljava/lang/String;
.end method

.method private static native native_run_cpueater()Ljava/lang/String;
.end method

.method private static native native_run_memeater(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native native_run_memtester(Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public getCpuAvailFreq(I)Ljava/lang/String;
    .locals 1
    .param p1, "cpuid"    # I

    .line 37
    invoke-static {p1}, Lcom/xiaopeng/commonfunc/model/test/StabilityTest;->native_get_cpu_available_frequencies(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runCpueater()Ljava/lang/String;
    .locals 1

    .line 41
    invoke-static {}, Lcom/xiaopeng/commonfunc/model/test/StabilityTest;->native_run_cpueater()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runMemeater(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "size"    # Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/xiaopeng/commonfunc/model/test/StabilityTest;->native_run_memtester(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "ret":Ljava/lang/String;
    const-string v1, "StabilityTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runMemtester:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-object v0
.end method

.method public runMemtester(Ljava/lang/String;)V
    .locals 4
    .param p1, "size"    # Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/xiaopeng/commonfunc/model/test/StabilityTest;->native_run_memtester(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "ret":Ljava/lang/String;
    const-string v1, "StabilityTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runMemtester:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method
