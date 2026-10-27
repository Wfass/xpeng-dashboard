.class public final synthetic Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$jJ-CPGjWuwske6TDKYuJyluIjmE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xui/sound/XSoundEffectManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$jJ-CPGjWuwske6TDKYuJyluIjmE;->f$0:Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$jJ-CPGjWuwske6TDKYuJyluIjmE;->f$0:Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->lambda$destroy$2$XSoundEffectManager()V

    return-void
.end method
