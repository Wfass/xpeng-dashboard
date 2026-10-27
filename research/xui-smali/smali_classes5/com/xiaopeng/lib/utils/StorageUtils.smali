.class public Lcom/xiaopeng/lib/utils/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/utils/StorageUtils$StorageInfo;
    }
.end annotation


# static fields
.field private static final NORMAL_SIZE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkTFWritable(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 139
    return v0

    .line 142
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    return v0

    .line 150
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, ".xpTF"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    .local v2, "testFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 155
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_3

    .line 156
    return v0

    .line 158
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    const/4 v0, 0x1

    return v0

    .line 161
    :catch_0
    move-exception v3

    .line 162
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    .end local v3    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private static getStorageList()Ljava/util/List;
    .locals 19
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/utils/StorageUtils$StorageInfo;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 68
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/lib/utils/StorageUtils$StorageInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v2, v0

    .line 69
    .local v2, "paths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 70
    .local v0, "currRemovableNumber":I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "innerSdPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v4

    .line 72
    .local v4, "innerSdRemovable":Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "innerSdState":Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    const-string v6, "mounted_ro"

    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v6, 0x1

    .line 75
    .local v6, "innerSdAvailable":Z
    :goto_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted_ro"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 78
    .local v9, "innerSdReadOnly":Z
    if-eqz v6, :cond_3

    .line 79
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v10, Lcom/xiaopeng/lib/utils/StorageUtils$StorageInfo;

    if-eqz v4, :cond_2

    add-int/lit8 v11, v0, 0x1

    .local v11, "currRemovableNumber":I
    goto :goto_2

    .end local v11    # "currRemovableNumber":I
    :cond_2
    const/4 v11, -0x1

    move/from16 v18, v11

    move v11, v0

    move/from16 v0, v18

    .end local v0    # "currRemovableNumber":I
    .restart local v11    # "currRemovableNumber":I
    :goto_2
    invoke-direct {v10, v3, v9, v4, v0}, Lcom/xiaopeng/lib/utils/StorageUtils$StorageInfo;-><init>(Ljava/lang/String;ZZI)V

    invoke-interface {v1, v7, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 83
    .end local v11    # "currRemovableNumber":I
    .restart local v0    # "currRemovableNumber":I
    :cond_3
    move v11, v0

    .end local v0    # "currRemovableNumber":I
    .restart local v11    # "currRemovableNumber":I
    :goto_3
    const/4 v0, 0x0

    move-object v7, v0

    .line 85
    .local v7, "bfr":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    const-string v12, "/proc/mounts"

    invoke-direct {v10, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v7, v0

    .line 87
    :cond_4
    :goto_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .local v10, "line":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 88
    const-string v0, "vfat"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "/mnt"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    :cond_5
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v12, " "

    invoke-direct {v0, v10, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v0, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 93
    .local v12, "unused":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 94
    .local v13, "mountPoint":Ljava/lang/String;
    invoke-virtual {v2, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 95
    goto :goto_4

    .line 98
    :cond_6
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    move-object v12, v14

    .line 100
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 101
    .local v14, "flags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v15, "ro"

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    .line 103
    .local v15, "readonly":Z
    const-string v8, "/dev/block/vold"

    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 104
    const-string v8, "/mnt/secure"

    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "/mnt/asec"

    .line 105
    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "/mnt/obb"

    .line 106
    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "/dev/mapper"

    .line 107
    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "tmpfs"

    .line 108
    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 109
    invoke-virtual {v2, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v8, Lcom/xiaopeng/lib/utils/StorageUtils$StorageInfo;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v16, v11, 0x1

    .local v16, "currRemovableNumber":I
    move-object/from16 v17, v0

    const/4 v0, 0x1

    :try_start_1
    invoke-direct {v8, v13, v15, v0, v11}, Lcom/xiaopeng/lib/utils/StorageUtils$StorageInfo;-><init>(Ljava/lang/String;ZZI)V

    .end local v0    # "tokens":Ljava/util/StringTokenizer;
    .end local v11    # "currRemovableNumber":I
    .local v17, "tokens":Ljava/util/StringTokenizer;
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .end local v12    # "unused":Ljava/lang/String;
    .end local v13    # "mountPoint":Ljava/lang/String;
    .end local v14    # "flags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "readonly":Z
    .end local v17    # "tokens":Ljava/util/StringTokenizer;
    move/from16 v11, v16

    goto :goto_5

    .line 121
    .end local v10    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v8, v7

    move/from16 v11, v16

    goto :goto_7

    .line 118
    :catch_0
    move-exception v0

    move/from16 v11, v16

    goto :goto_8

    .line 116
    :catch_1
    move-exception v0

    move/from16 v11, v16

    goto :goto_9

    .line 113
    .end local v16    # "currRemovableNumber":I
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v11    # "currRemovableNumber":I
    :cond_7
    const/4 v0, 0x1

    :goto_5
    goto/16 :goto_4

    .line 121
    .end local v10    # "line":Ljava/lang/String;
    :cond_8
    nop

    .line 123
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 126
    :goto_6
    goto :goto_a

    .line 124
    :catch_2
    move-exception v0

    move-object v8, v0

    .line 125
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "ex":Ljava/io/IOException;
    goto :goto_6

    .line 121
    :catchall_1
    move-exception v0

    move-object v8, v7

    .end local v7    # "bfr":Ljava/io/BufferedReader;
    .local v8, "bfr":Ljava/io/BufferedReader;
    :goto_7
    move-object v7, v0

    goto :goto_b

    .line 118
    .end local v8    # "bfr":Ljava/io/BufferedReader;
    .restart local v7    # "bfr":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    .line 119
    .restart local v0    # "ex":Ljava/io/IOException;
    :goto_8
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    .end local v0    # "ex":Ljava/io/IOException;
    if-eqz v7, :cond_9

    .line 123
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    .line 116
    :catch_4
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :goto_9
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 121
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    if-eqz v7, :cond_9

    .line 123
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    .line 129
    :cond_9
    :goto_a
    return-object v1

    .line 121
    .end local v7    # "bfr":Ljava/io/BufferedReader;
    .restart local v8    # "bfr":Ljava/io/BufferedReader;
    :goto_b
    if-eqz v8, :cond_a

    .line 123
    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 126
    goto :goto_c

    .line 124
    :catch_5
    move-exception v0

    move-object v10, v0

    .line 125
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_a
    :goto_c
    throw v7
.end method

.method public static isTFcardMounted()Z
    .locals 4

    .line 36
    invoke-static {}, Lcom/xiaopeng/lib/utils/StorageUtils;->getStorageList()Ljava/util/List;

    move-result-object v0

    .line 37
    .local v0, "storageInfos":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/lib/utils/StorageUtils$StorageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 38
    return v2

    .line 40
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/utils/StorageUtils$StorageInfo;

    iget-object v1, v1, Lcom/xiaopeng/lib/utils/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    .line 41
    .local v1, "sd2":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    return v2

    .line 44
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/StorageUtils;->checkTFWritable(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method
