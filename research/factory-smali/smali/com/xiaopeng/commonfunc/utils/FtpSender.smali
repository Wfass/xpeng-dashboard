.class public Lcom/xiaopeng/commonfunc/utils/FtpSender;
.super Ljava/lang/Object;
.source "FtpSender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FtpSender"

.field private static final TIMEOUT:I = 0xea60


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 119
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

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changeMakeWorkingDir(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClient;)V
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "ftpClient"    # Lorg/apache/commons/net/ftp/FTPClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "dirs":[Ljava/lang/String;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    .line 216
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 217
    .local v3, "dir":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 218
    invoke-virtual {p1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->makeDirectory(Ljava/lang/String;)Z

    .line 220
    :cond_0
    invoke-virtual {p1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    .line 216
    .end local v3    # "dir":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_1
    return-void
.end method

.method public static delDir(Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;)Z
    .locals 8
    .param p0, "client"    # Lorg/apache/commons/net/ftp/FTPClient;
    .param p1, "dirPath"    # Ljava/lang/String;

    .line 227
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 231
    .local v1, "dirs":[Lorg/apache/commons/net/ftp/FTPFile;
    nop

    .line 230
    nop

    .line 234
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 235
    .local v4, "ftpFile":Lorg/apache/commons/net/ftp/FTPFile;
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, "childPath":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 238
    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, ".."

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 239
    invoke-static {p0, v6}, Lcom/xiaopeng/commonfunc/utils/FtpSender;->delDir(Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;)Z

    goto :goto_1

    .line 243
    :cond_0
    :try_start_1
    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/FTPClient;->deleteFile(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 246
    goto :goto_1

    .line 244
    :catch_0
    move-exception v7

    .line 245
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 234
    .end local v4    # "ftpFile":Lorg/apache/commons/net/ftp/FTPFile;
    .end local v7    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "childPath":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->removeDirectory(Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v2

    .line 251
    :catch_1
    move-exception v2

    .line 252
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "FtpSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listFiles fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    return v0

    .line 228
    .end local v1    # "dirs":[Lorg/apache/commons/net/ftp/FTPFile;
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 229
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "FtpSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listFiles fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    return v0
.end method

.method private static download(Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "ftpClient"    # Lorg/apache/commons/net/ftp/FTPClient;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    move v1, v0

    .line 117
    .local v1, "flag":Z
    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    invoke-static {p2, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "outputStream":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 118
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFile(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v3

    .line 119
    if-eqz v0, :cond_0

    :try_start_2
    invoke-static {v2, v0}, Lcom/xiaopeng/commonfunc/utils/FtpSender;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 121
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    goto :goto_1

    .line 119
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    :goto_0
    if-eqz v0, :cond_1

    :try_start_4
    invoke-static {v2, v0}, Lcom/xiaopeng/commonfunc/utils/FtpSender;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v0    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method

.method private static getFTPClient(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPClient;
    .locals 3
    .param p0, "server"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    .line 141
    .local v0, "ftpClient":Lorg/apache/commons/net/ftp/FTPClient;
    const v1, 0xea60

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setConnectTimeout(I)V

    .line 142
    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setDataTimeout(I)V

    .line 143
    new-instance v1, Lorg/apache/commons/net/ftp/FTPClientConfig;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>()V

    .line 144
    .local v1, "config":Lorg/apache/commons/net/ftp/FTPClientConfig;
    const-string v2, "Asia/Shanghai"

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClientConfig;->setServerTimeZoneId(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 146
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 147
    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;I)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {v0, p0}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;)V

    .line 151
    :goto_0
    invoke-virtual {v0, p2, p3}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setRemoteVerificationEnabled(Z)V

    .line 153
    return-object v0
.end method

.method private static process(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClient;)Z
    .locals 6
    .param p0, "sourceFile"    # Ljava/lang/String;
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "ftpClient"    # Lorg/apache/commons/net/ftp/FTPClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "res":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, "file":Ljava/io/File;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    .line 200
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 205
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-static {p1, p2}, Lcom/xiaopeng/commonfunc/utils/FtpSender;->changeMakeWorkingDir(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClient;)V

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    .line 208
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 209
    const-string v3, "FtpSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTP["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]upload result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    return v0

    .line 201
    .end local v2    # "is":Ljava/io/FileInputStream;
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static refreshFileList(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "ftpClient"    # Lorg/apache/commons/net/ftp/FTPClient;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "excludeList"    # [Ljava/lang/String;

    .line 157
    const/4 v0, 0x1

    .line 159
    .local v0, "res":Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    .local v2, "files":[Ljava/io/File;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 162
    return v3

    .line 164
    :cond_0
    move v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "res":Z
    :goto_0
    :try_start_1
    array-length v5, v2

    if-ge v0, v5, :cond_4

    .line 165
    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 167
    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1, p2, p3, p4}, Lcom/xiaopeng/commonfunc/utils/FtpSender;->refreshFileList(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 168
    const/4 v4, 0x0

    goto :goto_1

    .line 171
    :cond_1
    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "sourceFile":Ljava/lang/String;
    invoke-static {p4, v5}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->containString([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 173
    goto :goto_1

    .line 175
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "excessivePath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v0

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, "remotePathCurrent":Ljava/lang/String;
    const-string v8, "FtpSender"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sourceFile : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", excessivePath: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", remotePathCurrent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", prefix : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-static {v5, v7, p2}, Lcom/xiaopeng/commonfunc/utils/FtpSender;->process(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClient;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v8, :cond_3

    .line 180
    const/4 v4, 0x0

    .line 164
    .end local v5    # "sourceFile":Ljava/lang/String;
    .end local v6    # "excessivePath":Ljava/lang/String;
    .end local v7    # "remotePathCurrent":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 187
    .end local v0    # "i":I
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :cond_4
    goto :goto_3

    .line 184
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v4    # "res":Z
    .local v0, "res":Z
    :catch_1
    move-exception v1

    move v4, v0

    move-object v0, v1

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "res":Z
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    const/4 v4, 0x0

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return v4
.end method

.method public static sendFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "localFileName"    # Ljava/lang/String;
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "ftppath"    # Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "sendRet":Z
    const/4 v1, 0x0

    .line 28
    .local v1, "ftpClient":Lorg/apache/commons/net/ftp/FTPClient;
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/commonfunc/utils/FtpSender;->getFTPClient(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v2

    move-object v1, v2

    .line 29
    if-nez v1, :cond_1

    .line 30
    const-string v2, "FtpSender"

    const-string v3, "getFTPClient fail........ "

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const/4 v2, 0x0

    .line 41
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    goto :goto_0

    .line 44
    :catch_0
    move-exception v3

    .line 45
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 31
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return v2

    .line 34
    :cond_1
    const/4 v2, 0x2

    :try_start_2
    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 36
    invoke-static {v1, p0, p5}, Lcom/xiaopeng/commonfunc/utils/FtpSender;->upload(Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .line 37
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 46
    :goto_1
    goto :goto_2

    .line 44
    :catch_1
    move-exception v2

    .line 45
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 41
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 38
    :catch_2
    move-exception v2

    .line 39
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 41
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    :try_start_5
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 49
    :cond_2
    :goto_2
    return v0

    .line 41
    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 43
    :try_start_6
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 46
    goto :goto_4

    .line 44
    :catch_3
    move-exception v3

    .line 45
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 46
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    throw v2
.end method

.method public static sendFile([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "files"    # [Ljava/lang/String;
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "ftppath"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    .line 54
    .local v0, "sendRet":Z
    const/4 v1, 0x0

    .line 56
    .local v1, "ftpClient":Lorg/apache/commons/net/ftp/FTPClient;
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/commonfunc/utils/FtpSender;->getFTPClient(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v2

    move-object v1, v2

    .line 57
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 58
    const-string v3, "FtpSender"

    const-string v4, "getFTPClient fail........ "

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    nop

    .line 73
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 59
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return v2

    .line 62
    :cond_1
    const/4 v3, 0x2

    :try_start_2
    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 64
    array-length v3, p0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, p0, v2

    .line 65
    .local v4, "file":Ljava/lang/String;
    invoke-static {v1, v4, p5}, Lcom/xiaopeng/commonfunc/utils/FtpSender;->upload(Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 66
    const/4 v0, 0x0

    .line 64
    .end local v4    # "file":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 75
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 78
    :goto_2
    goto :goto_3

    .line 76
    :catch_1
    move-exception v2

    .line 77
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 73
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 70
    :catch_2
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 75
    :try_start_5
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 81
    :cond_4
    :goto_3
    return v0

    .line 73
    :goto_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 75
    :try_start_6
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 78
    goto :goto_5

    .line 76
    :catch_3
    move-exception v3

    .line 77
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    :goto_5
    throw v2
.end method

.method public static sendFiles(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p0, "localFolder"    # Ljava/lang/String;
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "ftppath"    # Ljava/lang/String;
    .param p6, "excludeList"    # [Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "sendRet":Z
    const/4 v1, 0x0

    .line 89
    .local v1, "ftpClient":Lorg/apache/commons/net/ftp/FTPClient;
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/commonfunc/utils/FtpSender;->getFTPClient(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v2

    move-object v1, v2

    .line 90
    if-nez v1, :cond_1

    .line 91
    const-string v2, "FtpSender"

    const-string v3, "getFTPClient fail........ "

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const/4 v2, 0x0

    .line 104
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    goto :goto_0

    .line 107
    :catch_0
    move-exception v3

    .line 108
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 92
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return v2

    .line 95
    :cond_1
    const/4 v2, 0x2

    :try_start_2
    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 97
    invoke-static {v1, p5}, Lcom/xiaopeng/commonfunc/utils/FtpSender;->delDir(Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;)Z

    .line 99
    invoke-static {p0, p5, v1, p0, p6}, Lcom/xiaopeng/commonfunc/utils/FtpSender;->refreshFileList(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .line 100
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 109
    :goto_1
    goto :goto_2

    .line 107
    :catch_1
    move-exception v2

    .line 108
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 104
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 101
    :catch_2
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 104
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    :try_start_5
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 112
    :cond_2
    :goto_2
    return v0

    .line 104
    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 106
    :try_start_6
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 109
    goto :goto_4

    .line 107
    :catch_3
    move-exception v3

    .line 108
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 109
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    throw v2
.end method

.method private static upload(Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "ftpClient"    # Lorg/apache/commons/net/ftp/FTPClient;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "flag":Z
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 128
    .local v2, "path":Ljava/nio/file/Path;
    :try_start_0
    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 129
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    .line 130
    const-string v4, "FtpSender"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storeFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-interface {v2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v4

    move v0, v4

    .line 132
    const-string v4, "FtpSender"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storeFile flag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    if-eqz v1, :cond_0

    :try_start_2
    invoke-static {v3, v1}, Lcom/xiaopeng/commonfunc/utils/FtpSender;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 135
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_0
    goto :goto_1

    .line 133
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 128
    :catch_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    :goto_0
    if-eqz v1, :cond_1

    :try_start_4
    invoke-static {v3, v1}, Lcom/xiaopeng/commonfunc/utils/FtpSender;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method
