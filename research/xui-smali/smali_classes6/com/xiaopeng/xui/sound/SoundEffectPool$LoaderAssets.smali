.class Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;
.super Ljava/lang/Object;
.source "SoundEffectPool.java"

# interfaces
.implements Lcom/xiaopeng/xui/sound/XSoundEffect$SoundLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/sound/SoundEffectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderAssets"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xui/sound/SoundEffectPool;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xui/sound/SoundEffectPool;Lcom/xiaopeng/xui/sound/SoundEffectPool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xui/sound/SoundEffectPool;
    .param p2, "x1"    # Lcom/xiaopeng/xui/sound/SoundEffectPool$1;

    .line 119
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;-><init>(Lcom/xiaopeng/xui/sound/SoundEffectPool;)V

    return-void
.end method


# virtual methods
.method public load(Lcom/xiaopeng/xui/sound/SoundEffectResource;)I
    .locals 5
    .param p1, "resource"    # Lcom/xiaopeng/xui/sound/SoundEffectResource;

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    invoke-static {v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->access$200(Lcom/xiaopeng/xui/sound/SoundEffectPool;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    iget-object v2, v2, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundEffectResource:Lcom/xiaopeng/xui/sound/SoundEffectResource;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/sound/SoundEffectResource;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    move-object v0, v1

    .line 127
    iget-object v1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoaderAssets--resource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    iget-object v3, v3, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundEffectResource:Lcom/xiaopeng/xui/sound/SoundEffectResource;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/sound/SoundEffectResource;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", is success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->access$300(Lcom/xiaopeng/xui/sound/SoundEffectPool;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoaderAssets--resource:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    iget-object v4, v4, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundEffectResource:Lcom/xiaopeng/xui/sound/SoundEffectResource;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/sound/SoundEffectResource;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", is error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->access$300(Lcom/xiaopeng/xui/sound/SoundEffectPool;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 133
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    invoke-static {v1}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->access$200(Lcom/xiaopeng/xui/sound/SoundEffectPool;)Landroid/media/SoundPool;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1
    :try_end_1
    .catch Landroid/util/AndroidRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 134
    :catch_1
    move-exception v1

    .line 135
    .local v1, "e":Landroid/util/AndroidRuntimeException;
    invoke-virtual {v1}, Landroid/util/AndroidRuntimeException;->printStackTrace()V

    .line 137
    .end local v0    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v1    # "e":Landroid/util/AndroidRuntimeException;
    goto :goto_1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoaderAssets--resource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mSoundPool is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->access$300(Lcom/xiaopeng/xui/sound/SoundEffectPool;Ljava/lang/String;)V

    .line 140
    :goto_1
    const/4 v0, 0x0

    return v0
.end method
