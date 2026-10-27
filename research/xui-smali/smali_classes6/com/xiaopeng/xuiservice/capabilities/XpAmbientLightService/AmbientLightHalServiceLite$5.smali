.class Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$5;
.super Ljava/lang/Object;
.source "AmbientLightHalServiceLite.java"

# interfaces
.implements Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;

    .line 186
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 4
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 189
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401205

    if-ne v0, v1, :cond_2

    .line 191
    const-string v0, "AmbientLightHalServiceLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarVcuManager.CarVcuEventCallback onChangeEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->access$702(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;Z)Z

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;

    invoke-static {v0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->access$400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;Z)V

    .line 196
    :cond_2
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 2
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 200
    const-string v0, "AmbientLightHalServiceLite"

    const-string v1, "CarVcuManager.CarVcuEventCallback onErrorEvent"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method
