.class Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$1;
.super Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.source "MediaCenterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;
    .param p2, "moduleTag"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFirstRegistered()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onFirstRegistered()V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->startVisualizer()V

    .line 54
    return-void
.end method

.method protected onLastUnregistered()V
    .locals 1

    .line 58
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onLastUnregistered()V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->stopVisualizer()V

    .line 60
    return-void
.end method
