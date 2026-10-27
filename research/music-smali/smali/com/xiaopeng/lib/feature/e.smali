.class final Lcom/xiaopeng/lib/feature/e;
.super Ljava/lang/Object;
.source "FileIOUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/feature/e$a;
    }
.end annotation


# static fields
.field private static a:I = 0x80000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 707
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/e;->a(Ljava/io/File;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 709
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/e;->e(Ljava/lang/String;)Z

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

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 675
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/e;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/feature/e;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/io/File;)[B
    .locals 1

    const/4 v0, 0x0

    .line 742
    invoke-static {p0, v0}, Lcom/xiaopeng/lib/feature/e;->a(Ljava/io/File;Lcom/xiaopeng/lib/feature/e$a;)[B

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/io/File;Lcom/xiaopeng/lib/feature/e$a;)[B
    .locals 10

    .line 770
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/e;->c(Ljava/io/File;)Z

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

    sget p0, Lcom/xiaopeng/lib/feature/e;->a:I

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
    sget v2, Lcom/xiaopeng/lib/feature/e;->a:I

    new-array v2, v2, [B

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    .line 779
    :goto_0
    sget p1, Lcom/xiaopeng/lib/feature/e;->a:I

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
    invoke-interface {p1, v7, v8}, Lcom/xiaopeng/lib/feature/e$a;->a(D)V

    move v7, v4

    .line 786
    :goto_1
    sget v8, Lcom/xiaopeng/lib/feature/e;->a:I

    invoke-virtual {v0, v2, v4, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-eq v8, v3, :cond_2

    .line 787
    invoke-virtual {p0, v2, v4, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v7, v8

    int-to-double v8, v7

    div-double/2addr v8, v5

    .line 789
    invoke-interface {p1, v8, v9}, Lcom/xiaopeng/lib/feature/e$a;->a(D)V

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

.method public static b(Ljava/io/File;)Z
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

.method public static b(Ljava/lang/String;)Z
    .locals 0

    .line 935
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/e;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/lib/feature/e;->b(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static c(Ljava/io/File;)Z
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

.method static c(Ljava/lang/String;)Z
    .locals 0

    .line 943
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/e;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 944
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/e;->c(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 911
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/e;->e(Ljava/lang/String;)Z

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

.method private static e(Ljava/lang/String;)Z
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
