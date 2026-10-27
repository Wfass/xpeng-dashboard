.class Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;
.super Ljava/lang/Object;
.source "PlayerControlModel.java"

# interfaces
.implements Lask$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;
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

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public focusPause()V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focusPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    iget v1, v1, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerControlModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    iget v0, v0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    iget v0, v0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->mPlayState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->pauseByLogic()V

    :cond_1
    return-void
.end method

.method public focusPlay()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->replay(Z)V

    return-void
.end method

.method public lowerVolume()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->access$000(Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;)Lask;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1$1;-><init>(Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;)V

    invoke-virtual {v0, v1}, Lask;->a(Lask$c;)V

    return-void
.end method

.method public riseVolume()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;->access$000(Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel;)Lask;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1$2;-><init>(Lcom/xiaopeng/musicradio/bean/player/PlayerControlModel$1;)V

    invoke-virtual {v0, v1}, Lask;->b(Lask$c;)V

    return-void
.end method
