.class Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$2;
.super Ljava/lang/Object;
.source "MediaCenterHalService.java"

# interfaces
.implements Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->registerIcmStatusListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 534
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 537
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21101611

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 539
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 540
    .local v0, "signal":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "SysReady"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    const-string v1, "MCService-MediaCenterHalService"

    const-string v2, "receiver icm sync ready event"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$300(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V

    .line 549
    .end local v0    # "signal":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 554
    return-void
.end method
