.class Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderSystem;
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
    name = "LoaderSystem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xui/sound/SoundEffectPool;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderSystem;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xui/sound/SoundEffectPool;Lcom/xiaopeng/xui/sound/SoundEffectPool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xui/sound/SoundEffectPool;
    .param p2, "x1"    # Lcom/xiaopeng/xui/sound/SoundEffectPool$1;

    .line 144
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderSystem;-><init>(Lcom/xiaopeng/xui/sound/SoundEffectPool;)V

    return-void
.end method


# virtual methods
.method public load(Lcom/xiaopeng/xui/sound/SoundEffectResource;)I
    .locals 3
    .param p1, "resource"    # Lcom/xiaopeng/xui/sound/SoundEffectResource;

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderSystem;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    invoke-static {v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->access$200(Lcom/xiaopeng/xui/sound/SoundEffectPool;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderSystem;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    invoke-static {v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->access$200(Lcom/xiaopeng/xui/sound/SoundEffectPool;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderSystem;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    iget-object v1, v1, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundEffectResource:Lcom/xiaopeng/xui/sound/SoundEffectResource;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/sound/SoundEffectResource;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderSystem;->this$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoaderSystem--resource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mSoundPool is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->access$300(Lcom/xiaopeng/xui/sound/SoundEffectPool;Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    return v0
.end method
