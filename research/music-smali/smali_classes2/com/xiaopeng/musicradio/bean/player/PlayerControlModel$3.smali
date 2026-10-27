.class Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$3;
.super Ljava/lang/Object;
.source "PlayerControlModel.java"

# interfaces
.implements Lask$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->playByLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$3;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeState()V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$3;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->hasPlayingInfo()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$3;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->replay(Z)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$3;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->hasPlayingList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$3;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->nextByLogic()V

    goto :goto_0

    :cond_1
    const-string v0, "PlayerControlModel"

    const-string v2, "changeState: ======= "

    .line 321
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$3;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->rebootPlay(Z)V

    :goto_0
    return-void
.end method

.method public updateSoundVolume(F)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$3;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->setVolume(F)Z

    return-void
.end method
