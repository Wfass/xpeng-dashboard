.class public Landroid/support/rastermill/loader/AssetLoader;
.super Landroid/support/rastermill/loader/AbsLoader;
.source "AssetLoader.java"


# instance fields
.field private mAsset:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "asset"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0, p1}, Landroid/support/rastermill/loader/AbsLoader;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Landroid/support/rastermill/loader/AssetLoader;->mAsset:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Landroid/support/rastermill/loader/AssetLoader;->mKey:Ljava/lang/String;

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
    iget-object v2, p0, Landroid/support/rastermill/loader/AssetLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 42
    .local v2, "assetManager":Landroid/content/res/AssetManager;
    iget-object v3, p0, Landroid/support/rastermill/loader/AssetLoader;->mAsset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v1, v3

    .line 43
    invoke-static {v1}, Landroid/support/rastermill/FrameSequence;->decodeStream(Ljava/io/InputStream;)Landroid/support/rastermill/FrameSequence;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 47
    .end local v2    # "assetManager":Landroid/content/res/AssetManager;
    if-eqz v1, :cond_0

    .line 49
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    :goto_0
    goto :goto_1

    .line 50
    :catch_0
    move-exception v2

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 44
    :catch_1
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    const-class v3, Landroid/support/rastermill/FrameSequenceUtil;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "decodeAsset"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .end local v2    # "e":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 49
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 55
    :cond_0
    :goto_1
    return-object v0

    .line 47
    :goto_2
    if-eqz v1, :cond_1

    .line 49
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 52
    goto :goto_3

    .line 50
    :catch_2
    move-exception v3

    .line 54
    :cond_1
    :goto_3
    throw v2
.end method

.method public exists()Z
    .locals 1

    .line 33
    iget-object v0, p0, Landroid/support/rastermill/loader/AssetLoader;->mAsset:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getType()I
    .locals 1

    .line 28
    const/4 v0, 0x1

    return v0
.end method
