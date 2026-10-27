.class final Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;
.super Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;
.source "PmKaraokeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PmKaraokeEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;->this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    .line 654
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    .line 655
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 659
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 660
    .local v0, "event":I
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 662
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 663
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;->this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$300(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;Z)V

    .line 665
    :cond_1
    const-string v1, "PmKaraokeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KARAOKE_EVENT handleMessage  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :goto_0
    return-void
.end method
