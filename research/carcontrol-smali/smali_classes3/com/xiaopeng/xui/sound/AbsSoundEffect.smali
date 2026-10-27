.class abstract Lcom/xiaopeng/xui/sound/AbsSoundEffect;
.super Ljava/lang/Object;
.source "AbsSoundEffect.java"

# interfaces
.implements Lcom/xiaopeng/xui/sound/XSoundEffect;


# instance fields
.field mSoundEffectResource:Lcom/xiaopeng/xui/sound/SoundEffectResource;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/sound/SoundEffectResource;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/xui/sound/AbsSoundEffect;->mSoundEffectResource:Lcom/xiaopeng/xui/sound/SoundEffectResource;

    return-void
.end method
