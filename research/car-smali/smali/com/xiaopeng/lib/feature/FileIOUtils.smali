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
.field private static sBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/high16 v0, 0x80000

    sput v0, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

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
    .param p0, "file"    # Ljava/io/File;

    .line 931
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private static createOrExistsFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 919
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 920
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0

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

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 924
    :catch_0
    move-exception v1

    .line 925
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 926
    return v0
.end method

.method private static createOrExistsFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 915
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static getFileByPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 911
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private static is2Bytes(Ljava/io/InputStream;)[B
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;

    .line 962
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 963
    :cond_0
    move-object v1, v0

    .line 965
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v2

    .line 966
    sget v2, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    new-array v2, v2, [B

    .line 968
    .local v2, "b":[B
    :goto_0
    sget v3, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v5, v3

    .local v5, "len":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 969
    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 971
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 980
    goto :goto_1

    .line 978
    :catch_0
    move-exception v0

    .line 979
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 982
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 983
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 985
    :catch_1
    move-exception v0

    .line 986
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 987
    :goto_2
    nop

    .line 971
    :goto_3
    return-object v3

    .line 976
    .end local v2    # "b":[B
    .end local v5    # "len":I
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 972
    :catch_2
    move-exception v2

    .line 973
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 974
    nop

    .line 977
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 980
    goto :goto_4

    .line 978
    :catch_3
    move-exception v3

    .line 979
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 982
    .end local v3    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v1, :cond_2

    .line 983
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 985
    :catch_4
    move-exception v3

    .line 986
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 987
    :cond_2
    :goto_5
    nop

    .line 974
    :goto_6
    return-object v0

    .line 976
    .end local v2    # "e":Ljava/io/IOException;
    :goto_7
    nop

    .line 977
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 980
    goto :goto_8

    .line 978
    :catch_5
    move-exception v2

    .line 979
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 982
    .end local v2    # "e":Ljava/io/IOException;
    :goto_8
    if-eqz v1, :cond_3

    .line 983
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_9

    .line 985
    :catch_6
    move-exception v2

    .line 986
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 987
    :cond_3
    :goto_9
    throw v0
.end method

.method public static isDir(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 939
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDir(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;

    .line 935
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static isFileExists(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 948
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isFileExists(Ljava/lang/String;)Z
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .line 943
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 944
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isFileExists(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 952
    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 953
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 954
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 955
    const/4 v0, 0x0

    return v0

    .line 953
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 958
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    return v0
.end method

.method static readFile2BytesByChannel(Ljava/io/File;)[B
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 833
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isFileExists(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 834
    :cond_0
    move-object v0, v1

    .line 836
    .local v0, "fc":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    move-object v0, v2

    .line 837
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 839
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-gtz v3, :cond_1

    .line 841
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    if-eqz v0, :cond_2

    .line 848
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 850
    :catch_0
    move-exception v1

    .line 851
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 852
    :cond_2
    :goto_0
    nop

    .line 841
    :goto_1
    return-object v3

    .line 846
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 842
    :catch_1
    move-exception v2

    .line 843
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 844
    nop

    .line 847
    if-eqz v0, :cond_3

    .line 848
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 850
    :catch_2
    move-exception v3

    .line 851
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 852
    :cond_3
    :goto_2
    nop

    .line 844
    :goto_3
    return-object v1

    .line 846
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4
    nop

    .line 847
    if-eqz v0, :cond_4

    .line 848
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 850
    :catch_3
    move-exception v2

    .line 851
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 852
    :cond_4
    :goto_5
    throw v1
.end method

.method static readFile2BytesByChannel(Ljava/lang/String;)[B
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 823
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2BytesByChannel(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method static readFile2BytesByMap(Ljava/io/File;)[B
    .locals 9
    .param p0, "file"    # Ljava/io/File;

    .line 873
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isFileExists(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 874
    :cond_0
    move-object v0, v1

    .line 876
    .local v0, "fc":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    move-object v0, v2

    .line 877
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    long-to-int v2, v2

    .line 878
    .local v2, "size":I
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    int-to-long v7, v2

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    move-result-object v3

    .line 879
    .local v3, "mbb":Ljava/nio/MappedByteBuffer;
    new-array v4, v2, [B

    .line 880
    .local v4, "result":[B
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    nop

    .line 887
    if-eqz v0, :cond_1

    .line 888
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 890
    :catch_0
    move-exception v1

    .line 891
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 892
    :cond_1
    :goto_0
    nop

    .line 881
    :goto_1
    return-object v4

    .line 886
    .end local v2    # "size":I
    .end local v3    # "mbb":Ljava/nio/MappedByteBuffer;
    .end local v4    # "result":[B
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 882
    :catch_1
    move-exception v2

    .line 883
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 884
    nop

    .line 887
    if-eqz v0, :cond_2

    .line 888
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 890
    :catch_2
    move-exception v3

    .line 891
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 892
    :cond_2
    :goto_2
    nop

    .line 884
    :goto_3
    return-object v1

    .line 886
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4
    nop

    .line 887
    if-eqz v0, :cond_3

    .line 888
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 890
    :catch_3
    move-exception v2

    .line 891
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 892
    :cond_3
    :goto_5
    throw v1
.end method

.method static readFile2BytesByMap(Ljava/lang/String;)[B
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 863
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2BytesByMap(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method static readFile2BytesByStream(Ljava/io/File;)[B
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 742
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)[B

    move-result-object v0

    return-object v0
.end method

.method static readFile2BytesByStream(Ljava/io/File;Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)[B
    .locals 13
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;

    .line 770
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isFileExists(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 772
    :cond_0
    const/4 v0, 0x0

    .line 773
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget v4, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    .line 775
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v3

    .line 776
    sget v3, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    new-array v3, v3, [B

    .line 778
    .local v3, "b":[B
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    .line 779
    :goto_0
    sget v6, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    invoke-virtual {v2, v3, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v7, v6

    .local v7, "len":I
    if-eq v6, v4, :cond_3

    .line 780
    invoke-virtual {v0, v3, v5, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 783
    .end local v7    # "len":I
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v6

    int-to-double v6, v6

    .line 784
    .local v6, "totalSize":D
    const/4 v8, 0x0

    .line 785
    .local v8, "curSize":I
    const-wide/16 v9, 0x0

    invoke-interface {p1, v9, v10}, Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V

    .line 786
    :goto_1
    sget v9, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    invoke-virtual {v2, v3, v5, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    move v10, v9

    .local v10, "len":I
    if-eq v9, v4, :cond_2

    .line 787
    invoke-virtual {v0, v3, v5, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 788
    add-int/2addr v8, v10

    .line 789
    int-to-double v11, v8

    div-double/2addr v11, v6

    invoke-interface {p1, v11, v12}, Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V

    goto :goto_1

    .line 792
    .end local v6    # "totalSize":D
    .end local v8    # "curSize":I
    :cond_2
    move v7, v10

    .end local v10    # "len":I
    .restart local v7    # "len":I
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 798
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7

    .line 801
    goto :goto_2

    .line 799
    :catch_0
    move-exception v5

    .line 800
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7

    .line 803
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    nop

    .line 804
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_3

    .line 806
    :catch_1
    move-exception v5

    .line 807
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_7

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 808
    :goto_3
    nop

    .line 792
    :goto_4
    return-object v4

    .line 797
    .end local v3    # "b":[B
    .end local v7    # "len":I
    :catchall_0
    move-exception v3

    goto :goto_8

    .line 793
    :catch_2
    move-exception v3

    .line 794
    .local v3, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 795
    nop

    .line 798
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    .line 801
    goto :goto_5

    .line 799
    :catch_3
    move-exception v4

    .line 800
    .local v4, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    .line 803
    .end local v4    # "e":Ljava/io/IOException;
    :goto_5
    if-eqz v0, :cond_4

    .line 804
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    .line 806
    :catch_4
    move-exception v4

    .line 807
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_7

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 808
    :cond_4
    :goto_6
    nop

    .line 795
    :goto_7
    return-object v1

    .line 797
    .end local v3    # "e":Ljava/io/IOException;
    :goto_8
    nop

    .line 798
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_7

    .line 801
    goto :goto_9

    .line 799
    :catch_5
    move-exception v4

    .line 800
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_7

    .line 803
    .end local v4    # "e":Ljava/io/IOException;
    :goto_9
    if-eqz v0, :cond_5

    .line 804
    :try_start_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_a

    .line 806
    :catch_6
    move-exception v4

    .line 807
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    nop

    .line 808
    :cond_5
    :goto_a
    throw v3
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_7

    .line 810
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v0

    .line 811
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 812
    return-object v1
.end method

.method static readFile2BytesByStream(Ljava/lang/String;)[B
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 732
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)[B

    move-result-object v0

    return-object v0
.end method

.method static readFile2BytesByStream(Ljava/lang/String;Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)[B
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;

    .line 758
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method static readFile2List(Ljava/io/File;)Ljava/util/List;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
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

    .line 567
    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static readFile2List(Ljava/io/File;II)Ljava/util/List;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "st"    # I
    .param p2, "end"    # I
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

    .line 618
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "st"    # I
    .param p2, "end"    # I
    .param p3, "charsetName"    # Ljava/lang/String;
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

    .line 635
    :cond_0
    if-le p1, p2, :cond_1

    return-object v1

    .line 636
    :cond_1
    move-object v0, v1

    .line 639
    .local v0, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x1

    .line 640
    .local v2, "curLine":I
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p3}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isSpace(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 642
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v4

    goto :goto_0

    .line 644
    :cond_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v4

    .line 648
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 649
    if-le v2, p2, :cond_3

    goto :goto_1

    .line 650
    :cond_3
    if-gt p1, v2, :cond_4

    if-gt v2, p2, :cond_4

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 653
    :cond_5
    :goto_1
    nop

    .line 659
    if-eqz v0, :cond_6

    .line 660
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 662
    :catch_0
    move-exception v1

    .line 663
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 664
    :cond_6
    :goto_2
    nop

    .line 653
    :goto_3
    return-object v3

    .line 658
    .end local v2    # "curLine":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_6

    .line 654
    :catch_1
    move-exception v2

    .line 655
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 656
    nop

    .line 659
    if-eqz v0, :cond_7

    .line 660
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 662
    :catch_2
    move-exception v3

    .line 663
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 664
    :cond_7
    :goto_4
    nop

    .line 656
    :goto_5
    return-object v1

    .line 658
    .end local v2    # "e":Ljava/io/IOException;
    :goto_6
    nop

    .line 659
    if-eqz v0, :cond_8

    .line 660
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    .line 662
    :catch_3
    move-exception v2

    .line 663
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 664
    :cond_8
    :goto_7
    throw v1
.end method

.method static readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
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

    .line 578
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {p0, v0, v1, p1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static readFile2List(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
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

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static readFile2List(Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "st"    # I
    .param p2, "end"    # I
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

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static readFile2List(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "st"    # I
    .param p2, "end"    # I
    .param p3, "charsetName"    # Ljava/lang/String;
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

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static readFile2List(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;
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

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static readFile2String(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 696
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 707
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;)[B

    move-result-object v0

    .line 708
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 709
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 710
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 713
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 714
    :catch_0
    move-exception v1

    .line 715
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 716
    const-string v2, ""

    return-object v2
.end method

.method static readFile2String(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 675
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static readFile2String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 686
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static setBufferSize(I)V
    .locals 0
    .param p0, "bufferSize"    # I

    .line 903
    sput p0, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    .line 904
    return-void
.end method

.method static writeFileFromBytesByChannel(Ljava/io/File;[BZ)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "bytes"    # [B
    .param p2, "isForce"    # Z

    .line 350
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z

    move-result v0

    return v0
.end method

.method static writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "bytes"    # [B
    .param p2, "append"    # Z
    .param p3, "isForce"    # Z

    .line 366
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_6

    .line 367
    :cond_0
    const/4 v1, 0x0

    .line 369
    .local v1, "fc":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    move-object v1, v2

    .line 370
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 371
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 372
    const/4 v2, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :cond_1
    nop

    .line 379
    if-eqz v1, :cond_2

    .line 380
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 384
    :cond_2
    :goto_0
    nop

    .line 373
    :goto_1
    return v2

    .line 378
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 374
    :catch_1
    move-exception v2

    .line 375
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 376
    nop

    .line 379
    if-eqz v1, :cond_3

    .line 380
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 382
    :catch_2
    move-exception v3

    .line 383
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 384
    :cond_3
    :goto_2
    nop

    .line 376
    :goto_3
    return v0

    .line 378
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4
    nop

    .line 379
    if-eqz v1, :cond_4

    .line 380
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 382
    :catch_3
    move-exception v2

    .line 383
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 384
    :cond_4
    :goto_5
    throw v0

    .line 366
    .end local v1    # "fc":Ljava/nio/channels/FileChannel;
    :cond_5
    :goto_6
    return v0
.end method

.method static writeFileFromBytesByChannel(Ljava/lang/String;[BZ)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .param p2, "isForce"    # Z

    .line 320
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z

    move-result v0

    return v0
.end method

.method static writeFileFromBytesByChannel(Ljava/lang/String;[BZZ)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .param p2, "append"    # Z
    .param p3, "isForce"    # Z

    .line 336
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z

    move-result v0

    return v0
.end method

.method static writeFileFromBytesByMap(Ljava/io/File;[BZ)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "bytes"    # [B
    .param p2, "isForce"    # Z

    .line 429
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByMap(Ljava/io/File;[BZZ)Z

    move-result v0

    return v0
.end method

.method static writeFileFromBytesByMap(Ljava/io/File;[BZZ)Z
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .param p1, "bytes"    # [B
    .param p2, "append"    # Z
    .param p3, "isForce"    # Z

    .line 445
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_6

    .line 446
    :cond_0
    const/4 v1, 0x0

    .line 448
    .local v1, "fc":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    move-object v1, v2

    .line 449
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    array-length v2, p1

    int-to-long v7, v2

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    .line 450
    .local v2, "mbb":Ljava/nio/MappedByteBuffer;
    invoke-virtual {v2, p1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 451
    if-eqz p3, :cond_1

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :cond_1
    const/4 v0, 0x1

    .line 458
    if-eqz v1, :cond_2

    .line 459
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v3

    .line 462
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 463
    :cond_2
    :goto_0
    nop

    .line 452
    :goto_1
    return v0

    .line 457
    .end local v2    # "mbb":Ljava/nio/MappedByteBuffer;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 453
    :catch_1
    move-exception v2

    .line 454
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 455
    nop

    .line 458
    if-eqz v1, :cond_3

    .line 459
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 461
    :catch_2
    move-exception v3

    .line 462
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 463
    :cond_3
    :goto_2
    nop

    .line 455
    :goto_3
    return v0

    .line 457
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4
    nop

    .line 458
    if-eqz v1, :cond_4

    .line 459
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 461
    :catch_3
    move-exception v2

    .line 462
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 463
    :cond_4
    :goto_5
    throw v0

    .line 445
    .end local v1    # "fc":Ljava/nio/channels/FileChannel;
    :cond_5
    :goto_6
    return v0
.end method

.method static writeFileFromBytesByMap(Ljava/lang/String;[BZ)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .param p2, "isForce"    # Z

    .line 399
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByMap(Ljava/lang/String;[BZZ)Z

    move-result v0

    return v0
.end method

.method static writeFileFromBytesByMap(Ljava/lang/String;[BZZ)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .param p2, "append"    # Z
    .param p3, "isForce"    # Z

    .line 415
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByMap(Ljava/io/File;[BZZ)Z

    move-result v0

    return v0
.end method

.method static writeFileFromBytesByStream(Ljava/io/File;[B)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "bytes"    # [B

    .line 227
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method static writeFileFromBytesByStream(Ljava/io/File;[BLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "bytes"    # [B
    .param p2, "listener"    # Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;

    .line 289
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method static writeFileFromBytesByStream(Ljava/io/File;[BZ)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "bytes"    # [B
    .param p2, "append"    # Z

    .line 241
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method static writeFileFromBytesByStream(Ljava/io/File;[BZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "bytes"    # [B
    .param p2, "append"    # Z
    .param p3, "listener"    # Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;

    .line 305
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 306
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0, v0, p2, p3}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method static writeFileFromBytesByStream(Ljava/lang/String;[B)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .line 202
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method static writeFileFromBytesByStream(Ljava/lang/String;[BLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .param p2, "listener"    # Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;

    .line 259
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method static writeFileFromBytesByStream(Ljava/lang/String;[BZ)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .param p2, "append"    # Z

    .line 216
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method static writeFileFromBytesByStream(Ljava/lang/String;[BZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .param p2, "append"    # Z
    .param p3, "listener"    # Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;

    .line 275
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "is"    # Ljava/io/InputStream;

    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "listener"    # Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;

    .line 133
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;Z)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "append"    # Z

    .line 85
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 11
    .param p0, "file"    # Ljava/io/File;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "append"    # Z
    .param p3, "listener"    # Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;

    .line 149
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_c

    .line 150
    :cond_0
    const/4 v1, 0x0

    .line 152
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget v4, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v1, v2

    .line 153
    const/4 v2, -0x1

    if-nez p3, :cond_2

    .line 154
    sget v3, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    new-array v3, v3, [B

    .line 155
    .local v3, "data":[B
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    if-eq v4, v2, :cond_1

    .line 156
    invoke-virtual {v1, v3, v0, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 158
    .end local v3    # "data":[B
    .end local v5    # "len":I
    :cond_1
    goto :goto_2

    .line 159
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v3

    int-to-double v3, v3

    .line 160
    .local v3, "totalSize":D
    const/4 v5, 0x0

    .line 161
    .local v5, "curSize":I
    const-wide/16 v6, 0x0

    invoke-interface {p3, v6, v7}, Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V

    .line 162
    sget v6, Lcom/xiaopeng/lib/feature/FileIOUtils;->sBufferSize:I

    new-array v6, v6, [B

    .line 163
    .local v6, "data":[B
    :goto_1
    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "len":I
    if-eq v7, v2, :cond_3

    .line 164
    invoke-virtual {v1, v6, v0, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 165
    add-int/2addr v5, v8

    .line 166
    int-to-double v9, v5

    div-double/2addr v9, v3

    invoke-interface {p3, v9, v10}, Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 169
    .end local v3    # "totalSize":D
    .end local v5    # "curSize":I
    .end local v6    # "data":[B
    .end local v8    # "len":I
    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 175
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    goto :goto_3

    .line 176
    :catch_0
    move-exception v2

    .line 177
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    nop

    .line 181
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 183
    :catch_1
    move-exception v2

    .line 184
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 185
    :goto_4
    nop

    .line 169
    :goto_5
    return v0

    .line 174
    :catchall_0
    move-exception v0

    goto :goto_9

    .line 170
    :catch_2
    move-exception v2

    .line 171
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    nop

    .line 175
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 178
    goto :goto_6

    .line 176
    :catch_3
    move-exception v3

    .line 177
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    .end local v3    # "e":Ljava/io/IOException;
    :goto_6
    if-eqz v1, :cond_4

    .line 181
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    .line 183
    :catch_4
    move-exception v3

    .line 184
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 185
    :cond_4
    :goto_7
    nop

    .line 172
    :goto_8
    return v0

    .line 174
    .end local v2    # "e":Ljava/io/IOException;
    :goto_9
    nop

    .line 175
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 178
    goto :goto_a

    .line 176
    :catch_5
    move-exception v2

    .line 177
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    .end local v2    # "e":Ljava/io/IOException;
    :goto_a
    if-eqz v1, :cond_5

    .line 181
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_b

    .line 183
    :catch_6
    move-exception v2

    .line 184
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 185
    :cond_5
    :goto_b
    throw v0

    .line 149
    .end local v1    # "os":Ljava/io/OutputStream;
    :cond_6
    :goto_c
    return v0
.end method

.method static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "is"    # Ljava/io/InputStream;

    .line 46
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "listener"    # Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;

    .line 103
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;Z)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "append"    # Z

    .line 60
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "append"    # Z
    .param p3, "listener"    # Lcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;

    .line 119
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/xiaopeng/lib/feature/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method static writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "content"    # Ljava/lang/String;

    .line 500
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .line 514
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_6

    .line 515
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 516
    :cond_1
    const/4 v1, 0x0

    .line 518
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v1, v2

    .line 519
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    const/4 v0, 0x1

    .line 526
    nop

    .line 527
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 529
    :catch_0
    move-exception v2

    .line 530
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 531
    :goto_0
    nop

    .line 520
    :goto_1
    return v0

    .line 525
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 521
    :catch_1
    move-exception v2

    .line 522
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 523
    nop

    .line 526
    if-eqz v1, :cond_2

    .line 527
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 529
    :catch_2
    move-exception v3

    .line 530
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 531
    :cond_2
    :goto_2
    nop

    .line 523
    :goto_3
    return v0

    .line 525
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4
    nop

    .line 526
    if-eqz v1, :cond_3

    .line 527
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 529
    :catch_3
    move-exception v2

    .line 530
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 531
    :cond_3
    :goto_5
    throw v0

    .line 514
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    :cond_4
    :goto_6
    return v0
.end method

.method static writeFileFromString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 475
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static writeFileFromString(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .line 489
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/FileIOUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/lib/feature/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
