.class public Landroid/support/rastermill/loader/ResourceLoader;
.super Landroid/support/rastermill/loader/AbsLoader;
.source "ResourceLoader.java"


# instance fields
.field private mResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/support/rastermill/loader/AbsLoader;-><init>(Landroid/content/Context;)V

    .line 22
    iput p2, p0, Landroid/support/rastermill/loader/ResourceLoader;->mResourceId:I

    .line 23
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/rastermill/loader/ResourceLoader;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public decode()Landroid/support/rastermill/FrameSequence;
    .locals 5

    const/4 v0, 0x0

    .line 41
    :try_start_0
    iget-object v1, p0, Landroid/support/rastermill/loader/ResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/support/rastermill/loader/ResourceLoader;->mResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    invoke-static {v1}, Landroid/support/rastermill/FrameSequence;->decodeStream(Ljava/io/InputStream;)Landroid/support/rastermill/FrameSequence;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 48
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v1, v0

    .line 44
    :goto_1
    :try_start_3
    const-class v3, Landroid/support/rastermill/FrameSequenceUtil;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "openRawResource"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    goto :goto_0

    :catch_0
    :cond_0
    :goto_2
    return-object v0

    :catchall_2
    move-exception v0

    if-eqz v1, :cond_1

    .line 48
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 53
    :catch_1
    :cond_1
    throw v0
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

    const/4 v0, 0x3

    return v0
.end method
