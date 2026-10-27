.class public Lcom/xiaopeng/commonfunc/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtil"

.field public static final TF_MOUNT:I = 0x2

.field public static final TF_NOT_EXIST:I = 0x0

.field public static final TF_UNMOUNT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkTFCardState(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1099
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 1100
    .local v0, "mStorageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 1101
    .local v1, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1102
    .local v4, "storageVolume":Landroid/os/storage/StorageVolume;
    const-string v5, "FileUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkTFCardState storageVolume.getPath() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1103
    invoke-virtual {v4, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1104
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1105
    .local v2, "storagePath":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1106
    .local v3, "state":Ljava/lang/String;
    const-string v5, "FileUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkTFCardState storageVolume.getPath() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1107
    return-object v3

    .line 1101
    .end local v2    # "storagePath":Ljava/lang/String;
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1110
    :cond_1
    const-string v2, "unknown"

    return-object v2
.end method

.method public static checkTFCardUsedSize(Landroid/content/Context;)J
    .locals 9
    .param p0, "mContext"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1116
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 1117
    .local v0, "mStorageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 1118
    .local v1, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 1119
    .local v5, "storageVolume":Landroid/os/storage/StorageVolume;
    const-string v6, "FileUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "storageVolume "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1118
    .end local v5    # "storageVolume":Landroid/os/storage/StorageVolume;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1121
    :cond_0
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1122
    .local v4, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1123
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1124
    .local v2, "storagePath":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/FileUtils;->getFileSize(Ljava/lang/String;I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-long v5, v5

    return-wide v5

    .line 1121
    .end local v2    # "storagePath":Ljava/lang/String;
    .end local v4    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1127
    :cond_2
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public static closeFileInputStream(Ljava/io/FileInputStream;)V
    .locals 1
    .param p0, "fis"    # Ljava/io/FileInputStream;

    .line 1003
    if-eqz p0, :cond_0

    .line 1004
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1008
    :cond_0
    :goto_0
    nop

    .line 1009
    :goto_1
    return-void
.end method

.method public static closeFileOS(Ljava/io/FileOutputStream;)Z
    .locals 4
    .param p0, "fos"    # Ljava/io/FileOutputStream;

    .line 1552
    const/4 v0, 0x0

    .line 1553
    .local v0, "res":Z
    if-eqz p0, :cond_0

    .line 1555
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 1556
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1559
    goto :goto_0

    .line 1557
    :catch_0
    move-exception v1

    .line 1558
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1561
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1562
    const/4 v0, 0x1

    .line 1565
    goto :goto_1

    .line 1563
    :catch_1
    move-exception v1

    .line 1564
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1567
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeFileOS res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1568
    return v0
.end method

.method public static closeFileWriter(Ljava/io/FileWriter;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/FileWriter;

    .line 961
    if-eqz p0, :cond_0

    .line 963
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    goto :goto_0

    .line 964
    :catch_0
    move-exception v0

    .line 965
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 968
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V

    .line 969
    const-string v0, "FileUtil"

    const-string v1, "finish closeFileWriter"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 972
    goto :goto_1

    .line 970
    :catch_1
    move-exception v0

    .line 971
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 974
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void
.end method

.method public static closeInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .line 1013
    if-eqz p0, :cond_0

    .line 1014
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1018
    :cond_0
    :goto_0
    nop

    .line 1019
    :goto_1
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 992
    if-eqz p0, :cond_0

    .line 993
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 995
    :catch_0
    move-exception v0

    goto :goto_1

    .line 997
    :cond_0
    :goto_0
    nop

    .line 998
    :goto_1
    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "srcFile"    # Ljava/lang/String;
    .param p1, "destFile"    # Ljava/lang/String;

    .line 1131
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1132
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1133
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "srcFile  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "is not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1134
    return-void

    .line 1136
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 1137
    .local v1, "fileSize":J
    new-instance v10, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;

    const-wide/16 v6, 0x0

    move-object v3, v10

    move-object v4, p0

    move-object v5, p1

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {v10}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 1138
    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask$Callback;)V
    .locals 12
    .param p0, "srcFile"    # Ljava/lang/String;
    .param p1, "destFile"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask$Callback;

    .line 1141
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1143
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "srcFile  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "is not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1144
    return-void

    .line 1146
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 1147
    .local v1, "fileSize":J
    new-instance v11, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;

    const-wide/16 v6, 0x0

    move-object v3, v11

    move-object v4, p0

    move-object v5, p1

    move-wide v8, v1

    move-object v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/xiaopeng/commonfunc/system/runnable/CopyFileTask$Callback;)V

    invoke-static {v11}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 1148
    return-void
.end method

.method public static copyFileNGetUsedTime(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/commonfunc/bean/event/CopyFileTestResult;
    .locals 23
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 912
    move-object/from16 v2, p1

    const/4 v3, 0x0

    .local v3, "in":Ljava/io/RandomAccessFile;
    const/4 v4, 0x0

    .line 913
    .local v4, "out":Ljava/io/RandomAccessFile;
    new-instance v0, Lcom/xiaopeng/commonfunc/bean/event/CopyFileTestResult;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v0, v6, v7, v5}, Lcom/xiaopeng/commonfunc/bean/event/CopyFileTestResult;-><init>(JZ)V

    move-object v8, v0

    .line 915
    .local v8, "result":Lcom/xiaopeng/commonfunc/bean/event/CopyFileTestResult;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 916
    .local v12, "size":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 917
    .local v10, "beginTime":J
    const-string v0, "FileUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "copyFileNGetUsedTime beginTime = "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "srcPath = "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " destPath = "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " size = "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 919
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v9, "r"

    invoke-direct {v0, v1, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    .line 920
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v9, "rw"

    invoke-direct {v0, v2, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    .line 921
    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 922
    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 923
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v15

    .line 924
    .local v15, "inChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    .local v9, "outChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v6, 0x0

    const/4 v14, 0x0

    move-wide/from16 v21, v10

    move-wide v10, v6

    .end local v10    # "beginTime":J
    .local v21, "beginTime":J
    move-wide v6, v12

    .end local v12    # "size":J
    .local v6, "size":J
    :try_start_1
    invoke-virtual/range {v9 .. v14}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v0

    .line 926
    .local v0, "lock":Ljava/nio/channels/FileLock;
    const-wide/16 v16, 0x0

    move-wide/from16 v18, v6

    move-object/from16 v20, v9

    invoke-virtual/range {v15 .. v20}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 927
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/FileDescriptor;->sync()V

    .line 928
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 930
    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/xiaopeng/commonfunc/bean/event/CopyFileTestResult;->mPass:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 935
    .end local v0    # "lock":Ljava/nio/channels/FileLock;
    .end local v9    # "outChannel":Ljava/nio/channels/FileChannel;
    .end local v15    # "inChannel":Ljava/nio/channels/FileChannel;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 936
    .local v9, "endTime":J
    const-string v0, "FileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 931
    .end local v9    # "endTime":J
    :catch_0
    move-exception v0

    goto :goto_0

    .line 935
    .end local v6    # "size":J
    .end local v21    # "beginTime":J
    .restart local v10    # "beginTime":J
    .restart local v12    # "size":J
    :catchall_0
    move-exception v0

    move-wide/from16 v21, v10

    move-wide v6, v12

    .end local v10    # "beginTime":J
    .end local v12    # "size":J
    .restart local v6    # "size":J
    .restart local v21    # "beginTime":J
    goto :goto_2

    .line 931
    .end local v6    # "size":J
    .end local v21    # "beginTime":J
    .restart local v10    # "beginTime":J
    .restart local v12    # "size":J
    :catch_1
    move-exception v0

    move-wide/from16 v21, v10

    move-wide v6, v12

    .line 932
    .end local v10    # "beginTime":J
    .end local v12    # "size":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "size":J
    .restart local v21    # "beginTime":J
    :goto_0
    :try_start_2
    iput-boolean v5, v8, Lcom/xiaopeng/commonfunc/bean/event/CopyFileTestResult;->mPass:Z

    .line 933
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 935
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 936
    .restart local v9    # "endTime":J
    const-string v0, "FileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v11, "copyFileNGetUsedTime endTime = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 937
    sub-long v11, v9, v21

    .line 938
    .local v11, "totalTimeRead":J
    iput-wide v11, v8, Lcom/xiaopeng/commonfunc/bean/event/CopyFileTestResult;->mUsedTime:J

    .line 940
    invoke-static {v4}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 941
    invoke-static {v3}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 942
    nop

    .line 943
    return-object v8

    .line 935
    .end local v9    # "endTime":J
    .end local v11    # "totalTimeRead":J
    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 936
    .restart local v9    # "endTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "copyFileNGetUsedTime endTime = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "FileUtil"

    invoke-static {v11, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 937
    sub-long v11, v9, v21

    .line 938
    .restart local v11    # "totalTimeRead":J
    iput-wide v11, v8, Lcom/xiaopeng/commonfunc/bean/event/CopyFileTestResult;->mUsedTime:J

    .line 940
    invoke-static {v4}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 941
    invoke-static {v3}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static copyPath(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .line 1151
    const/4 v0, 0x0

    .line 1152
    .local v0, "sum":I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1153
    .local v1, "fileFolder":Ljava/io/File;
    invoke-static {p1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->mkDir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1154
    const-string v2, "FileUtil"

    const-string v3, "copyPath mkDir fail "

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1156
    :cond_0
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyPath srcPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " destPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1157
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1158
    .local v2, "filesList":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 1159
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 1160
    const-string v4, "FileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyPath filesList[i].getName() =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1161
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1162
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->copyPath(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 1164
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1165
    new-instance v11, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {v11}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 1159
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1169
    .end local v3    # "i":I
    :cond_2
    return v0
.end method

.method public static coverToFile(Ljava/lang/String;I[B)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "value"    # [B

    .line 1499
    const/4 v0, 0x0

    .line 1501
    .local v0, "out":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 1502
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1503
    invoke-virtual {v0, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1504
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "coverToFile path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1504
    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1511
    nop

    .line 1512
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1514
    :catch_0
    move-exception v2

    .line 1515
    .end local v0    # "out":Ljava/io/RandomAccessFile;
    .end local p0    # "path":Ljava/lang/String;
    .end local p1    # "index":I
    .end local p2    # "value":[B
    :goto_0
    return v1

    .line 1516
    .restart local v0    # "out":Ljava/io/RandomAccessFile;
    .restart local p0    # "path":Ljava/lang/String;
    .restart local p1    # "index":I
    .restart local p2    # "value":[B
    :goto_1
    nop

    .line 1518
    const/4 v1, 0x1

    return v1

    .line 1510
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1506
    :catch_1
    move-exception v2

    .line 1507
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "coverToFile Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1508
    nop

    .line 1511
    if-eqz v0, :cond_0

    .line 1512
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 1514
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    goto :goto_0

    .line 1516
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    nop

    .line 1508
    return v1

    .line 1510
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    nop

    .line 1511
    if-eqz v0, :cond_1

    .line 1512
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1516
    :cond_1
    nop

    .line 1515
    throw v2
.end method

.method public static createFile(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 78
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 81
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 83
    .local v2, "out":Ljava/io/FileOutputStream;
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 86
    .local v3, "buffer":[B
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 87
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 88
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 94
    .end local v5    # "len":I
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 91
    :catch_0
    move-exception v4

    .line 92
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 95
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 96
    goto :goto_3

    .line 94
    :goto_2
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 95
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .line 98
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v3    # "buffer":[B
    :cond_1
    :goto_3
    return-void
.end method

.method public static createFileOS(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 1522
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1523
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 1525
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1526
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1527
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1529
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1532
    goto :goto_0

    .line 1530
    :catch_0
    move-exception v2

    .line 1531
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1533
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createFileOS path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", fos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1534
    return-object v1
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 500
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 501
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    const-string v0, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " successful"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    const/4 v0, 0x1

    return v0

    .line 507
    :cond_0
    return v0

    .line 510
    :cond_1
    return v0

    .line 513
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    return v0
.end method

.method public static deleteFolderFile(Ljava/lang/String;)V
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .line 533
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 535
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 536
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 538
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 539
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 540
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->deleteFolderFile(Ljava/lang/String;)V

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 546
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 548
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 549
    .restart local v1    # "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_2

    .line 550
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_2
    :goto_1
    goto :goto_2

    .line 553
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 559
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void
.end method

.method public static deleteFolderFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "excludePath"    # Ljava/lang/String;
    .param p2, "removeFolder"    # Z

    .line 562
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 564
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 565
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 567
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 568
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 569
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, p1, v4}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->deleteFolderFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 568
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 574
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 575
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 576
    :cond_1
    if-eqz p2, :cond_2

    .line 577
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 578
    .restart local v1    # "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_2

    .line 579
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_2
    :goto_1
    goto :goto_2

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 587
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void
.end method

.method public static deleteFolderFile(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "excludePaths"    # [Ljava/lang/String;
    .param p2, "removeFolder"    # Z

    .line 590
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1, p0}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->isStrArraysContainStr([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 592
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 595
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 596
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 597
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, p1, v4}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->deleteFolderFile(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 596
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 602
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 603
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 604
    :cond_1
    if-eqz p2, :cond_2

    .line 605
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 606
    .restart local v1    # "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_2

    .line 607
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_2
    :goto_1
    goto :goto_2

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 615
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void
.end method

.method public static deleteFolderFile([Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 9
    .param p0, "filePaths"    # [Ljava/lang/String;
    .param p1, "excludePaths"    # [Ljava/lang/String;
    .param p2, "removeFolder"    # Z

    .line 618
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p0, v2

    .line 619
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p1, v3}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->isStrArraysContainStr([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 620
    goto :goto_3

    .line 623
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 625
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 626
    .local v5, "files":[Ljava/io/File;
    if-eqz v5, :cond_1

    .line 627
    move v6, v1

    .local v6, "i":I
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 628
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, p1, v8}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->deleteFolderFile(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 627
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 633
    .end local v5    # "files":[Ljava/io/File;
    .end local v6    # "i":I
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 634
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 635
    :cond_2
    if-eqz p2, :cond_3

    .line 636
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 637
    .restart local v5    # "files":[Ljava/io/File;
    if-eqz v5, :cond_3

    array-length v6, v5

    if-nez v6, :cond_3

    .line 638
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "files":[Ljava/io/File;
    :cond_3
    :goto_2
    goto :goto_3

    .line 641
    :catch_0
    move-exception v4

    .line 642
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 618
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 645
    :cond_5
    return-void
.end method

.method public static getAvailableBytes(Ljava/lang/String;)J
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 1376
    const-wide/16 v0, 0x0

    .line 1378
    .local v0, "availableSize":J
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1379
    .local v2, "statFs":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    .line 1382
    .end local v2    # "statFs":Landroid/os/StatFs;
    goto :goto_0

    .line 1380
    :catch_0
    move-exception v2

    .line 1381
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "FileUtil"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1383
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvailableBytes path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", availableSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1384
    return-wide v0
.end method

.method public static getCacheSize(Landroid/content/Context;Ljava/lang/String;)J
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mPackageName"    # Ljava/lang/String;

    .line 1217
    const-wide/16 v0, 0x0

    .line 1218
    .local v0, "size":J
    const-string v2, "storagestats"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    .line 1221
    .local v2, "storageStatsManager":Landroid/app/usage/StorageStatsManager;
    :try_start_0
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    .line 1222
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 1221
    invoke-virtual {v2, v3, p1, v4}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v3

    .line 1223
    .local v3, "storageStats":Landroid/app/usage/StorageStats;
    invoke-virtual {v3}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v4

    .line 1228
    .end local v3    # "storageStats":Landroid/app/usage/StorageStats;
    :goto_0
    goto :goto_1

    .line 1226
    :catch_0
    move-exception v3

    .line 1227
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1224
    :catch_1
    move-exception v3

    .line 1225
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1229
    :goto_1
    const-string v3, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCacheSize mPackageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1230
    return-wide v0
.end method

.method public static getDataAvailableBytes()J
    .locals 2

    .line 1372
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->getAvailableBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDataAvailableGBytes()I
    .locals 4

    .line 1367
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->getDataAvailableBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x40000000

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getFileInputStream(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 977
    const/4 v0, 0x0

    .line 979
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 980
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 981
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 985
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 983
    :catch_0
    move-exception v1

    .line 984
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 986
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileInputStream path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 987
    return-object v0
.end method

.method public static getFileLength(Ljava/lang/String;)J
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 901
    const-wide/16 v0, 0x0

    .line 903
    .local v0, "fileLength":J
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    move-wide v0, v2

    .line 904
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFileLength path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", fileLength =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    goto :goto_0

    .line 905
    :catch_0
    move-exception v2

    .line 906
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 908
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-wide v0
.end method

.method public static getFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)Ljava/util/ArrayList;
    .locals 13
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .param p3, "order"    # Z
    .param p4, "startTime"    # J
    .param p6, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJJ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 711
    .local v1, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    move-object v2, p0

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUtil$p9POy-tGWRglhyOV3JrRdFIh5yQ;

    move-object v4, p2

    invoke-direct {v3, v4}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUtil$p9POy-tGWRglhyOV3JrRdFIh5yQ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 715
    .local v3, "dirs":[Ljava/io/File;
    if-eqz p3, :cond_0

    .line 717
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUtil$gNg9mrLpurLs3xSAwrLc_8qrn28;->INSTANCE:Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUtil$gNg9mrLpurLs3xSAwrLc_8qrn28;

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    .line 720
    :cond_0
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUtil$7hnUx1naZvYXwmgBRdS5QFIFZf4;->INSTANCE:Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUtil$7hnUx1naZvYXwmgBRdS5QFIFZf4;

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 723
    :goto_0
    array-length v5, v3

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v0, v3, v6

    move-object v7, v0

    .line 725
    .local v7, "dir":Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v8, p1

    :try_start_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "temp":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->isExistFilePath(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 727
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    .line 728
    .local v9, "lastModifiedTime":J
    cmp-long v11, v9, p4

    if-ltz v11, :cond_1

    .line 729
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 731
    :cond_1
    cmp-long v12, v9, p6

    if-lez v12, :cond_2

    .line 732
    goto :goto_4

    .line 737
    .end local v0    # "temp":Ljava/lang/String;
    .end local v9    # "lastModifiedTime":J
    :cond_2
    goto :goto_3

    .line 735
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v8, p1

    .line 736
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 723
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "dir":Ljava/io/File;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 740
    :cond_3
    move-object v8, p1

    :goto_4
    return-object v1
.end method

.method public static getFileMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "filepath"    # Ljava/lang/String;

    .line 1439
    const/4 v0, 0x0

    .line 1443
    .local v0, "randomAccessFile":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 1444
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1445
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 1447
    :cond_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 1448
    .local v2, "messageDigest":Ljava/security/MessageDigest;
    if-eqz v1, :cond_5

    .line 1449
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1450
    const-string v3, ""
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1451
    .local v3, "var3":Ljava/lang/String;
    nop

    .line 1485
    if-eqz v0, :cond_1

    .line 1486
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1488
    :catch_0
    move-exception v4

    .line 1489
    .local v4, "var22":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "var22":Ljava/io/IOException;
    goto :goto_1

    .line 1490
    :cond_1
    :goto_0
    nop

    .line 1451
    :goto_1
    return-object v3

    .line 1454
    .end local v3    # "var3":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    .line 1455
    const/high16 v3, 0xa00000

    new-array v3, v3, [B

    .line 1456
    .local v3, "bytes":[B
    const/4 v4, 0x0

    move v5, v4

    .line 1459
    .local v5, "var4":Z
    :goto_2
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "len":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_3

    .line 1460
    invoke-virtual {v2, v3, v4, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_2

    .line 1463
    :cond_3
    new-instance v4, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-direct {v4, v6, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1466
    .local v4, "bigInt":Ljava/math/BigInteger;
    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "md5":Ljava/lang/String;
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x20

    if-ge v8, v9, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v8

    goto :goto_3

    .line 1469
    :cond_4
    move-object v8, v6

    .line 1470
    .local v8, "var7":Ljava/lang/String;
    nop

    .line 1485
    nop

    .line 1486
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 1488
    :catch_1
    move-exception v9

    .line 1489
    .local v9, "var22":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .end local v9    # "var22":Ljava/io/IOException;
    goto :goto_5

    .line 1490
    :goto_4
    nop

    .line 1470
    :goto_5
    return-object v8

    .line 1473
    .end local v3    # "bytes":[B
    .end local v4    # "bigInt":Ljava/math/BigInteger;
    .end local v5    # "var4":Z
    .end local v6    # "md5":Ljava/lang/String;
    .end local v7    # "len":I
    .end local v8    # "var7":Ljava/lang/String;
    :cond_5
    :try_start_4
    const-string v3, ""
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "messageDigest":Ljava/security/MessageDigest;
    move-object v1, v3

    .line 1485
    .local v1, "var3":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 1486
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    .line 1488
    :catch_2
    move-exception v2

    .line 1489
    .local v2, "var22":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1492
    .end local v2    # "var22":Ljava/io/IOException;
    goto :goto_7

    .line 1490
    :cond_6
    :goto_6
    nop

    .line 1494
    :goto_7
    return-object v1

    .line 1484
    .end local v1    # "var3":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_e

    .line 1480
    :catch_3
    move-exception v1

    .line 1481
    .local v1, "var25":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1482
    const-string v2, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1485
    if-eqz v0, :cond_7

    .line 1486
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_8

    .line 1488
    :catch_4
    move-exception v3

    .line 1489
    .local v3, "var22":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "var22":Ljava/io/IOException;
    goto :goto_9

    .line 1490
    :cond_7
    :goto_8
    nop

    .line 1482
    :goto_9
    return-object v2

    .line 1477
    .end local v1    # "var25":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 1478
    .local v1, "var24":Ljava/io/FileNotFoundException;
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1479
    const-string v2, ""
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1485
    if-eqz v0, :cond_8

    .line 1486
    :try_start_9
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_a

    .line 1488
    :catch_6
    move-exception v3

    .line 1489
    .restart local v3    # "var22":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "var22":Ljava/io/IOException;
    goto :goto_b

    .line 1490
    :cond_8
    :goto_a
    nop

    .line 1479
    :goto_b
    return-object v2

    .line 1474
    .end local v1    # "var24":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v1

    .line 1475
    .local v1, "var23":Ljava/security/NoSuchAlgorithmException;
    :try_start_a
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 1476
    const-string v2, ""
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1485
    if-eqz v0, :cond_9

    .line 1486
    :try_start_b
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_c

    .line 1488
    :catch_8
    move-exception v3

    .line 1489
    .restart local v3    # "var22":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "var22":Ljava/io/IOException;
    goto :goto_d

    .line 1490
    :cond_9
    :goto_c
    nop

    .line 1476
    :goto_d
    return-object v2

    .line 1484
    .end local v1    # "var23":Ljava/security/NoSuchAlgorithmException;
    :goto_e
    nop

    .line 1485
    if-eqz v0, :cond_a

    .line 1486
    :try_start_c
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_f

    .line 1488
    :catch_9
    move-exception v2

    .line 1489
    .restart local v2    # "var22":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "var22":Ljava/io/IOException;
    nop

    .line 1490
    :cond_a
    :goto_f
    throw v1
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 68
    const-string v0, ""

    .line 70
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getFileNameWithSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 651
    .local v1, "fileFolder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 652
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFileNameWithSuffix filePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 654
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 655
    .local v2, "filesList":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 656
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 657
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 658
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 656
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 663
    .end local v2    # "filesList":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_2
    :goto_1
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFileNameWithSuffix name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 664
    return-object v0
.end method

.method public static getFileNameWithSuffixNContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "contain"    # Ljava/lang/String;

    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 671
    .local v1, "fileFolder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 672
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFileNameWithSuffix filePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 674
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 675
    .local v2, "filesList":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 676
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 677
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v2, v3

    .line 678
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 679
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 676
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 684
    .end local v2    # "filesList":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_2
    :goto_1
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFileNameWithSuffix name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    return-object v0
.end method

.method public static getFilePathWithSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .line 689
    const/4 v0, 0x0

    .line 690
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    .local v1, "fileFolder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 693
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFilePathWithSuffix filePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 695
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 696
    .local v2, "filesList":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 697
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 698
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 699
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 697
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 704
    .end local v2    # "filesList":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_2
    :goto_1
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFilePathWithSuffix name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    return-object v0
.end method

.method private static getFileSize(Ljava/io/File;)J
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1191
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 1194
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1173
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1174
    .local v0, "file":Ljava/io/File;
    const-wide/16 v1, 0x0

    .line 1177
    .local v1, "blockSize":J
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1178
    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->getFileSizes(Ljava/io/File;)J

    move-result-wide v3

    move-wide v1, v3

    goto :goto_0

    .line 1180
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->getFileSize(Ljava/io/File;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v3

    .line 1185
    :goto_0
    goto :goto_1

    .line 1182
    :catch_0
    move-exception v3

    .line 1183
    .local v3, "var6":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1184
    const-string v4, "FileUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFileSize error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1187
    .end local v3    # "var6":Ljava/lang/Exception;
    :goto_1
    return-wide v1
.end method

.method private static getFileSizes(Ljava/io/File;)J
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1199
    const-wide/16 v0, 0x0

    .line 1200
    .local v0, "size":J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1201
    .local v2, "flist":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 1202
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 1203
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1204
    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->getFileSizes(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_1

    .line 1206
    :cond_0
    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 1202
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1210
    .end local v3    # "i":I
    :cond_1
    const-string v3, "FileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File not exist :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1213
    :cond_2
    return-wide v0
.end method

.method public static getFileWriter(Ljava/lang/String;Z)Ljava/io/FileWriter;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "append"    # Z

    .line 947
    const/4 v0, 0x0

    .line 950
    .local v0, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 953
    goto :goto_0

    .line 951
    :catch_0
    move-exception v1

    .line 952
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 956
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileWriter path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", append="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", writer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    return-object v0
.end method

.method public static getFilesSize(Ljava/lang/String;)I
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .line 867
    const/4 v0, 0x0

    .line 868
    .local v0, "filesum":I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 869
    .local v1, "fileFolder":Ljava/io/File;
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFilesSize path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 870
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 871
    .local v2, "filesList":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 872
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 873
    const-string v4, "FileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFilesSize filesList[i].getName() =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 874
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 875
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->getFilesSize(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 877
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 872
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 881
    .end local v3    # "i":I
    :cond_1
    const-string v3, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFilesSize path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", filesum =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 882
    return v0
.end method

.method public static getFolderLength(Ljava/lang/String;)J
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .line 886
    const-wide/16 v0, 0x0

    .line 887
    .local v0, "size":J
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 889
    .local v2, "fileFolder":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 890
    .local v3, "fileList":[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 891
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->getFolderLength(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v0, v5

    goto :goto_1

    .line 892
    :cond_0
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v5

    .line 890
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 896
    .end local v3    # "fileList":[Ljava/io/File;
    .end local v4    # "i":I
    :cond_1
    goto :goto_2

    .line 894
    :catch_0
    move-exception v3

    .line 895
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 897
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-wide v0
.end method

.method public static getMemInfoIype(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .line 1417
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 1418
    .local v1, "fileReader":Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x1000

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1419
    .local v2, "bufferedReader":Ljava/io/BufferedReader;
    move-object v3, v0

    .line 1420
    .local v3, "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_1

    .line 1421
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1422
    nop

    .line 1425
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1426
    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1427
    .local v4, "array":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v4, v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 1431
    .end local v1    # "fileReader":Ljava/io/FileReader;
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "array":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1432
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1429
    :catch_1
    move-exception v1

    .line 1430
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1433
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    nop

    .line 1434
    :goto_0
    return-object v0
.end method

.method public static getPrimaryStorageSize(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1360
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 1361
    .local v0, "mStorageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v1

    const-wide/32 v3, 0x3b9aca00

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 1362
    .local v1, "size":I
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPrimaryStorageSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1363
    return v1
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 2

    .line 1350
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1353
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStoragePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 1300
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 1301
    .local v0, "mStorageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 1302
    .local v1, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 1303
    .local v5, "storageVolume":Landroid/os/storage/StorageVolume;
    const-string v6, "FileUtil"

    const-string v7, "getStoragePath "

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1302
    .end local v5    # "storageVolume":Landroid/os/storage/StorageVolume;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1305
    :cond_0
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1306
    .local v4, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1307
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1305
    .end local v4    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1310
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getStorageVolume(Landroid/content/Context;Ljava/lang/String;)Landroid/os/storage/StorageVolume;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1289
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 1290
    .local v0, "mStorageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 1291
    .local v1, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1292
    .local v4, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1293
    return-object v4

    .line 1291
    .end local v4    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1296
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getUDiskFsType(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 1327
    const/4 v0, 0x0

    .line 1328
    .local v0, "res":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    .line 1329
    .local v1, "mStorageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    .line 1330
    .local v2, "volumeInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 1331
    .local v4, "volumeInfo":Landroid/os/storage/VolumeInfo;
    const-string v6, "FileUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "volumeInfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " , volumeInfo.getDisk() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1333
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 1334
    iget-object v0, v4, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    goto :goto_1

    .line 1336
    :cond_0
    const-wide/16 v6, 0x7d0

    invoke-static {v6, v7}, Lcom/xiaopeng/commonfunc/system/runnable/Sleep;->sleep(J)V

    .line 1337
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->getUDiskFsType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1339
    goto :goto_1

    .line 1341
    .end local v4    # "volumeInfo":Landroid/os/storage/VolumeInfo;
    :cond_1
    goto :goto_0

    .line 1342
    :cond_2
    :goto_1
    const-string v3, "FileUtil"

    const-string v4, "getUDiskFsType [%s]"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1343
    return-object v0
.end method

.method public static getUDiskPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 1314
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 1315
    .local v0, "mStorageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    .line 1316
    .local v1, "volumeInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 1317
    .local v3, "volumeInfo":Landroid/os/storage/VolumeInfo;
    const-string v5, "FileUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "volumeInfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " , volumeInfo.getDisk() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1319
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getInternalPath()Ljava/io/File;

    move-result-object v2

    .line 1320
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    nop

    :cond_0
    return-object v4

    .line 1322
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "volumeInfo":Landroid/os/storage/VolumeInfo;
    :cond_1
    goto :goto_0

    .line 1323
    :cond_2
    return-object v4
.end method

.method public static isExistFileParentPath(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 810
    const/4 v0, 0x0

    .line 811
    .local v0, "isExist":Z
    if-eqz p0, :cond_0

    .line 812
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 813
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 815
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isExistFileParentPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    return v0
.end method

.method public static isExistFilePath(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, "isExist":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 802
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 803
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 805
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isExistFilePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 806
    return v0
.end method

.method public static isFileTypeExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .line 744
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 746
    .local v0, "fileFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 747
    const-string v1, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFileTypeExist filePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    return v2

    .line 750
    :cond_0
    const-string v1, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFileTypeExist filePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 752
    .local v1, "filesList":[Ljava/io/File;
    if-eqz v1, :cond_3

    .line 753
    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 754
    const-string v4, "FileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFileTypeExist filesList[i].getName() =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 755
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 756
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->isFileTypeExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 757
    return v5

    .line 759
    :cond_1
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 760
    const-string v2, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFileTypeExist i find file endswith "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    return v5

    .line 753
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 768
    .end local v1    # "filesList":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_3
    return v2
.end method

.method public static isFileTypeExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .line 772
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 774
    .local v0, "fileFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 775
    const-string v1, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFileTypeExist filePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    return v2

    .line 778
    :cond_0
    const-string v1, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFileTypeExist filePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 780
    .local v1, "filesList":[Ljava/io/File;
    if-eqz v1, :cond_3

    .line 781
    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 782
    const-string v4, "FileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFileTypeExist filesList[i].getName() =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 783
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 784
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->isFileTypeExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 785
    return v5

    .line 787
    :cond_1
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 788
    const-string v2, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFileTypeExist i find file startwith: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ,endswith: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    return v5

    .line 781
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 796
    .end local v1    # "filesList":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_3
    return v2
.end method

.method public static isUsbDeviceAttached(Landroid/content/Context;II)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vid"    # I
    .param p2, "pid"    # I

    .line 1398
    const/4 v0, 0x0

    .line 1399
    .local v0, "res":Z
    const-string v1, "usb"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    .line 1401
    .local v1, "deviceHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1402
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    .line 1403
    .local v4, "device":Landroid/hardware/usb/UsbDevice;
    const-string v5, "FileUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isUsbDeviceAttached: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1404
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 1405
    const/4 v0, 0x1

    .line 1407
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_0
    goto :goto_0

    .line 1408
    :cond_1
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUsbDeviceAttached vid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1409
    return v0
.end method

.method static synthetic lambda$getFileList$0(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .line 712
    invoke-virtual {p2, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getFileList$1(Ljava/io/File;Ljava/io/File;)I
    .locals 2
    .param p0, "file1"    # Ljava/io/File;
    .param p1, "file2"    # Ljava/io/File;

    .line 717
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$getFileList$2(Ljava/io/File;Ljava/io/File;)I
    .locals 2
    .param p0, "file1"    # Ljava/io/File;
    .param p1, "file2"    # Ljava/io/File;

    .line 720
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$listFilesNameFilter$4(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .line 839
    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$listFilesPathNameFilter$3(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .line 833
    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static listFileName(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 822
    .local v1, "filePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 823
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 824
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    const-string v6, "FileUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filepath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 823
    .end local v5    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 828
    :cond_0
    return-object v0
.end method

.method public static listFilesNameFilter(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 838
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 839
    .local v0, "fileFolder":Ljava/io/File;
    new-instance v1, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUtil$4PnDxYS0B4ZQsQf2o5GpZegPuZM;

    invoke-direct {v1, p1}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUtil$4PnDxYS0B4ZQsQf2o5GpZegPuZM;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 840
    .local v1, "filesList":[Ljava/io/File;
    return-object v1
.end method

.method public static listFilesPathNameFilter(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 832
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 833
    .local v0, "fileFolder":Ljava/io/File;
    new-instance v1, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUtil$kl-vMES3VcyRry4JWxxKNjYe--A;

    invoke-direct {v1, p1}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUtil$kl-vMES3VcyRry4JWxxKNjYe--A;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, "filesList":[Ljava/lang/String;
    return-object v1
.end method

.method public static mkDir(Ljava/lang/String;)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "res":Z
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 519
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 520
    .local v1, "index":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, "dir":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 523
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_0

    .line 525
    :cond_0
    const/4 v0, 0x1

    .line 528
    .end local v1    # "index":I
    .end local v2    # "dir":Ljava/lang/String;
    .end local v3    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mkDir path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    return v0
.end method

.method public static read(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 345
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 347
    nop

    .line 348
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 349
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 353
    :catch_0
    move-exception v2

    .line 354
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 357
    nop

    .line 358
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    return-object v0

    .line 356
    :goto_1
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "split"    # Ljava/lang/String;

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 301
    .local v1, "temp_value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 304
    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 306
    nop

    .line 308
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 309
    if-nez v1, :cond_1

    .line 310
    goto :goto_3

    .line 311
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 312
    move-object v0, v1

    .line 313
    goto :goto_3

    .line 314
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 316
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 317
    new-array v5, v4, [Ljava/lang/String;

    aput-object v1, v5, v3

    .local v5, "values":[Ljava/lang/String;
    goto :goto_0

    .line 319
    .end local v5    # "values":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 321
    .restart local v5    # "values":[Ljava/lang/String;
    :goto_0
    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    .line 322
    .local v8, "val":Ljava/lang/String;
    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 323
    const-string v6, ""

    invoke-virtual {v8, p1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .line 324
    goto :goto_2

    .line 321
    .end local v8    # "val":Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 327
    :cond_5
    :goto_2
    goto :goto_3

    .line 334
    .end local v5    # "values":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 331
    :catch_0
    move-exception v5

    .line 332
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 335
    nop

    .line 336
    const-string v5, "FileUtil"

    const-string v6, "read path[%s] tag[%s] split[%s] value[%s]"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v3

    aput-object p1, v7, v4

    const/4 v3, 0x2

    aput-object p2, v7, v3

    const/4 v3, 0x3

    aput-object v0, v7, v3

    invoke-static {v5, v6, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    return-object v0

    .line 334
    :goto_4
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method

.method public static readAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "temp_value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 393
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .local v2, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    .line 398
    nop

    .line 400
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 402
    if-nez v0, :cond_0

    .line 403
    goto :goto_1

    .line 406
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 413
    :goto_1
    nop

    .line 415
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 418
    :goto_2
    goto :goto_3

    .line 416
    :catch_0
    move-exception v3

    .line 417
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 413
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 410
    :catch_1
    move-exception v3

    .line 411
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 413
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 415
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 421
    :cond_1
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 413
    :goto_4
    if-eqz v1, :cond_2

    .line 415
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 418
    goto :goto_5

    .line 416
    :catch_2
    move-exception v4

    .line 417
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 418
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_5
    throw v3
.end method

.method public static readAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 365
    .local v1, "temp_value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 368
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 370
    nop

    .line 372
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 374
    if-nez v1, :cond_0

    .line 375
    goto :goto_1

    .line 377
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 381
    :catch_0
    move-exception v3

    .line 382
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 385
    nop

    .line 386
    const-string v3, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readAll path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 384
    :goto_2
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method

.method public static readDoubleVal(Ljava/lang/String;)D
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, "value":Ljava/lang/String;
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 472
    .local v1, "retVal":D
    const/4 v3, 0x0

    .line 475
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 477
    nop

    .line 478
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 479
    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v1, v4

    .line 486
    :cond_0
    nop

    .line 488
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 491
    :goto_0
    goto :goto_1

    .line 489
    :catch_0
    move-exception v4

    .line 490
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 486
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 483
    :catch_1
    move-exception v4

    .line 484
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 486
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    .line 488
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 495
    :cond_1
    :goto_1
    const-string v4, "FileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readDoubleVal path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", retVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    return-wide v1

    .line 486
    :goto_2
    if-eqz v3, :cond_2

    .line 488
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 491
    goto :goto_3

    .line 489
    :catch_2
    move-exception v5

    .line 490
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 491
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v4
.end method

.method public static readFile(Ljava/lang/String;)[B
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;

    .line 425
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 426
    .local v1, "buffer1":[B
    const/4 v2, 0x0

    .line 428
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 429
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 430
    .local v3, "buffer":[B
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 431
    .local v4, "len":I
    new-array v5, v4, [B

    move-object v1, v5

    .line 432
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 433
    aget-byte v5, v3, v0

    aput-byte v5, v1, v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    .end local v0    # "i":I
    .end local v3    # "buffer":[B
    .end local v4    # "len":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 435
    :catch_1
    move-exception v0

    .line 436
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 441
    nop

    .line 442
    return-object v1

    .line 440
    :goto_2
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static readLongVal(Ljava/lang/String;)J
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "value":Ljava/lang/String;
    const-wide/16 v1, -0x1

    .line 271
    .local v1, "retVal":J
    const/4 v3, 0x0

    .line 274
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 276
    nop

    .line 277
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 278
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v1, v4

    .line 285
    :cond_0
    nop

    .line 287
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 290
    :goto_0
    goto :goto_1

    .line 288
    :catch_0
    move-exception v4

    .line 289
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 285
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 282
    :catch_1
    move-exception v4

    .line 283
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    .line 287
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 294
    :cond_1
    :goto_1
    const-string v4, "FileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLongVal path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", retVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    return-wide v1

    .line 285
    :goto_2
    if-eqz v3, :cond_2

    .line 287
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 290
    goto :goto_3

    .line 288
    :catch_2
    move-exception v5

    .line 289
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 290
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v4
.end method

.method public static readVal(Ljava/lang/String;)I
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "value":Ljava/lang/String;
    const/4 v1, -0x1

    .line 448
    .local v1, "retVal":I
    const/4 v2, 0x0

    .line 451
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 453
    nop

    .line 454
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 455
    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 459
    :catch_0
    move-exception v3

    .line 460
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 463
    nop

    .line 465
    const-string v3, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readVal path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", retVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    return v1

    .line 462
    :goto_1
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method

.method public static runFormat(Landroid/os/storage/StorageVolume;Landroid/content/Context;)V
    .locals 3
    .param p0, "storageVolume"    # Landroid/os/storage/StorageVolume;
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1389
    const-string v0, "FileUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runFormat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1390
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "com.android.internal.os.storage.ExternalStorageFormatter"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    .local v0, "formatter":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1392
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1393
    const-string v2, "android.os.storage.extra.STORAGE_VOLUME"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1394
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1395
    return-void
.end method

.method public static sortFiles([Ljava/io/File;)[Ljava/io/File;
    .locals 7
    .param p0, "files"    # [Ljava/io/File;

    .line 845
    if-nez p0, :cond_0

    .line 846
    return-object p0

    .line 848
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 849
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before sort : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 848
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 851
    .end local v1    # "i":I
    :cond_1
    move v1, v0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 852
    move v2, v0

    .local v2, "j":I
    :goto_2
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_3

    .line 853
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    add-int/lit8 v5, v2, 0x1

    aget-object v5, p0, v5

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 854
    aget-object v3, p0, v2

    .line 855
    .local v3, "temp":Ljava/io/File;
    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    aput-object v4, p0, v2

    .line 856
    add-int/lit8 v4, v2, 0x1

    aput-object v3, p0, v4

    .line 852
    .end local v3    # "temp":Ljava/io/File;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 851
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 860
    .end local v1    # "i":I
    :cond_4
    nop

    .local v0, "i":I
    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_5

    .line 861
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After sort : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 860
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 863
    .end local v0    # "i":I
    :cond_5
    return-object p0
.end method

.method public static unzipMultiFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "zippath"    # Ljava/lang/String;
    .param p1, "outzippath"    # Ljava/lang/String;

    .line 1234
    const-string v0, "FileUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unzipMultiFile from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1235
    const/4 v0, 0x0

    .line 1236
    .local v0, "input":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 1237
    .local v1, "output":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 1238
    .local v2, "zipFile":Ljava/util/zip/ZipFile;
    const/4 v3, 0x0

    .line 1239
    .local v3, "zipInput":Ljava/util/zip/ZipInputStream;
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 1240
    .local v4, "buffer":[B
    const/4 v5, 0x0

    move v6, v5

    .line 1242
    .local v6, "temp":I
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1243
    .local v7, "file":Ljava/io/File;
    const/4 v8, 0x0

    .line 1244
    .local v8, "outFile":Ljava/io/File;
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    move-object v2, v9

    .line 1245
    new-instance v9, Ljava/util/zip/ZipInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v9

    .line 1246
    const/4 v9, 0x0

    .line 1247
    .local v9, "entry":Ljava/util/zip/ZipEntry;
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v10

    move-object v9, v10

    if-eqz v10, :cond_3

    .line 1248
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v10

    .line 1249
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1250
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 1252
    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1253
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 1255
    :cond_1
    invoke-virtual {v2, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    move-object v0, v10

    .line 1256
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v10

    .line 1259
    :goto_1
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move v6, v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 1260
    invoke-virtual {v1, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 1262
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1263
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1269
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "outFile":Ljava/io/File;
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    :cond_3
    if-eqz v0, :cond_4

    .line 1270
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 1281
    :catch_0
    move-exception v5

    goto :goto_3

    .line 1272
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 1273
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1275
    :cond_5
    nop

    .line 1276
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 1278
    nop

    .line 1279
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1281
    :goto_3
    nop

    .line 1282
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 1284
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 1283
    :cond_6
    :goto_4
    goto :goto_5

    .line 1268
    :catchall_0
    move-exception v5

    goto :goto_6

    .line 1265
    :catch_1
    move-exception v5

    .line 1266
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1269
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_7

    .line 1270
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1272
    :cond_7
    if-eqz v1, :cond_8

    .line 1273
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1275
    :cond_8
    if-eqz v2, :cond_9

    .line 1276
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 1278
    :cond_9
    if-eqz v3, :cond_6

    .line 1279
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 1285
    :goto_5
    return-void

    .line 1268
    :goto_6
    nop

    .line 1269
    if-eqz v0, :cond_a

    .line 1270
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_7

    .line 1281
    :catch_2
    move-exception v7

    goto :goto_8

    .line 1272
    :cond_a
    :goto_7
    if-eqz v1, :cond_b

    .line 1273
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1275
    :cond_b
    if-eqz v2, :cond_c

    .line 1276
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 1278
    :cond_c
    if-eqz v3, :cond_d

    .line 1279
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_9

    .line 1281
    :goto_8
    nop

    .line 1282
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .end local v7    # "e":Ljava/io/IOException;
    nop

    .line 1283
    :cond_d
    :goto_9
    throw v5
.end method

.method public static write(Ljava/lang/String;[B)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .line 101
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "out":Ljava/io/File;
    const/4 v1, 0x0

    .line 105
    .local v1, "fot":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 107
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 108
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 109
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    nop

    .line 115
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    :goto_0
    goto :goto_1

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 110
    :catch_1
    move-exception v2

    .line 111
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 115
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 121
    :cond_0
    :goto_1
    return-void

    .line 113
    :goto_2
    if-eqz v1, :cond_1

    .line 115
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 118
    goto :goto_3

    .line 116
    :catch_2
    move-exception v3

    .line 117
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    throw v2
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 124
    const/4 v0, 0x1

    .line 125
    .local v0, "res":Z
    const/4 v1, 0x0

    .line 128
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 129
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    const/4 v0, 0x0

    .line 134
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 135
    nop

    .line 137
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    return v0

    .line 134
    :goto_1
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .line 142
    const/4 v0, 0x1

    .line 143
    .local v0, "res":Z
    const/4 v1, 0x0

    .line 146
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v1, v2

    .line 147
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 148
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    const/4 v0, 0x0

    .line 152
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 153
    nop

    .line 155
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    return v0

    .line 152
    :goto_1
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static writeFile(Ljava/io/File;[B)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B

    .line 247
    const/4 v0, 0x0

    .line 250
    .local v0, "fot":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 252
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 253
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 254
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    nop

    .line 260
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    :goto_0
    goto :goto_1

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 258
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 255
    :catch_1
    move-exception v1

    .line 256
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 260
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 266
    :cond_0
    :goto_1
    return-void

    .line 258
    :goto_2
    if-eqz v0, :cond_1

    .line 260
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 263
    goto :goto_3

    .line 261
    :catch_2
    move-exception v2

    .line 262
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    throw v1
.end method

.method public static writeFileOS(Ljava/io/FileOutputStream;[B)Z
    .locals 4
    .param p0, "fos"    # Ljava/io/FileOutputStream;
    .param p1, "data"    # [B

    .line 1538
    const/4 v0, 0x0

    .line 1540
    .local v0, "res":Z
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1541
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 1542
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1543
    const/4 v0, 0x1

    .line 1546
    goto :goto_0

    .line 1544
    :catch_0
    move-exception v1

    .line 1545
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1547
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFileOS data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1548
    return v0
.end method

.method public static writeNCreateFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 186
    const/4 v0, 0x1

    .line 188
    .local v0, "res":Z
    const/4 v1, 0x0

    .line 191
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 194
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 197
    :cond_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 198
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .end local v2    # "file":Ljava/io/File;
    nop

    .line 205
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 206
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    const/4 v0, 0x0

    .line 204
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 205
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 206
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 208
    :catch_1
    move-exception v2

    .line 209
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    const/4 v0, 0x0

    .line 212
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 211
    :cond_1
    :goto_0
    nop

    .line 215
    :goto_1
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFile path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    return v0

    .line 203
    :goto_2
    nop

    .line 204
    if-eqz v1, :cond_2

    .line 205
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 206
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 208
    :catch_2
    move-exception v3

    .line 209
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    const/4 v0, 0x0

    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 211
    :cond_2
    :goto_3
    throw v2
.end method

.method public static writeNCreateFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .line 221
    const/4 v0, 0x1

    .line 223
    .local v0, "res":Z
    const/4 v1, 0x0

    .line 226
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 229
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 232
    :cond_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v1, v3

    .line 233
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "file":Ljava/io/File;
    goto :goto_0

    .line 238
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 234
    :catch_0
    move-exception v2

    .line 235
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    const/4 v0, 0x0

    .line 238
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 239
    nop

    .line 242
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFile path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", append="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    return v0

    .line 238
    :goto_1
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static writeNCreateFile(Ljava/lang/String;[B)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .line 160
    const/4 v0, 0x1

    .line 161
    .local v0, "res":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 165
    .local v2, "fot":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 169
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 171
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 172
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 173
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 174
    :catch_0
    move-exception v3

    .line 175
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    const/4 v0, 0x0

    .line 178
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 179
    nop

    .line 181
    return v0

    .line 178
    :goto_1
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method

.method public static zipFileList(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p1, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1062
    .local p0, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 1066
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->createFileOS(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 1067
    .local v0, "fos":Ljava/io/FileOutputStream;
    if-nez v0, :cond_1

    .line 1068
    const-string v1, "FileUtil"

    const-string v2, "FileOutputStream is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1069
    return-void

    .line 1071
    :cond_1
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1073
    .local v1, "out":Ljava/util/zip/ZipOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1074
    new-instance v3, Ljava/io/File;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1075
    .local v3, "sourceFile":Ljava/io/File;
    const-string v4, "FileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "source file = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isExist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1077
    const-string v4, "FileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ziping source file = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1078
    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 1073
    .end local v3    # "sourceFile":Ljava/io/File;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1081
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 1082
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1083
    const-string v2, "FileUtil"

    const-string v3, "finish zip file"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    nop

    .line 1089
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1087
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1084
    :catch_0
    move-exception v2

    .line 1085
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1087
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 1089
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1092
    :goto_1
    goto :goto_2

    .line 1090
    :catch_1
    move-exception v2

    .line 1091
    .local v2, "var15":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "var15":Ljava/io/IOException;
    goto :goto_1

    .line 1095
    :goto_2
    return-void

    .line 1087
    :goto_3
    nop

    .line 1089
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1092
    goto :goto_4

    .line 1090
    :catch_2
    move-exception v3

    .line 1091
    .local v3, "var15":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1092
    .end local v3    # "var15":Ljava/io/IOException;
    :goto_4
    throw v2

    .line 1063
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    :cond_4
    :goto_5
    const-string v0, "FileUtil"

    const-string v1, "zip file List is empty"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    return-void
.end method

.method public static zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p0, "out"    # Ljava/util/zip/ZipOutputStream;
    .param p1, "fileOrDirectory"    # Ljava/io/File;
    .param p2, "curPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1022
    const/4 v0, 0x0

    .line 1026
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1027
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 1028
    .local v1, "buffer":[B
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 1029
    new-instance v3, Ljava/util/zip/ZipEntry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 1030
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p0, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1032
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "i":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 1033
    invoke-virtual {p0, v1, v2, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    .line 1036
    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 1037
    .end local v1    # "buffer":[B
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    goto :goto_2

    .line 1038
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1039
    .local v1, "entries":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 1040
    nop

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 1041
    aget-object v3, v1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1048
    .end local v1    # "entries":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 1050
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1053
    :goto_3
    goto :goto_4

    .line 1051
    :catch_0
    move-exception v1

    .line 1052
    .local v1, "var14":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "var14":Ljava/io/IOException;
    goto :goto_3

    .line 1048
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 1045
    :catch_1
    move-exception v1

    .line 1046
    .local v1, "var15":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1048
    .end local v1    # "var15":Ljava/lang/Exception;
    if-eqz v0, :cond_3

    .line 1050
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 1058
    :cond_3
    :goto_4
    return-void

    .line 1048
    :goto_5
    if-eqz v0, :cond_4

    .line 1050
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1053
    goto :goto_6

    .line 1051
    :catch_2
    move-exception v2

    .line 1052
    .local v2, "var14":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1053
    .end local v2    # "var14":Ljava/io/IOException;
    :cond_4
    :goto_6
    throw v1
.end method
