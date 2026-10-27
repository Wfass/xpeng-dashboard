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

    .line 119
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;-><init>(Lcom/xiaopeng/xui/sound/SoundEffectPool;)V

    return-void
.end method


# virtual methods
.method public load(Lcom/xiaopeng/xui/sound/SoundEffectResource;)I
    .locals 6

    const-string v0, ",path:"

    .line 123
    iget-object v1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    invoke-static {v1}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->access$200(Lcom/xiaopeng/xui/sound/SoundEffectPool;)Landroid/media/SoundPool;

    move-result-object v1

    const-string v2, "LoaderAssets--resource:"

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 126
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    iget-object v4, v4, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundEffectResource:Lcom/xiaopeng/xui/sound/SoundEffectResource;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/sound/SoundEffectResource;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 127
    iget-object v3, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    iget-object v5, v5, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundEffectResource:Lcom/xiaopeng/xui/sound/SoundEffectResource;

    invoke-virtual {v5}, Lcom/xiaopeng/xui/sound/SoundEffectResource;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", is success"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->access$300(Lcom/xiaopeng/xui/sound/SoundEffectPool;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 129
    iget-object v4, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    iget-object v0, v0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundEffectResource:Lcom/xiaopeng/xui/sound/SoundEffectResource;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/sound/SoundEffectResource;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", is error"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->access$300(Lcom/xiaopeng/xui/sound/SoundEffectPool;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 133
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    invoke-static {p1}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->access$200(Lcom/xiaopeng/xui/sound/SoundEffectPool;)Landroid/media/SoundPool;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result p1
    :try_end_1
    .catch Landroid/util/AndroidRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    move-exception p1

    .line 135
    invoke-virtual {p1}, Landroid/util/AndroidRuntimeException;->printStackTrace()V

    goto :goto_1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",mSoundPool is null"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->access$300(Lcom/xiaopeng/xui/sound/SoundEffectPool;Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method
