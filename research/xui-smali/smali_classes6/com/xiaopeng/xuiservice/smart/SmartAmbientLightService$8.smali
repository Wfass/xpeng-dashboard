.class Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$8;
.super Ljava/lang/Object;
.source "SmartAmbientLightService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->initXUIManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    .line 632
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPlaybackControl(II)I
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .line 635
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setMusicRhythmEnable(Z)V

    .line 637
    :cond_0
    const/16 v0, 0xc

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setMusicRhythmEnable(Z)V

    .line 639
    :cond_1
    return v1
.end method

.method public OnSetFavorite(ZLjava/lang/String;)I
    .locals 1
    .param p1, "favorite"    # Z
    .param p2, "id"    # Ljava/lang/String;

    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method public OnSwitchSource(I)I
    .locals 1
    .param p1, "source"    # I

    .line 644
    const/4 v0, 0x0

    return v0
.end method
