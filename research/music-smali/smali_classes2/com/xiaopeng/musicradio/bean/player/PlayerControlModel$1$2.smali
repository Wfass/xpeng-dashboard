.class Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1$2;
.super Ljava/lang/Object;
.source "PlayerControlModel.java"

# interfaces
.implements Lask$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;->riseVolume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1$2;->this$1:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateSoundVolume(F)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1$2;->this$1:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->setVolume(F)Z

    return-void
.end method
