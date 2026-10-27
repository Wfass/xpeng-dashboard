.class public Lcom/xiaopeng/commonfunc/model/test/StorageTest;
.super Ljava/lang/Object;
.source "StorageTest.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "StorageTest"

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/StorageTest;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "StorageTest"

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/StorageTest;->TAG:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/StorageTest;->mContext:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/StorageTest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/StorageTest;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 31
    return-void
.end method

.method private static native native_get_blk_devices()Ljava/lang/String;
.end method


# virtual methods
.method public getDisks()[Landroid/os/storage/DiskInfo;
    .locals 1

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStorageVolumes()[Landroid/os/storage/VolumeInfo;
    .locals 1

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVolumePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "volumeLabel"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/StorageTest;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 63
    .local v0, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 64
    .local v3, "storageVolume":Landroid/os/storage/StorageVolume;
    iget-object v4, p0, Lcom/xiaopeng/commonfunc/model/test/StorageTest;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 63
    .end local v3    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "volumeLabel"    # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/StorageTest;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 48
    .local v0, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 49
    .local v3, "storageVolume":Landroid/os/storage/StorageVolume;
    iget-object v4, p0, Lcom/xiaopeng/commonfunc/model/test/StorageTest;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "storagePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/StorageTest;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 48
    .end local v1    # "storagePath":Ljava/lang/String;
    .end local v3    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
