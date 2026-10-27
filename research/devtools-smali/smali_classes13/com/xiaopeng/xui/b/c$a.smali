.class Lcom/xiaopeng/xui/b/c$a;
.super Ljava/lang/Object;
.source "SoundEffectPool.java"

# interfaces
.implements Lcom/xiaopeng/xui/b/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic abk:Lcom/xiaopeng/xui/b/c;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xui/b/c;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/xui/b/c$a;->abk:Lcom/xiaopeng/xui/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xui/b/c;Lcom/xiaopeng/xui/b/c$1;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/b/c$a;-><init>(Lcom/xiaopeng/xui/b/c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/xui/b/d;)I
    .locals 6

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xui/b/c$a;->abk:Lcom/xiaopeng/xui/b/c;

    invoke-static {v0}, Lcom/xiaopeng/xui/b/c;->a(Lcom/xiaopeng/xui/b/c;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 126
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xui/b/c$a;->abk:Lcom/xiaopeng/xui/b/c;

    iget-object v2, v2, Lcom/xiaopeng/xui/b/c;->abc:Lcom/xiaopeng/xui/b/d;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/b/d;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xui/b/c$a;->abk:Lcom/xiaopeng/xui/b/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoaderAssets--resource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xui/b/c$a;->abk:Lcom/xiaopeng/xui/b/c;

    iget-object v3, v3, Lcom/xiaopeng/xui/b/c;->abc:Lcom/xiaopeng/xui/b/d;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/b/d;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", is success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/b/c;->a(Lcom/xiaopeng/xui/b/c;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 129
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/b/c$a;->abk:Lcom/xiaopeng/xui/b/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoaderAssets--resource:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",path:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaopeng/xui/b/c$a;->abk:Lcom/xiaopeng/xui/b/c;

    iget-object p1, p1, Lcom/xiaopeng/xui/b/c;->abc:Lcom/xiaopeng/xui/b/d;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/b/d;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", is error"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/xui/b/c;->a(Lcom/xiaopeng/xui/b/c;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 133
    :goto_1
    :try_start_2
    iget-object p1, p0, Lcom/xiaopeng/xui/b/c$a;->abk:Lcom/xiaopeng/xui/b/c;

    invoke-static {p1}, Lcom/xiaopeng/xui/b/c;->a(Lcom/xiaopeng/xui/b/c;)Landroid/media/SoundPool;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result p1
    :try_end_2
    .catch Landroid/util/AndroidRuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    return p1

    .line 134
    :catch_2
    move-exception p1

    .line 135
    invoke-virtual {p1}, Landroid/util/AndroidRuntimeException;->printStackTrace()V

    .line 137
    goto :goto_2

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/b/c$a;->abk:Lcom/xiaopeng/xui/b/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoaderAssets--resource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",mSoundPool is null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/b/c;->a(Lcom/xiaopeng/xui/b/c;Ljava/lang/String;)V

    .line 140
    :goto_2
    const/4 p1, 0x0

    return p1
.end method
