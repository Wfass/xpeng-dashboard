.class public final synthetic Lcom/xiaopeng/xui/sound/-$$Lambda$SoundEffectPool$zOIrsH-oQrJmreAPnlTpV39ypa4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/sound/SoundEffectPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/sound/-$$Lambda$SoundEffectPool$zOIrsH-oQrJmreAPnlTpV39ypa4;->f$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xui/sound/-$$Lambda$SoundEffectPool$zOIrsH-oQrJmreAPnlTpV39ypa4;->f$0:Lcom/xiaopeng/xui/sound/SoundEffectPool;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->lambda$load$0$SoundEffectPool(Landroid/media/SoundPool;II)V

    return-void
.end method
