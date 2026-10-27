.class public Lcom/android/car/JsonReaderImpl;
.super Ljava/lang/Object;
.source "JsonReaderImpl.java"

# interfaces
.implements Lcom/android/car/CarConfigurationService$JsonReader;


# static fields
.field private static final BUF_SIZE:I = 0x1000

.field private static final JSON_FILE_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jsonFileToString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 51
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 52
    .local v2, "reader":Ljava/io/Reader;
    const/16 v3, 0x1000

    :try_start_1
    new-array v3, v3, [C

    .line 53
    .local v3, "buffer":[C
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/Reader;->read([C)I

    move-result v5

    move v6, v5

    .local v6, "bufferedContent":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 57
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 60
    return-object v5

    .line 61
    .end local v3    # "buffer":[C
    .end local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "bufferedContent":I
    :catchall_0
    move-exception v3

    move-object v4, v1

    goto :goto_1

    .line 51
    :catch_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    :catchall_1
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    :goto_1
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v5

    :try_start_5
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    :goto_2
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v2    # "reader":Ljava/io/Reader;
    :catch_2
    move-exception v2

    .line 62
    .local v2, "e":Ljava/io/IOException;
    return-object v1
.end method
