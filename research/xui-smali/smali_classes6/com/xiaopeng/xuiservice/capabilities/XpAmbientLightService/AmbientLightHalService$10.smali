.class Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$10;
.super Ljava/lang/Object;
.source "AmbientLightHalService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->initXUIManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 649
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$10;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnMediaInfoNotify(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 660
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$10;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getStyleColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$3102(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    .line 661
    return-void
.end method

.method public OnPlaybackChanged(I)V
    .locals 0
    .param p1, "playbackStatus"    # I

    .line 652
    return-void
.end method

.method public OnUpdatePosition(JJ)V
    .locals 0
    .param p1, "position"    # J
    .param p3, "duration"    # J

    .line 656
    return-void
.end method
