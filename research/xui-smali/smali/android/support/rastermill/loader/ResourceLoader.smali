.class public Landroid/support/rastermill/loader/ResourceLoader;
.super Landroid/support/rastermill/loader/AbsLoader;
.source "ResourceLoader.java"


# instance fields
.field private mResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .line 21
    invoke-direct {p0, p1}, Landroid/support/rastermill/loader/AbsLoader;-><init>(Landroid/content/Context;)V

    .line 22
    iput p2, p0, Landroid/support/rastermill/loader/ResourceLoader;->mResourceId:I

    .line 23
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/rastermill/loader/ResourceLoader;->mKey:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public decode()Landroid/support/rastermill/FrameSequence;
    .locals 5

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "frameSequence":Landroid/support/rastermill/FrameSequence;
    const/4 v1, 0x0

    .line 41
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Landroid/support/rastermill/loader/ResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroid/support/rastermill/loader/ResourceLoader;->mResourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 42
    invoke-static {v1}, Landroid/support/rastermill/FrameSequence;->decodeStream(Ljava/io/InputStream;)Landroid/support/rastermill/FrameSequence;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 46
    if-eqz v1, :cond_0

    .line 48
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    :goto_0
    goto :goto_1

    .line 49
    :catch_0
    move-exception v2

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 43
    :catch_1
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    const-class v3, Landroid/support/rastermill/FrameSequenceUtil;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "openRawResource"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .end local v2    # "e":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 48
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 54
    :cond_0
    :goto_1
    return-object v0

    .line 46
    :goto_2
    if-eqz v1, :cond_1

    .line 48
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 51
    goto :goto_3

    .line 49
    :catch_2
    move-exception v3

    .line 53
    :cond_1
    :goto_3
    throw v2
.end method

.method public exists()Z
    .locals 1

    .line 33
    iget v0, p0, Landroid/support/rastermill/loader/ResourceLoader;->mResourceId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getType()I
    .locals 1

    .line 28
    const/4 v0, 0x3

    return v0
.end method
