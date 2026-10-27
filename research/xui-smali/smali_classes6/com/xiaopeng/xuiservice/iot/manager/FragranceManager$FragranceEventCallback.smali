.class Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;
.super Ljava/lang/Object;
.source "FragranceManager.java"

# interfaces
.implements Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragranceEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static synthetic lambda$onChangeEvent$0(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    const-string v1, "notify_fragrance_insert"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$1100(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static synthetic lambda$onChangeEvent$1(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;I)V
    .locals 3
    .param p1, "value"    # I

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    const-string v1, "co_concentration"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$1000(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 12
    .param p1, "carPropertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 69
    if-eqz p1, :cond_d

    .line 70
    const-string v0, "FragranceManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    .line 87
    :sswitch_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, [Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 88
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 89
    .local v0, "v":[Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    const/4 v1, 0x0

    .line 93
    .local v1, "bChanged":Z
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)[I

    move-result-object v2

    array-length v2, v2

    .line 94
    .local v2, "length":I
    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .local v1, "i":I
    .local v4, "bChanged":Z
    :goto_0
    array-length v5, v0

    const/4 v6, 0x1

    if-ge v1, v5, :cond_6

    .line 95
    if-ge v1, v2, :cond_5

    .line 96
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)[I

    move-result-object v5

    aget v5, v5, v1

    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v5, v7, :cond_5

    .line 98
    const/4 v4, 0x1

    .line 99
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)I

    move-result v5

    if-ne v6, v5, :cond_1

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)I

    move-result v5

    if-ne v5, v1, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v3

    .line 100
    .local v5, "channelStatus":I
    :goto_1
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)[I

    move-result-object v7

    aget v7, v7, v1

    if-nez v7, :cond_3

    .line 103
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$600(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Z

    move-result v7

    .line 104
    .local v7, "isGearPLevel":Z
    const-string v8, "FragranceManager##"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new channel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " inserted,gear in P="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    if-eqz v7, :cond_2

    .line 107
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v8

    new-instance v9, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FragranceManager$FragranceEventCallback$jDMx7AgdBP-FZBxsbvkLOrQoQ3o;

    invoke-direct {v9, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FragranceManager$FragranceEventCallback$jDMx7AgdBP-FZBxsbvkLOrQoQ3o;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;)V

    invoke-virtual {v8, v9}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 112
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

    move-result-object v9

    aget-object v10, v0, v1

    .line 113
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 114
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 112
    invoke-virtual {v8, v9, v10, v11, v6}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->handleIotDeviceStatus(Lcom/xiaopeng/xuimanager/iot/BaseDevice;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 116
    .end local v7    # "isGearPLevel":Z
    goto :goto_2

    .line 117
    :cond_3
    const/4 v6, -0x1

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)[I

    move-result-object v7

    aget v7, v7, v1

    if-eq v6, v7, :cond_4

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_4

    .line 118
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    .line 119
    invoke-static {v8}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)[I

    move-result-object v8

    aget v8, v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 120
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 118
    invoke-virtual {v6, v7, v8, v9, v3}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->handleIotDeviceStatus(Lcom/xiaopeng/xuimanager/iot/BaseDevice;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)[I

    move-result-object v6

    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v1

    .line 94
    .end local v5    # "channelStatus":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_6
    if-eqz v4, :cond_7

    .line 130
    const-string v1, "FragranceManager##"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "channel changed:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    .line 131
    invoke-static {v7}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)[I

    move-result-object v7

    aget v3, v7, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)[I

    move-result-object v3

    aget v3, v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)[I

    move-result-object v3

    const/4 v6, 0x2

    aget v3, v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 133
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    const-string v5, "channel_types"

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    .line 134
    invoke-static {v7}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)[I

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$700(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;[I)Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-interface {v1, v3, v5, v6}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v0    # "v":[Ljava/lang/Integer;
    .end local v2    # "length":I
    .end local v4    # "bChanged":Z
    :cond_7
    goto/16 :goto_3

    .line 207
    :sswitch_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 216
    goto/16 :goto_3

    .line 196
    :sswitch_2
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 205
    goto/16 :goto_3

    .line 185
    :sswitch_3
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 194
    goto/16 :goto_3

    .line 243
    :sswitch_4
    goto/16 :goto_3

    .line 234
    :sswitch_5
    goto/16 :goto_3

    .line 225
    :sswitch_6
    goto/16 :goto_3

    .line 169
    :sswitch_7
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 170
    .local v0, "value":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$900(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)I

    move-result v1

    if-eq v1, v0, :cond_9

    .line 172
    const-string v1, "FragranceManager##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCOConcentration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$900(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$902(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;I)I

    .line 175
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 176
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "co_concentration"

    .line 177
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-interface {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_8
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FragranceManager$FragranceEventCallback$Se2IRP0fUZln0dnSR201J0co0Vc;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FragranceManager$FragranceEventCallback$Se2IRP0fUZln0dnSR201J0co0Vc;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;I)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 183
    .end local v0    # "value":I
    :cond_9
    goto/16 :goto_3

    .line 155
    :sswitch_8
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 156
    .restart local v0    # "value":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$800(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)I

    move-result v1

    if-eq v1, v0, :cond_a

    .line 158
    const-string v1, "FragranceManager##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConcentration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$800(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$802(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;I)I

    .line 161
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 162
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "concentration"

    .line 163
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-interface {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .end local v0    # "value":I
    :cond_a
    goto/16 :goto_3

    .line 141
    :sswitch_9
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 142
    .restart local v0    # "value":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)I

    move-result v1

    if-eq v1, v0, :cond_b

    .line 144
    const-string v1, "FragranceManager##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActiveChanel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$502(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;I)I

    .line 147
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 148
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "active"

    .line 149
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-interface {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v0    # "value":I
    :cond_b
    goto :goto_3

    .line 73
    :sswitch_a
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 74
    .restart local v0    # "value":I
    const-string v1, "FragranceManager##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSwitchState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)I

    move-result v1

    if-eq v1, v0, :cond_c

    .line 78
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$002(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;I)I

    .line 79
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 80
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "switch_state"

    .line 81
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-interface {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .end local v0    # "value":I
    :cond_c
    nop

    .line 248
    :cond_d
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x21401a37 -> :sswitch_a
        0x21401a39 -> :sswitch_9
        0x21401a3e -> :sswitch_8
        0x21401a3f -> :sswitch_7
        0x21401a43 -> :sswitch_6
        0x21401a44 -> :sswitch_5
        0x21401a45 -> :sswitch_4
        0x21401a6a -> :sswitch_3
        0x21401a6b -> :sswitch_2
        0x21401a6c -> :sswitch_1
        0x21411a38 -> :sswitch_0
    .end sparse-switch
.end method

.method public onErrorEvent(II)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 252
    const-string v0, "FragranceManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorEvent i: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " i1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method
