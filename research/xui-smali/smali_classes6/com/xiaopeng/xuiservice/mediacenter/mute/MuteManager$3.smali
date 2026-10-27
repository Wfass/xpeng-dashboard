.class Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$3;
.super Ljava/lang/Object;
.source "MuteManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver$AudioStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    .line 177
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuteStatusChanged(ZLjava/lang/String;)V
    .locals 4
    .param p1, "mute"    # Z
    .param p2, "otherPlayPackages"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->access$300(Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$MuteDetail;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    invoke-direct {v1, v2, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$MuteDetail;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;ZLjava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 181
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->access$300(Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->access$300(Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 183
    return-void
.end method
