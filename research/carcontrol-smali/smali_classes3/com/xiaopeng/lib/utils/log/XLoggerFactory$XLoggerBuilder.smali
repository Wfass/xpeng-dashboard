.class public Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;
.super Ljava/lang/Object;
.source "XLoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/utils/log/XLoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XLoggerBuilder"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field filePath:Ljava/lang/String;

.field filePrefix:Ljava/lang/String;

.field flushInterval:I

.field level:I

.field maxSingleSize:J

.field maxTotalSize:J

.field mode:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->mode:I

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->level:I

    const v0, 0xea60

    .line 47
    iput v0, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->flushInterval:I

    const-wide/32 v0, 0x500000

    .line 48
    iput-wide v0, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->maxTotalSize:J

    const-wide/32 v0, 0x100000

    .line 49
    iput-wide v0, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->maxSingleSize:J

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib/utils/log/XLoggerFactory$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/xiaopeng/lib/utils/log/XLogger;
    .locals 4

    .line 92
    iget-wide v0, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->maxTotalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 95
    iget v0, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->flushInterval:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_2

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->filePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/Log/log0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->filePath:Ljava/lang/String;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->filePrefix:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->filePrefix:Ljava/lang/String;

    .line 106
    :cond_1
    :try_start_0
    new-instance v0, Lcom/xiaopeng/lib/utils/log/XLogger;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/utils/log/XLogger;-><init>(Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;)V
    :try_end_0
    .catch Lcom/xiaopeng/lib/utils/log/XLogLoadLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "XLogger"

    const-string v2, "Create XLogger fail!"

    .line 108
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal argument, flushInterval < 60!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal argument, maxTotalSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public filePrefix(Ljava/lang/String;)Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePrefix"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->filePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public flushInterval(I)Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interval"
        }
    .end annotation

    .line 76
    iput p1, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->flushInterval:I

    return-object p0
.end method

.method public level(I)Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 56
    iput p1, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->level:I

    return-object p0
.end method

.method public maxSingleSize(J)Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 86
    iput-wide p1, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->maxSingleSize:J

    return-object p0
.end method

.method public maxTotalSize(J)Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 81
    iput-wide p1, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->maxTotalSize:J

    return-object p0
.end method

.method public mode(I)Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 61
    iput p1, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->mode:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XLoggerBuilder{context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", filePrefix=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->filePrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flushInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->flushInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxTotalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->maxTotalSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
