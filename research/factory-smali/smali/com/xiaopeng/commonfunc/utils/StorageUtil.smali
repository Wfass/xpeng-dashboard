.class public Lcom/xiaopeng/commonfunc/utils/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# static fields
.field public static final AUTO_CLEAN_STORAGE_LOW_PERCENTAGE:I = 0x5

.field public static final NEW_STORAGE_LOW_PERCENTAGE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "StorageUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkStorage(I)Z
    .locals 7
    .param p0, "lowPercentage"    # I

    .line 19
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 20
    .local v0, "file":Ljava/io/File;
    const-string v1, "StorageUtil"

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v3

    int-to-long v5, p0

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 22
    const/4 v1, 0x1

    return v1

    .line 24
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
