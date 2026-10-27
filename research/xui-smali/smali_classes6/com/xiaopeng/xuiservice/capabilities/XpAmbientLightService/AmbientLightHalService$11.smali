.class Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$11;
.super Ljava/lang/Object;
.source "AmbientLightHalService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;


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

    .line 664
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$11;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPlaybackControl(II)I
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .line 667
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$11;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$3202(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;Z)Z

    .line 669
    :cond_0
    const/16 v0, 0xc

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$11;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$3202(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;Z)Z

    .line 671
    :cond_1
    return v1
.end method

.method public OnSetFavorite(ZLjava/lang/String;)I
    .locals 1
    .param p1, "favorite"    # Z
    .param p2, "id"    # Ljava/lang/String;

    .line 681
    const/4 v0, 0x0

    return v0
.end method

.method public OnSwitchSource(I)I
    .locals 1
    .param p1, "source"    # I

    .line 676
    const/4 v0, 0x0

    return v0
.end method
