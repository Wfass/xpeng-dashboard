.class Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$2;
.super Ljava/lang/Object;
.source "XpSeatMassagerService.java"

# interfaces
.implements Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->addMsmManagerCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    .line 1877
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 12
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 1880
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 1881
    .local v0, "signalId":I
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1882
    .local v1, "signalVal":I
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$1100()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$1100()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    .line 1883
    .local v3, "lastStatus":I
    :goto_1
    const/4 v4, 0x3

    .line 1885
    .local v4, "intensity":I
    const-string v5, "XpSeatMassagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMsmEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", lastVal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$1200()Ljava/util/Map;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1888
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$1200()Ljava/util/Map;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1889
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$1200()Ljava/util/Map;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 1890
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1893
    :cond_2
    :goto_2
    nop

    .local v2, "id":I
    :goto_3
    const/4 v5, 0x4

    if-ge v2, v5, :cond_c

    .line 1894
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-static {v5, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$1300(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1895
    goto/16 :goto_7

    .line 1898
    :cond_3
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-static {v5, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;I)I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v0, :cond_a

    if-eq v3, v1, :cond_a

    .line 1900
    if-nez v1, :cond_4

    .line 1901
    const-string v5, "XpSeatMassagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onChangeEvent, stopMassager [id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;)I

    .line 1904
    goto/16 :goto_8

    .line 1907
    :cond_4
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-static {v7, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$1600(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$1700(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;

    move-result-object v5

    .line 1908
    .local v5, "current":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;
    const/4 v7, 0x0

    .line 1911
    .local v7, "effect":Ljava/lang/String;
    iget-boolean v8, v5, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->hasPreset:Z

    if-nez v8, :cond_6

    .line 1912
    if-nez v3, :cond_5

    iget-object v8, v5, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->name:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iget-object v8, v5, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->custom:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;

    iget-object v8, v8, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;->next:Ljava/lang/String;

    :goto_4
    move-object v7, v8

    goto :goto_5

    .line 1913
    :cond_6
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$1800()Ljava/util/Map;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1914
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$1800()Ljava/util/Map;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Ljava/lang/String;

    .line 1917
    :cond_7
    :goto_5
    iget-object v8, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-static {v8, v7}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$1900(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1918
    const-string v6, "XpSeatMassagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onChangeEvent, massager effect ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] unsupported!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    goto/16 :goto_8

    .line 1925
    :cond_8
    if-nez v3, :cond_9

    .line 1927
    :try_start_1
    iget-object v8, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-static {v8, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$2000(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;I)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v8

    .line 1929
    goto :goto_6

    .line 1928
    :catch_0
    move-exception v8

    .line 1931
    :goto_6
    new-instance v8, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    invoke-direct {v8, v2, v4}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(II)V

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 1933
    .local v8, "seats":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    const-string v9, "XpSeatMassagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onChangeEvent, startMassager [id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", effect="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", intensity="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    iget-object v9, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    new-instance v10, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;

    const-string v11, "physicalButton"

    invoke-direct {v10, v6, v8, v7, v11}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v10}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$2100(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;)I

    .line 1938
    .end local v8    # "seats":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    goto/16 :goto_8

    .line 1939
    :cond_9
    const-string v8, "XpSeatMassagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onChangeEvent, changeMassagerEffect [id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", effect="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    iget-object v8, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    new-instance v9, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;

    .line 1944
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v11, "physicalButton"

    invoke-direct {v9, v10, v6, v7, v11}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    invoke-static {v8, v9}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$2200(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;)I

    .line 1947
    goto :goto_8

    .line 1951
    .end local v5    # "current":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;
    .end local v7    # "effect":Ljava/lang/String;
    :cond_a
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-static {v5, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$2300(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;I)I

    move-result v5

    if-ne v5, v0, :cond_b

    if-eqz v1, :cond_b

    if-eq v3, v1, :cond_b

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    .line 1952
    invoke-virtual {v5, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getMassagerStatus(I)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_b

    .line 1954
    const-string v5, "XpSeatMassagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onChangeEvent, changeMassagerIntensity [id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", intensity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    new-instance v7, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;

    .line 1959
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "physicalButton"

    invoke-direct {v7, v8, v6, v9, v10}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    invoke-static {v5, v7}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$2400(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;)I

    .line 1961
    goto :goto_8

    .line 1893
    :cond_b
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 1964
    .end local v2    # "id":I
    :cond_c
    :goto_8
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 1968
    return-void
.end method
