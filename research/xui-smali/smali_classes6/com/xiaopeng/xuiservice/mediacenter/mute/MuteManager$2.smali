.class Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$2;
.super Ljava/lang/Object;
.source "MuteManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 160
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    const-string v0, "MuteManager"

    const-string v2, "do delayResumePlay"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->access$200(Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->playbackControl(III)I

    .line 167
    :cond_0
    return-void
.end method
