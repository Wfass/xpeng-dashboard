.class final Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;
.super Ljava/lang/Object;
.source "IoTManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/IoTManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeListenerRecord"
.end annotation


# instance fields
.field public deviceIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final listener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

.field public final pid:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/IoTManagerService;

.field public final uid:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/iot/IoTManagerService;Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/iot/IoTManagerService;
    .param p2, "listener"    # Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 616
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/iot/IoTManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->deviceIdList:Ljava/util/List;

    .line 617
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->listener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    .line 618
    iput p3, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->pid:I

    .line 619
    iput p4, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->uid:I

    .line 620
    return-void
.end method


# virtual methods
.method public addDevice(Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->deviceIdList:Ljava/util/List;

    monitor-enter v0

    .line 635
    :try_start_0
    const-string v1, "IoTManagerService##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDevice,pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",deviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->deviceIdList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    monitor-exit v0

    .line 638
    return-void

    .line 637
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public binderDied()V
    .locals 4

    .line 624
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/iot/IoTManagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->access$200(Lcom/xiaopeng/xuiservice/iot/IoTManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 625
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/iot/IoTManagerService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->access$200(Lcom/xiaopeng/xuiservice/iot/IoTManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 626
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 627
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->deviceIdList:Ljava/util/List;

    monitor-enter v1

    .line 628
    :try_start_1
    const-string v0, "IoTManagerService##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binder died,pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->deviceIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 630
    monitor-exit v1

    .line 631
    return-void

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 626
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public hasDevice(Ljava/lang/String;)Z
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, "exist":Z
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->deviceIdList:Ljava/util/List;

    monitor-enter v1

    .line 650
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->deviceIdList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 651
    const/4 v0, 0x1

    .line 653
    :cond_0
    monitor-exit v1

    .line 654
    return v0

    .line 653
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onDeviceEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "jsonString"    # Ljava/lang/String;

    .line 683
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->deviceIdList:Ljava/util/List;

    monitor-enter v0

    .line 684
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->deviceIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    const-string v1, "IoTManagerService##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceEvent, deviceIdList is empty, pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->deviceIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 688
    .local v2, "dev":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 689
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 690
    .local v1, "event":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 691
    const/4 v3, 0x1

    aput-object p2, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    :try_start_1
    const-string v3, "IoTManagerService##"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeviceEvent,listener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->listener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 693
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->listener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    const-string v4, "module_iot"

    const-string v5, "property_update_with_json"

    invoke-interface {v3, v4, v5, v1}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;->onPipeBusEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    goto :goto_1

    .line 697
    :catch_0
    move-exception v3

    .line 698
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "IoTManagerService##"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPipeBusEvent Fail,e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 702
    .end local v1    # "event":[Ljava/lang/String;
    .end local v2    # "dev":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 703
    :cond_2
    :goto_1
    monitor-exit v0

    .line 704
    return-void

    .line 703
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 658
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->deviceIdList:Ljava/util/List;

    monitor-enter v0

    .line 659
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->deviceIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    const-string v1, "IoTManagerService##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceEvent, deviceIdList is empty, pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->deviceIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 663
    .local v2, "dev":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 664
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 665
    .local v1, "event":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 666
    const/4 v3, 0x1

    aput-object p2, v1, v3

    .line 667
    const/4 v3, 0x2

    aput-object p3, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    :try_start_1
    const-string v3, "IoTManagerService##"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeviceEvent, listener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->listener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 669
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->listener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    const-string v4, "module_iot"

    const-string v5, "property_update"

    invoke-interface {v3, v4, v5, v1}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;->onPipeBusEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    goto :goto_1

    .line 673
    :catch_0
    move-exception v3

    .line 674
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "IoTManagerService##"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPipeBusEvent Fail,e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 678
    .end local v1    # "event":[Ljava/lang/String;
    .end local v2    # "dev":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 679
    :cond_2
    :goto_1
    monitor-exit v0

    .line 680
    return-void

    .line 679
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeDevice(Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 641
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->deviceIdList:Ljava/util/List;

    monitor-enter v0

    .line 642
    :try_start_0
    const-string v1, "IoTManagerService##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeDevice,pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",deviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$PipeListenerRecord;->deviceIdList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 644
    monitor-exit v0

    .line 645
    return-void

    .line 644
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
