.class Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$2;
.super Ljava/lang/Object;
.source "PlayerControlModel.java"

# interfaces
.implements Lask$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->pauseByLogic()V
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

    .line 285
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$2;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeState()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$2;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->pauseInner()V

    return-void
.end method

.method public updateSoundVolume(F)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$2;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->setVolume(F)Z

    return-void
.end method
