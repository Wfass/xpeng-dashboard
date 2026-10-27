.class Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$1;
.super Ljava/lang/Object;
.source "FreezerManager.java"

# interfaces
.implements Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->addBcmManagerCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    .line 267
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 270
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->access$000()Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    .line 271
    .local v0, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 273
    .local v1, "val":I
    const-string v2, "FreezerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBcmEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 288
    :pswitch_1
    const-string v2, "holding_time"

    .line 289
    .local v2, "key":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    goto/16 :goto_5

    .line 293
    .end local v2    # "key":Ljava/lang/String;
    :pswitch_2
    const-string v2, "heat_preservation"

    .line 294
    .restart local v2    # "key":Ljava/lang/String;
    if-ne v1, v3, :cond_0

    const-string v3, "on"

    goto :goto_0

    :cond_0
    const-string v3, "off"

    :goto_0
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    goto/16 :goto_5

    .line 277
    .end local v2    # "key":Ljava/lang/String;
    :pswitch_3
    const-string v2, "child_lock"

    .line 279
    .restart local v2    # "key":Ljava/lang/String;
    if-ne v1, v3, :cond_1

    const-string v3, "on"

    goto :goto_1

    :cond_1
    const-string v3, "off"

    :goto_1
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    goto :goto_5

    .line 308
    .end local v2    # "key":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v2, "work_mode"

    .line 309
    .restart local v2    # "key":Ljava/lang/String;
    if-ne v1, v3, :cond_2

    const-string v3, "cold"

    goto :goto_2

    .line 310
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    const-string v3, "heat"

    goto :goto_2

    :cond_3
    const-string v3, "off"

    .line 309
    :goto_2
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_5

    .line 303
    :pswitch_5
    const-string v2, "temperature"

    .line 304
    .restart local v2    # "key":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    goto :goto_5

    .line 283
    .end local v2    # "key":Ljava/lang/String;
    :pswitch_6
    const-string v2, "door_ctrl"

    .line 284
    .restart local v2    # "key":Ljava/lang/String;
    if-ne v1, v3, :cond_4

    const-string v3, "on"

    goto :goto_3

    :cond_4
    const-string v3, "off"

    :goto_3
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    goto :goto_5

    .line 298
    .end local v2    # "key":Ljava/lang/String;
    :pswitch_7
    const-string v2, "power_ctrl"

    .line 299
    .restart local v2    # "key":Ljava/lang/String;
    if-ne v1, v3, :cond_5

    const-string v3, "on"

    goto :goto_4

    :cond_5
    const-string v3, "off"

    :goto_4
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    nop

    .line 315
    .end local v2    # "key":Ljava/lang/String;
    :goto_5
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x21404601
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 319
    return-void
.end method
