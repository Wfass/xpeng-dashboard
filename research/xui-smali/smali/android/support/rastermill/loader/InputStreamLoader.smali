.class public Landroid/support/rastermill/loader/InputStreamLoader;
.super Landroid/support/rastermill/loader/AbsLoader;
.source "InputStreamLoader.java"


# instance fields
.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;

    .line 21
    invoke-direct {p0, p1}, Landroid/support/rastermill/loader/AbsLoader;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p3, p0, Landroid/support/rastermill/loader/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    .line 23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inputStream@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 26
    :cond_0
    iput-object p2, p0, Landroid/support/rastermill/loader/InputStreamLoader;->mKey:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public decode()Landroid/support/rastermill/FrameSequence;
    .locals 5

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "frameSequence":Landroid/support/rastermill/FrameSequence;
    iget-object v1, p0, Landroid/support/rastermill/loader/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    .line 49
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Landroid/support/rastermill/FrameSequence;->decodeStream(Ljava/io/InputStream;)Landroid/support/rastermill/FrameSequence;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 53
    if-eqz v1, :cond_0

    .line 55
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    :goto_0
    goto :goto_1

    .line 56
    :catch_0
    move-exception v2

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 50
    :catch_1
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    const-class v3, Landroid/support/rastermill/FrameSequenceUtil;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "decodeFile"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    .end local v2    # "e":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 55
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 61
    :cond_0
    :goto_1
    return-object v0

    .line 53
    :goto_2
    if-eqz v1, :cond_1

    .line 55
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 58
    goto :goto_3

    .line 56
    :catch_2
    move-exception v3

    .line 60
    :cond_1
    :goto_3
    throw v2
.end method

.method public exists()Z
    .locals 2

    .line 37
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/support/rastermill/loader/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/rastermill/loader/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 38
    :catch_0
    move-exception v1

    .line 41
    return v0
.end method

.method public getType()I
    .locals 1

    .line 31
    const/4 v0, 0x4

    return v0
.end method

.method public release()V
    .locals 2

    .line 66
    invoke-static {}, Landroid/support/rastermill/LogUtil;->isLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputStreamLoader release : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/rastermill/loader/InputStreamLoader;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/loader/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    .line 70
    .local v0, "inputStream":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 72
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 77
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/rastermill/loader/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    .line 78
    return-void
.end method
