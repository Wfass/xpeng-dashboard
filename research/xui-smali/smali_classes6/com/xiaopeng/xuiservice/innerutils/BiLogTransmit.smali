.class public Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;
.super Lcom/xiaopeng/biutil/BiLogUploader;
.source "BiLogTransmit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BiLogTransmit"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/biutil/BiLogUploader;-><init>()V

    .line 15
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit$1;

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;
    .locals 1

    .line 22
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit$Holder;->access$100()Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized submit(Lcom/xiaopeng/biutil/BiLog;)V
    .locals 3
    .param p1, "biLog"    # Lcom/xiaopeng/biutil/BiLog;

    monitor-enter p0

    .line 27
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isInternationalEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig$BusinessModule;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-super {p0, p1}, Lcom/xiaopeng/biutil/BiLogUploader;->submit(Lcom/xiaopeng/biutil/BiLog;)V

    goto :goto_0

    .line 31
    :cond_0
    const-string v0, "BiLogTransmit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/biutil/BiLog;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBiService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartBiService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/biutil/BiLog;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartBiService;->handleBiUploadEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 26
    .end local p1    # "biLog":Lcom/xiaopeng/biutil/BiLog;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;
    throw p1
.end method
