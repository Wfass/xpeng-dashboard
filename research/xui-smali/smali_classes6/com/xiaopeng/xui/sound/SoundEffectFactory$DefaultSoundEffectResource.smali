.class Lcom/xiaopeng/xui/sound/SoundEffectFactory$DefaultSoundEffectResource;
.super Lcom/xiaopeng/xui/sound/SoundEffectResource;
.source "SoundEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/sound/SoundEffectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultSoundEffectResource"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system/media/audio/xiaopeng/cdu/wav/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xui/sound/SoundEffectResource;-><init>(Ljava/lang/String;II)V

    .line 48
    return-void
.end method
