.class final Lcom/xiaopeng/lib/feature/FileIOUtils;
.super Ljava/lang/Object;
.source "FileIOUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;
    }
.end annotation


# static fields
.field private static sBufferSize:I = 0x80000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createOrExistsDir(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 931
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static createOrExistsFile(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 920
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0

    .line 921
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 923
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 925
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method private static createOrExistsFile(Ljava/lang/String;)Z
    .locals 0

    .line 915
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static getFileByPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 911
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static is2Bytes(Ljava/io/InputStream;)[B
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 965
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    :try_start_1
    sget v2, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    new-array v2, v2, [B

    .line 968
    :goto_0
    sget v3, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 969
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 971
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 977
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 979
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 983
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 986
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v0

    :catch_2
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_6

    :catch_3
    move-exception v2

    move-object v1, v0

    .line 973
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 977
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 979
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    if-eqz v1, :cond_2

    .line 983
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception p0

    .line 986
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_5
    return-object v0

    :catchall_1
    move-exception v0

    .line 977
    :goto_6
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception p0

    .line 979
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    if-eqz v1, :cond_3

    .line 983
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_8

    :catch_7
    move-exception p0

    .line 986
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 988
    :cond_3
    :goto_8
    throw v0
.end method

.method public static isDir(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 939
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDir(Ljava/lang/String;)Z
    .locals 0

    .line 935
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isDir(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static isFileExists(Ljava/io/File;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 948
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isFileExists(Ljava/lang/String;)Z
    .locals 0

    .line 943
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 944
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isFileExists(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 953
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 954
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static readFile2BytesByChannel(Ljava/io/File;)[B
    .locals 4

    .line 833
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isFileExists(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 836
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v0, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 839
    :cond_1
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 841
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_2

    .line 848
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 851
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p0, v1

    .line 843
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_3

    .line 848
    :try_start_4
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 851
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    return-object v1

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_3
    if-eqz v1, :cond_4

    .line 848
    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 851
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 853
    :cond_4
    :goto_4
    throw v0
.end method

.method static readFile2BytesByChannel(Ljava/lang/String;)[B
    .locals 0

    .line 823
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2BytesByChannel(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method static readFile2BytesByMap(Ljava/io/File;)[B
    .locals 9

    .line 873
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isFileExists(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 876
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v0, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    long-to-int v0, v2

    .line 878
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    int-to-long v7, v0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    move-result-object v2

    .line 879
    new-array v3, v0, [B

    const/4 v4, 0x0

    .line 880
    invoke-virtual {v2, v3, v4, v0}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    .line 888
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 891
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v3

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p0, v1

    .line 883
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_2

    .line 888
    :try_start_4
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 891
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v1

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_3
    if-eqz v1, :cond_3

    .line 888
    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 891
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 893
    :cond_3
    :goto_4
    throw v0
.end method

.method static readFile2BytesByMap(Ljava/lang/String;)[B
    .locals 0

    .line 863
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2BytesByMap(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method static readFile2BytesByStream(Ljava/io/File;)[B
    .locals 1

    const/4 v0, 0x0

    .line 742
    invoke-static {p0, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)[B

    move-result-object p0

    return-object p0
.end method

.method static readFile2BytesByStream(Ljava/io/File;Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)[B
    .locals 10

    .line 770
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isFileExists(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 773
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget p0, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    invoke-direct {v0, v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8

    .line 775
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 776
    :try_start_2
    sget v2, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    new-array v2, v2, [B

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    .line 779
    :goto_0
    sget p1, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    invoke-virtual {v0, v2, v4, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-eq p1, v3, :cond_2

    .line 780
    invoke-virtual {p0, v2, v4, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 783
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v5

    int-to-double v5, v5

    const-wide/16 v7, 0x0

    .line 785
    invoke-interface {p1, v7, v8}, Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V

    move v7, v4

    .line 786
    :goto_1
    sget v8, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    invoke-virtual {v0, v2, v4, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-eq v8, v3, :cond_2

    .line 787
    invoke-virtual {p0, v2, v4, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v7, v8

    int-to-double v8, v7

    div-double/2addr v8, v5

    .line 789
    invoke-interface {p1, v8, v9}, Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V

    goto :goto_1

    .line 792
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 798
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8

    goto :goto_2

    :catch_0
    move-exception v0

    .line 800
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_8

    .line 804
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_3

    :catch_1
    move-exception p0

    .line 807
    :try_start_6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_8

    :goto_3
    return-object p1

    :catch_2
    move-exception p1

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object p0, v1

    goto :goto_7

    :catch_3
    move-exception p1

    move-object p0, v1

    .line 794
    :goto_4
    :try_start_7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 798
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_5

    :catch_4
    move-exception p1

    .line 800
    :try_start_9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    :goto_5
    if-eqz p0, :cond_3

    .line 804
    :try_start_a
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_6

    :catch_5
    move-exception p0

    .line 807
    :try_start_b
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_8

    :cond_3
    :goto_6
    return-object v1

    :catchall_1
    move-exception p1

    .line 798
    :goto_7
    :try_start_c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_8

    :catch_6
    move-exception v0

    .line 800
    :try_start_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_8

    :goto_8
    if-eqz p0, :cond_4

    .line 804
    :try_start_e
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_9

    :catch_7
    move-exception p0

    .line 807
    :try_start_f
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 809
    :cond_4
    :goto_9
    throw p1
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_8

    :catch_8
    move-exception p0

    .line 811
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v1
.end method

.method static readFile2BytesByStream(Ljava/lang/String;)[B
    .locals 1

    .line 732
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)[B

    move-result-object p0

    return-object p0
.end method

.method static readFile2BytesByStream(Ljava/lang/String;Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)[B
    .locals 0

    .line 758
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method static readFile2List(Ljava/io/File;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 567
    invoke-static {p0, v0, v1, v2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static readFile2List(Ljava/io/File;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 618
    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 634
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isFileExists(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-le p1, p2, :cond_1

    return-object v1

    .line 640
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 641
    invoke-static {p3}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isSpace(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 642
    new-instance p3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    .line 644
    :cond_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p3, v2

    .line 648
    :goto_0
    :try_start_1
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    if-le v3, p2, :cond_3

    goto :goto_1

    :cond_3
    if-gt p1, v3, :cond_4

    if-gt v3, p2, :cond_4

    .line 650
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz p3, :cond_6

    .line 660
    :try_start_2
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 663
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_2
    return-object v0

    :catch_1
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    move-object p3, v1

    .line 655
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p3, :cond_7

    .line 660
    :try_start_4
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 663
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_4
    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, p3

    :goto_5
    if-eqz v1, :cond_8

    .line 660
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception p1

    .line 663
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 665
    :cond_8
    :goto_6
    throw p0
.end method

.method static readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 578
    invoke-static {p0, v0, v1, p1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static readFile2List(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 546
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static readFile2List(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 590
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static readFile2List(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 606
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static readFile2List(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    .line 557
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static readFile2String(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 696
    invoke-static {p0, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 707
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 709
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    .line 713
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 715
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method static readFile2String(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 675
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static readFile2String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 686
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static setBufferSize(I)V
    .locals 0

    .line 903
    sput p0, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    return-void
.end method

.method static writeFileFromBytesByChannel(Ljava/io/File;[BZ)Z
    .locals 1

    const/4 v0, 0x0

    .line 350
    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z

    move-result p0

    return p0
.end method

.method static writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 366
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v1, 0x0

    .line 369
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 370
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 371
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p0, 0x1

    if-eqz p3, :cond_1

    .line 372
    invoke-virtual {v1, p0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    .line 380
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 383
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 375
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 380
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 383
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_4

    .line 380
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 383
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 385
    :cond_4
    :goto_3
    throw p0

    :cond_5
    :goto_4
    return v0
.end method

.method static writeFileFromBytesByChannel(Ljava/lang/String;[BZ)Z
    .locals 1

    .line 320
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z

    move-result p0

    return p0
.end method

.method static writeFileFromBytesByChannel(Ljava/lang/String;[BZZ)Z
    .locals 0

    .line 336
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z

    move-result p0

    return p0
.end method

.method static writeFileFromBytesByMap(Ljava/io/File;[BZ)Z
    .locals 1

    const/4 v0, 0x0

    .line 429
    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByMap(Ljava/io/File;[BZZ)Z

    move-result p0

    return p0
.end method

.method static writeFileFromBytesByMap(Ljava/io/File;[BZZ)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 445
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v1, 0x0

    .line 448
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 449
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    array-length p0, p1

    int-to-long v7, p0

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 450
    invoke-virtual {p0, p1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_1

    .line 451
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 p0, 0x1

    if-eqz v1, :cond_2

    .line 459
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 462
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 454
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 459
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 462
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_4

    .line 459
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 462
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 464
    :cond_4
    :goto_3
    throw p0

    :cond_5
    :goto_4
    return v0
.end method

.method static writeFileFromBytesByMap(Ljava/lang/String;[BZ)Z
    .locals 1

    const/4 v0, 0x0

    .line 399
    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByMap(Ljava/lang/String;[BZZ)Z

    move-result p0

    return p0
.end method

.method static writeFileFromBytesByMap(Ljava/lang/String;[BZZ)Z
    .locals 0

    .line 415
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByMap(Ljava/io/File;[BZZ)Z

    move-result p0

    return p0
.end method

.method static writeFileFromBytesByStream(Ljava/io/File;[B)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 227
    invoke-static {p0, p1, v0, v1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result p0

    return p0
.end method

.method static writeFileFromBytesByStream(Ljava/io/File;[BLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 1

    const/4 v0, 0x0

    .line 289
    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result p0

    return p0
.end method

.method static writeFileFromBytesByStream(Ljava/io/File;[BZ)Z
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result p0

    return p0
.end method

.method static writeFileFromBytesByStream(Ljava/io/File;[BZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 306
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0, v0, p2, p3}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result p0

    return p0
.end method

.method static writeFileFromBytesByStream(Ljava/lang/String;[B)Z
    .locals 2

    .line 202
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result p0

    return p0
.end method

.method static writeFileFromBytesByStream(Ljava/lang/String;[BLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 1

    .line 259
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result p0

    return p0
.end method

.method static writeFileFromBytesByStream(Ljava/lang/String;[BZ)Z
    .locals 1

    .line 216
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result p0

    return p0
.end method

.method static writeFileFromBytesByStream(Ljava/lang/String;[BZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 0

    .line 275
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result p0

    return p0
.end method

.method static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-static {p0, p1, v0, v1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result p0

    return p0
.end method

.method static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result p0

    return p0
.end method

.method static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result p0

    return p0
.end method

.method static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 149
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v1, 0x0

    .line 152
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget p0, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    invoke-direct {v2, v3, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p0, -0x1

    if-nez p3, :cond_1

    .line 154
    :try_start_1
    sget p2, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    new-array p2, p2, [B

    .line 155
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p3

    if-eq p3, p0, :cond_2

    .line 156
    invoke-virtual {v2, p2, v0, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p2

    int-to-double v3, p2

    const-wide/16 v5, 0x0

    .line 161
    invoke-interface {p3, v5, v6}, Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V

    .line 162
    sget p2, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    new-array p2, p2, [B

    move v1, v0

    .line 163
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v5, p0, :cond_2

    .line 164
    invoke-virtual {v2, p2, v0, v5}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v1, v5

    int-to-double v5, v1

    div-double/2addr v5, v3

    .line 166
    invoke-interface {p3, v5, v6}, Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    .line 175
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 181
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 184
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return p0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_7

    :catch_2
    move-exception p0

    move-object v1, v2

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_3
    move-exception p0

    .line 171
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 175
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    if-eqz v1, :cond_3

    .line 181
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception p0

    .line 184
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_6
    return v0

    .line 175
    :goto_7
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_6
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_8
    if-eqz v1, :cond_4

    .line 181
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_9

    :catch_7
    move-exception p1

    .line 184
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 186
    :cond_4
    :goto_9
    throw p0

    :cond_5
    :goto_a
    return v0
.end method

.method static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 2

    .line 46
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result p0

    return p0
.end method

.method static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 1

    .line 103
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result p0

    return p0
.end method

.method static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;Z)Z
    .locals 1

    .line 60
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result p0

    return p0
.end method

.method static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 0

    .line 119
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result p0

    return p0
.end method

.method static writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 500
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_5

    .line 515
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 518
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 519
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 527
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 530
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 522
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    .line 527
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 530
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    return v0

    :goto_3
    if-eqz v1, :cond_3

    .line 527
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 530
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 532
    :cond_3
    :goto_4
    throw p0

    :cond_4
    :goto_5
    return v0
.end method

.method static writeFileFromString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 475
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static writeFileFromString(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 489
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
