.class public final synthetic Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$zG7Nx8cWSQRLaBCfVwA7fqBp5YA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xui/sound/XSoundEffectManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager;ILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$zG7Nx8cWSQRLaBCfVwA7fqBp5YA;->f$0:Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    iput p2, p0, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$zG7Nx8cWSQRLaBCfVwA7fqBp5YA;->f$1:I

    iput-object p3, p0, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$zG7Nx8cWSQRLaBCfVwA7fqBp5YA;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$zG7Nx8cWSQRLaBCfVwA7fqBp5YA;->f$3:I

    iput p5, p0, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$zG7Nx8cWSQRLaBCfVwA7fqBp5YA;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$zG7Nx8cWSQRLaBCfVwA7fqBp5YA;->f$0:Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    iget v1, p0, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$zG7Nx8cWSQRLaBCfVwA7fqBp5YA;->f$1:I

    iget-object v2, p0, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$zG7Nx8cWSQRLaBCfVwA7fqBp5YA;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$zG7Nx8cWSQRLaBCfVwA7fqBp5YA;->f$3:I

    iget v4, p0, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$zG7Nx8cWSQRLaBCfVwA7fqBp5YA;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->lambda$resetResource$3$XSoundEffectManager(ILjava/lang/String;II)V

    return-void
.end method
