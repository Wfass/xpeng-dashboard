.class Lcom/xiaopeng/musicradio/model/music/i$7;
.super Ljava/lang/Object;
.source "MusicControlModel.java"

# interfaces
.implements Lask$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/music/i;->pauseByLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/music/i;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/i;)V
    .locals 0

    .line 1813
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$7;->a:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeState()V
    .locals 1

    .line 1821
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$7;->a:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/i;->b(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->pause()V

    return-void
.end method

.method public updateSoundVolume(F)V
    .locals 1

    .line 1816
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$7;->a:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->setVolume(F)Z

    return-void
.end method
