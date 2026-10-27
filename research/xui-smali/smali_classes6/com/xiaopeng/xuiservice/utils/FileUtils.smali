.class public Lcom/xiaopeng/xuiservice/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x40000

.field private static final RESOURCE_DIR_PERMISSION:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESOURCE_FILE_PERMISSION:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FileUtils"

.field private static final TTS_FILE_PERMISSION:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_NAME:I = 0x1

.field public static final TYPE_PATH:I

.field private static final ZIP_ENCODINGS:[Ljava/lang/String;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 97
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
    .locals 3

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 176
    .local v0, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    sput-object v0, Lcom/xiaopeng/xuiservice/utils/FileUtils;->TTS_FILE_PERMISSION:Ljava/util/Set;

    .line 201
    .end local v0    # "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 203
    .local v0, "dirPerms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 217
    .local v1, "filePerms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    sput-object v0, Lcom/xiaopeng/xuiservice/utils/FileUtils;->RESOURCE_DIR_PERMISSION:Ljava/util/Set;

    .line 228
    sput-object v1, Lcom/xiaopeng/xuiservice/utils/FileUtils;->RESOURCE_FILE_PERMISSION:Ljava/util/Set;

    .line 458
    .end local v0    # "dirPerms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    .end local v1    # "filePerms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    const-string v0, "UTF8"

    const-string v1, "GBK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/FileUtils;->ZIP_ENCODINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p0, "fromFile"    # Ljava/io/File;
    .param p1, "toFile"    # Ljava/io/File;

    .line 129
    const-string v0, "FileUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFile fromFileName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &toFileName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const-string v0, "FileUtils"

    const-string v1, "fromFile not exist"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    const-string v0, "FileUtils"

    const-string v1, "fromFile not file"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    const-string v0, "FileUtils"

    const-string v1, "fromFile not read"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void

    .line 142
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 143
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 145
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->isFileCompleted(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 147
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 149
    :cond_4
    const-string v0, "FileUtils"

    const-string v1, "toFile exists"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void

    .line 154
    :cond_5
    :goto_0
    :try_start_0
    const-string v0, "FileUtils"

    const-string v1, "copy file begin---"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 156
    .local v0, "fosfrom":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 157
    .local v1, "fosto":Ljava/io/FileOutputStream;
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 159
    .local v2, "bt":[B
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "c":I
    if-lez v3, :cond_6

    .line 160
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 162
    :cond_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 163
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 164
    const-string v3, "FileUtils"

    const-string v5, "copy file success---"

    invoke-static {v3, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "fosfrom":Ljava/io/FileInputStream;
    .end local v1    # "fosto":Ljava/io/FileOutputStream;
    .end local v2    # "bt":[B
    .end local v4    # "c":I
    goto :goto_2

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 165
    :catch_1
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 169
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    nop

    .line 170
    :goto_3
    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "fromPath"    # Ljava/lang/String;
    .param p1, "toPath"    # Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "srcFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, "destFile":Ljava/io/File;
    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 126
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .line 430
    const-string v0, "FileUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFile path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 432
    return v0

    .line 434
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 436
    const-string v2, "FileUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFile file not exist with path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 439
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 441
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 442
    .local v2, "children":[Ljava/io/File;
    if-eqz v2, :cond_3

    array-length v3, v2

    if-lez v3, :cond_3

    .line 443
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 444
    .local v4, "child":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 443
    .end local v4    # "child":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    .end local v2    # "children":[Ljava/io/File;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static ensureFolderExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 527
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 529
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    return v1

    .line 532
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static getAllDirs(Ljava/lang/String;)Ljava/util/List;
    .locals 7
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

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v0, "subdirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 508
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 509
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 510
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v5    # "f":Ljava/io/File;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 515
    .end local v2    # "files":[Ljava/io/File;
    :cond_1
    return-object v0
.end method

.method public static getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->parseAllFileInFolder(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V

    .line 523
    return-object v0
.end method

.method public static getFilePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .line 421
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 426
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method private static getMD5HashString(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 282
    const-string v0, ""

    .line 284
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/DigestUtils;->getMD5HashString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 287
    goto :goto_0

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getTypeFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "targetPath"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .line 399
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 401
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 402
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 403
    .local v4, "child":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 404
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 402
    .end local v4    # "child":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 408
    :cond_1
    const-string v2, ""

    return-object v2
.end method

.method private static getZipEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "zipFilePath"    # Ljava/lang/String;

    .line 461
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/FileUtils;->ZIP_ENCODINGS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 462
    .local v4, "encoding":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {v5, p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .local v5, "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    nop

    .line 464
    invoke-static {v3, v5}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    return-object v4

    .line 464
    .end local v5    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :catch_0
    move-exception v3

    .line 461
    .end local v4    # "encoding":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    :cond_0
    return-object v3
.end method

.method public static getZipTrueSize(Ljava/io/File;)J
    .locals 8
    .param p0, "zipFile"    # Ljava/io/File;

    .line 484
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getZipEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "encoding":Ljava/lang/String;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 486
    const-string v3, "FileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not zip: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-wide v1

    .line 489
    :cond_0
    const-string v3, "FileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "zip encoding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    nop

    .line 491
    .local v1, "size":J
    :try_start_0
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {v3, p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 491
    .local v3, "f":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    const/4 v4, 0x0

    .line 492
    :try_start_1
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v5

    .line 493
    .local v5, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 494
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v1, v6

    goto :goto_0

    .line 496
    .end local v5    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    :cond_1
    :try_start_2
    invoke-static {v4, v3}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 498
    .end local v3    # "f":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    goto :goto_2

    .line 496
    .restart local v3    # "f":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 491
    :catch_0
    move-exception v4

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 496
    :goto_1
    :try_start_4
    invoke-static {v4, v3}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 496
    .end local v3    # "f":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :catch_1
    move-exception v3

    .line 497
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 499
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-wide v1
.end method

.method public static grantFolder(Ljava/io/File;)V
    .locals 4
    .param p0, "root"    # Ljava/io/File;

    .line 104
    if-eqz p0, :cond_0

    .line 105
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/File;->setExecutable(Z)Z

    .line 106
    invoke-virtual {p0, v0}, Ljava/io/File;->setReadable(Z)Z

    .line 107
    invoke-virtual {p0, v0}, Ljava/io/File;->setWritable(Z)Z

    .line 108
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 109
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 110
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 111
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 113
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->grantFolder(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "grantFolder e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 119
    :cond_0
    nop

    .line 120
    :goto_1
    return-void
.end method

.method public static isDataDiskSpaceEnough(Ljava/io/File;)Z
    .locals 6
    .param p0, "zipFile"    # Ljava/io/File;

    .line 477
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 478
    .local v0, "data":Ljava/io/File;
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 479
    .local v1, "dataStat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v2

    .line 480
    .local v2, "availSpace":J
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getZipTrueSize(Ljava/io/File;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public static isDataDiskSpaceEnough(Ljava/lang/String;)Z
    .locals 2
    .param p0, "zipFilePath"    # Ljava/lang/String;

    .line 472
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->isDataDiskSpaceEnough(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method private static isFileCompleted(Ljava/io/File;Ljava/io/File;)Z
    .locals 5
    .param p0, "fromFile"    # Ljava/io/File;
    .param p1, "toFile"    # Ljava/io/File;

    .line 273
    const-string v0, "FileUtils"

    const-string v1, "isFileCompleted:"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getMD5HashString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "aHashString":Ljava/lang/String;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get fromFile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " md5 hash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getMD5HashString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "bHashString":Ljava/lang/String;
    const-string v2, "FileUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get toFile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "md5 hash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method private static isPathExist(Ljava/nio/file/Path;)Z
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 355
    :try_start_0
    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    .line 356
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 357
    .end local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 358
    .local v0, "ignore":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static isPathHaveChildren(Ljava/lang/String;)Z
    .locals 4
    .param p0, "targetPath"    # Ljava/lang/String;

    .line 412
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 414
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 415
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2

    .line 417
    .end local v1    # "files":[Ljava/io/File;
    :cond_1
    return v2
.end method

.method public static isZipFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "zipFilePath"    # Ljava/lang/String;

    .line 452
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getZipEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parseAllFileInFolder(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 295
    .local p2, "mList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "FileUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseAllFileInFolder path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " prefix:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "mfile":Ljava/io/File;
    nop

    .line 302
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 303
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 305
    .local v3, "files":[Ljava/io/File;
    const-string v4, "FileUtils"

    const-string v5, "isDirectory"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    if-nez v3, :cond_0

    .line 307
    const-string v2, "FileUtils"

    const-string v4, "empty folder"

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void

    .line 310
    :cond_0
    const-string v4, "FileUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "files.length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    nop

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 312
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1, p2, p3}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->parseAllFileInFolder(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "files":[Ljava/io/File;
    :cond_1
    goto :goto_1

    .line 315
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "fileName":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "filePrefix":Ljava/lang/String;
    const-string v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filePrefix:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isFile:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 319
    if-nez p1, :cond_3

    .line 320
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 321
    :cond_3
    if-ne v4, p1, :cond_4

    .line 322
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "mName":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "mName":Ljava/lang/String;
    .end local v3    # "filePrefix":Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mList.SIZE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v0    # "mfile":Ljava/io/File;
    goto :goto_2

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseAllFileInFolder FAIL :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static readBytesFromFile(Ljava/io/File;)[B
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 363
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readBytesFromPath(Ljava/nio/file/Path;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readBytesFromFile(Ljava/lang/String;)[B
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 367
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readBytesFromPath(Ljava/nio/file/Path;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readBytesFromPath(Ljava/nio/file/Path;)[B
    .locals 5
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 334
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 335
    const-string v1, "FileUtils"

    const-string v2, "read path=null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-object v0

    .line 340
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->isPathExist(Ljava/nio/file/Path;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 341
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read path but not exist, path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-object v0

    .line 346
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FileUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readBytesFromFile failed, path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-object v0
.end method

.method public static readFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 376
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readFromPath(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFromFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 384
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 385
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 388
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    :try_start_2
    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 390
    return-object v3

    .line 391
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object v3, v0

    goto :goto_1

    .line 384
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 391
    :catchall_1
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_1
    :try_start_4
    invoke-static {v3, v1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 392
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 395
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 380
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readFromPath(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFromPath(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 371
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readBytesFromPath(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 372
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v1
.end method

.method public static setFilePermission(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)V"
        }
    .end annotation

    .line 244
    .local p1, "dirPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    .local p2, "filePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    .line 246
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 247
    .local v0, "items":[Ljava/io/File;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 248
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 249
    .local v3, "item":Ljava/io/File;
    invoke-static {v3, p1, p2}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->setFilePermission(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;)V

    .line 248
    .end local v3    # "item":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "items":[Ljava/io/File;
    :cond_0
    goto :goto_1

    .line 253
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_1
    goto :goto_2

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static setOperationResourcePermission(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 236
    const-string v0, "FileUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOperationResourcePermission path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/FileUtils;->RESOURCE_DIR_PERMISSION:Ljava/util/Set;

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/FileUtils;->RESOURCE_FILE_PERMISSION:Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->setFilePermission(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;)V

    .line 239
    const-string v0, "FileUtils"

    const-string v1, "setOperationResourcePermission end"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public static setOperationResourcePermission(Ljava/lang/String;)V
    .locals 1
    .param p0, "destDirPath"    # Ljava/lang/String;

    .line 232
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->setOperationResourcePermission(Ljava/io/File;)V

    .line 233
    return-void
.end method

.method public static setResourcePermissionNoRecursive(Ljava/io/File;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 262
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/FileUtils;->RESOURCE_DIR_PERMISSION:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/FileUtils;->RESOURCE_FILE_PERMISSION:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    goto :goto_1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static setTTSFilePermission(Ljava/lang/String;)V
    .locals 3
    .param p0, "destDirPath"    # Ljava/lang/String;

    .line 191
    const-string v0, "FileUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTTSFilePermission path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "file":Ljava/io/File;
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/FileUtils;->TTS_FILE_PERMISSION:Ljava/util/Set;

    sget-object v2, Lcom/xiaopeng/xuiservice/utils/FileUtils;->TTS_FILE_PERMISSION:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->setFilePermission(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;)V

    .line 195
    const-string v1, "FileUtils"

    const-string v2, "setTTSFilePermission end"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public static unZip(Ljava/io/File;Ljava/lang/String;)V
    .locals 17
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destDirPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 43
    move-object/from16 v2, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 45
    .local v3, "start":J
    const-string v0, "FileUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unZip "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getZipEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "encoding":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 57
    .local v6, "destdir":Ljava/io/File;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 63
    :cond_0
    nop

    .line 65
    :try_start_1
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v0

    .line 66
    .local v7, "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :try_start_2
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    .line 67
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 68
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 70
    .local v9, "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 71
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 72
    .local v10, "dirPath":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v11, "dir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 74
    .end local v10    # "dirPath":Ljava/lang/String;
    .end local v11    # "dir":Ljava/io/File;
    goto :goto_2

    .line 76
    :cond_1
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v10, "targetFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 79
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 81
    :cond_2
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 83
    invoke-virtual {v7, v9}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v11

    .line 84
    .local v11, "is":Ljava/io/InputStream;
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 86
    .local v12, "fos":Ljava/io/FileOutputStream;
    const/high16 v13, 0x40000

    new-array v13, v13, [B

    .line 87
    .local v13, "buf":[B
    :goto_1
    invoke-virtual {v11, v13}, Ljava/io/InputStream;->read([B)I

    move-result v14

    move v15, v14

    .local v15, "len":I
    const/4 v8, -0x1

    if-eq v14, v8, :cond_3

    .line 88
    const/4 v8, 0x0

    invoke-virtual {v12, v13, v8, v15}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 91
    :cond_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 92
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 94
    .end local v9    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v10    # "targetFile":Ljava/io/File;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "buf":[B
    .end local v15    # "len":I
    :goto_2
    goto/16 :goto_0

    .line 95
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 96
    .local v8, "end":J
    const-string v10, "FileUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unzip done  :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v12, v8, v3

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .end local v8    # "end":J
    const/4 v8, 0x0

    :try_start_3
    invoke-static {v8, v7}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 99
    .end local v7    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    nop

    .line 100
    return-void

    .line 97
    .restart local v7    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :catchall_0
    move-exception v0

    const/4 v8, 0x0

    goto :goto_3

    .line 65
    :catch_0
    move-exception v0

    move-object v8, v0

    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 97
    :catchall_1
    move-exception v0

    :goto_3
    :try_start_5
    invoke-static {v8, v7}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .end local v7    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :catch_1
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "unzip error from ZipUtils"

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 61
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "FileUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "destdir:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "destdir":Ljava/io/File;
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid zip format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    .end local v5    # "encoding":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  file not found!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
