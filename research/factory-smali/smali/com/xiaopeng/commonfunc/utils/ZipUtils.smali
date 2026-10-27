.class public Lcom/xiaopeng/commonfunc/utils/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 50
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/xiaopeng/commonfunc/utils/ZipUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInputFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "input"    # Ljava/io/File;

    .line 165
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 166
    return v0

    .line 169
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method public static getEntryFromZip(Ljava/io/File;Ljava/lang/String;)[B
    .locals 7
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    .local v0, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v1, 0x0

    move-object v2, v1

    .line 34
    .local v2, "ze":Ljava/util/zip/ZipEntry;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_2

    .line 35
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/high16 v4, 0x200000

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 38
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 39
    .local v4, "read":I
    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 40
    .local v5, "buffer":[B
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v6

    move v4, v6

    if-lez v6, :cond_0

    .line 41
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 45
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {v1, v0}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 45
    return-object v6

    .line 48
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "read":I
    .end local v5    # "buffer":[B
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    .end local v2    # "ze":Ljava/util/zip/ZipEntry;
    :cond_2
    invoke-static {v1, v0}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 52
    .end local v0    # "zis":Ljava/util/zip/ZipInputStream;
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Not Found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    .restart local v0    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 32
    :catch_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    :goto_2
    invoke-static {v1, v0}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static getFileFromZip(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "subName"    # Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    move-object v1, v0

    .line 63
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {p0, p1}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->getEntryFromZip(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v2

    .line 64
    .local v2, "data":[B
    sget-object v3, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFileFromZip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    if-nez v2, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    array-length v6, v2

    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_2

    .line 69
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "newFilePath":Ljava/lang/String;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 72
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 73
    .local v5, "writer":Ljava/io/DataOutputStream;
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 74
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 76
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    nop

    .line 82
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    goto :goto_1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v6

    .line 66
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "newFilePath":Ljava/lang/String;
    .end local v5    # "writer":Ljava/io/DataOutputStream;
    :cond_2
    :goto_2
    nop

    .line 80
    if-eqz v1, :cond_3

    .line 82
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 85
    goto :goto_3

    .line 83
    :catch_1
    move-exception v3

    .line 84
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-object v0

    .line 80
    .end local v2    # "data":[B
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 77
    :catch_2
    move-exception v2

    .line 78
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_4

    .line 82
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 85
    :goto_4
    goto :goto_5

    .line 83
    :catch_3
    move-exception v2

    .line 84
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 89
    :cond_4
    :goto_5
    return-object v0

    .line 80
    :goto_6
    if-eqz v1, :cond_5

    .line 82
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 85
    goto :goto_7

    .line 83
    :catch_4
    move-exception v2

    .line 84
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_7
    throw v0
.end method

.method private static mkdirsIfNotExist(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    return-void

    .line 177
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 179
    return-void
.end method

.method public static unzipFile(Ljava/io/File;Ljava/io/File;)V
    .locals 10
    .param p0, "input"    # Ljava/io/File;
    .param p1, "output"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->checkInputFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 136
    :cond_2
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 138
    .local v0, "zis":Ljava/util/zip/ZipInputStream;
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    move-object v3, v2

    .local v3, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_6

    .line 139
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    invoke-static {p1, v2}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->mkdirsIfNotExist(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    goto :goto_0

    .line 145
    :cond_3
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 146
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "dirs":Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->mkdirsIfNotExist(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    .end local v4    # "dirs":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 151
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 152
    .local v6, "read":I
    const/16 v7, 0x1000

    :try_start_1
    new-array v7, v7, [B

    .line 154
    .local v7, "buffer":[B
    :goto_1
    invoke-virtual {v0, v7}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v8

    move v6, v8

    if-lez v8, :cond_5

    .line 155
    invoke-virtual {v4, v7, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 157
    .end local v6    # "read":I
    .end local v7    # "buffer":[B
    :cond_5
    :try_start_2
    invoke-static {v1, v4}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 159
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 160
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 157
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    move-object v6, v1

    goto :goto_2

    .line 150
    :catch_0
    move-exception v5

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 157
    :catchall_1
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_2
    :try_start_4
    invoke-static {v6, v4}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 161
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "ze":Ljava/util/zip/ZipEntry;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    :cond_6
    invoke-static {v1, v0}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 162
    .end local v0    # "zis":Ljava/util/zip/ZipInputStream;
    return-void

    .line 161
    .restart local v0    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_2
    move-exception v2

    goto :goto_3

    .line 136
    :catch_1
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 161
    :goto_3
    invoke-static {v1, v0}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static unzipFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "inputPath"    # Ljava/lang/String;
    .param p1, "outputPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->unzipFile(Ljava/io/File;Ljava/io/File;)V

    .line 125
    return-void
.end method

.method public static zipFiles([Ljava/io/File;Ljava/io/File;)V
    .locals 16
    .param p0, "files"    # [Ljava/io/File;
    .param p1, "zipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 93
    if-eqz v1, :cond_3

    array-length v0, v1

    if-eqz v0, :cond_3

    .line 97
    const/16 v2, 0x400

    .line 98
    .local v2, "count":S
    new-array v0, v2, [B

    move-object v3, v0

    .line 101
    .local v3, "buffer":[B
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object/from16 v4, p1

    :try_start_1
    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v5, v0

    .line 100
    .local v5, "fos":Ljava/io/FileOutputStream;
    nop

    .line 102
    const/4 v6, 0x0

    :try_start_2
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object v7, v0

    .line 100
    .local v7, "zos":Ljava/util/zip/ZipOutputStream;
    nop

    .line 104
    :try_start_3
    array-length v0, v1

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v0, :cond_2

    aget-object v10, v1, v9

    .line 105
    .local v10, "file":Ljava/io/File;
    if-nez v10, :cond_0

    .line 106
    goto :goto_2

    .line 109
    :cond_0
    new-instance v11, Ljava/util/zip/ZipEntry;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 111
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 112
    .local v11, "fis":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-direct {v12, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 111
    .local v12, "bis":Ljava/io/BufferedInputStream;
    nop

    .line 113
    :goto_1
    :try_start_5
    invoke-virtual {v12, v3, v8, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v13

    move v14, v13

    .local v14, "len":I
    const/4 v15, -0x1

    if-eq v13, v15, :cond_1

    .line 114
    invoke-virtual {v7, v3, v8, v14}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 116
    :cond_1
    :try_start_6
    invoke-static {v6, v12}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v12    # "bis":Ljava/io/BufferedInputStream;
    :try_start_7
    invoke-static {v6, v11}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 104
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "len":I
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 116
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "bis":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v0

    move-object v8, v6

    goto :goto_3

    .line 111
    :catch_0
    move-exception v0

    move-object v8, v0

    :try_start_8
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 116
    :catchall_1
    move-exception v0

    :goto_3
    :try_start_9
    invoke-static {v8, v12}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local v12    # "bis":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v0

    move-object v8, v6

    goto :goto_4

    .line 111
    :catch_1
    move-exception v0

    move-object v8, v0

    :try_start_a
    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 116
    :catchall_3
    move-exception v0

    :goto_4
    :try_start_b
    invoke-static {v8, v11}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 118
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :try_start_c
    invoke-static {v6, v7}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .end local v7    # "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_d
    invoke-static {v6, v5}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 120
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    nop

    .line 121
    return-void

    .line 118
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_4
    move-exception v0

    move-object v8, v6

    goto :goto_5

    .line 100
    :catch_2
    move-exception v0

    move-object v8, v0

    :try_start_e
    throw v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 118
    :catchall_5
    move-exception v0

    :goto_5
    :try_start_f
    invoke-static {v8, v7}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .end local v7    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_6
    move-exception v0

    goto :goto_6

    .line 100
    :catch_3
    move-exception v0

    move-object v6, v0

    :try_start_10
    throw v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 118
    :goto_6
    :try_start_11
    invoke-static {v6, v5}, Lcom/xiaopeng/commonfunc/utils/ZipUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    move-object/from16 v4, p1

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    throw v0

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "count":S
    .end local v3    # "buffer":[B
    :cond_3
    move-object/from16 v4, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "files is empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
