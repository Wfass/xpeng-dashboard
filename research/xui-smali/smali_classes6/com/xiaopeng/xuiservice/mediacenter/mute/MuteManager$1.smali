.class Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$1;
.super Landroid/os/Handler;
.source "MuteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->initMuteHandler(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$MuteDetail;

    .line 64
    .local v0, "muteDetail":Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$MuteDetail;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$MuteDetail;->isMute()Z

    move-result v2

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$MuteDetail;->getOtherPlayPackages()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;ZLjava/lang/String;)V

    .line 65
    nop

    .line 70
    .end local v0    # "muteDetail":Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$MuteDetail;
    :goto_0
    return-void
.end method
