.class public final synthetic Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$xMqojCGb_wGqPP-iwnFxA7uh2Ko;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xui/sound/XSoundEffectManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$xMqojCGb_wGqPP-iwnFxA7uh2Ko;->f$0:Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    iput p2, p0, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$xMqojCGb_wGqPP-iwnFxA7uh2Ko;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$xMqojCGb_wGqPP-iwnFxA7uh2Ko;->f$0:Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    iget v1, p0, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$xMqojCGb_wGqPP-iwnFxA7uh2Ko;->f$1:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->lambda$restoreResource$4$XSoundEffectManager(I)V

    return-void
.end method
