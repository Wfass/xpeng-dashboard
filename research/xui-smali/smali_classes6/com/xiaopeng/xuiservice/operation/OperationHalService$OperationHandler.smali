.class public Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;
.super Landroid/os/Handler;
.source "OperationHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/OperationHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OperationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 642
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    .line 643
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 644
    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 0
    .param p0, "rec$"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .param p1, "x$0"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 830
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$700(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 648
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 649
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 775
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 776
    .local v0, "resourceType":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getSelectedResourceList(I)Ljava/util/List;

    move-result-object v1

    .line 777
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    const/4 v2, 0x0

    .line 778
    .local v2, "changed":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 779
    .local v4, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->unselectOperationResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 780
    const/4 v2, 0x1

    .line 782
    .end local v4    # "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    :cond_0
    goto :goto_0

    .line 783
    :cond_1
    if-eqz v2, :cond_10

    .line 784
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v3, v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$1000(Lcom/xiaopeng/xuiservice/operation/OperationHalService;I)V

    goto/16 :goto_4

    .line 882
    .end local v0    # "resourceType":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .end local v2    # "changed":Z
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;

    .line 883
    .local v0, "bindingData":Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v1

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;->access$2100(Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;)I

    move-result v2

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;->access$2200(Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;->access$2300(Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->deleteBinding(ILjava/lang/String;Ljava/lang/String;)V

    .line 884
    goto/16 :goto_4

    .line 877
    .end local v0    # "bindingData":Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;

    .line 878
    .restart local v0    # "bindingData":Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v1

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;->access$2100(Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;)I

    move-result v2

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;->access$2200(Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;->access$2300(Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->addBinding(ILjava/lang/String;Ljava/lang/String;)V

    .line 879
    goto/16 :goto_4

    .line 873
    .end local v0    # "bindingData":Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;
    :pswitch_3
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->load()V

    .line 874
    goto/16 :goto_4

    .line 868
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 869
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$400(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuimanager/operation/OperationResource;I)V

    .line 870
    goto/16 :goto_4

    .line 864
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$2000(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 865
    goto/16 :goto_4

    .line 860
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$1900(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 861
    goto/16 :goto_4

    .line 855
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 856
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$1800(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuimanager/operation/OperationResource;F)V

    .line 857
    goto/16 :goto_4

    .line 851
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$1700(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 852
    goto/16 :goto_4

    .line 690
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 691
    .local v0, "type":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 692
    .local v1, "reason":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$900(Lcom/xiaopeng/xuiservice/operation/OperationHalService;II)V

    .line 693
    goto/16 :goto_4

    .line 696
    .end local v0    # "type":I
    .end local v1    # "reason":I
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 697
    .local v0, "remote":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getResourceInfoById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v1

    .line 699
    .local v1, "local":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    if-nez v1, :cond_2

    .line 700
    const-string v2, "OperationHalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update resource info failed, resource not exist, resourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    goto/16 :goto_4

    .line 704
    :cond_2
    const-string v2, "OperationHalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update resource info: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", remote="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", local="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget v2, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->status:I

    .line 707
    .local v2, "oldStatus":I
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getStatus()I

    move-result v3

    .line 709
    .local v3, "newStatus":I
    iput v3, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->status:I

    .line 710
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceName:Ljava/lang/String;

    .line 711
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExtraData()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    .line 712
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExpireTime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->expireTime:J

    .line 713
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getEffectTime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->effectTime:J

    .line 714
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceIcon()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceIcon:Ljava/lang/String;

    .line 715
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getDescription()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->description:Ljava/lang/String;

    .line 716
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getPrice()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->price:Ljava/lang/String;

    .line 718
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->saveResourceInfo(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    .line 720
    if-eq v2, v3, :cond_5

    .line 721
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    .line 722
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v4, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$500(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    goto :goto_1

    .line 723
    :cond_3
    if-nez v2, :cond_5

    if-eqz v3, :cond_5

    .line 725
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->unselectOperationResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 726
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iget v5, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-static {v4, v5}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$1000(Lcom/xiaopeng/xuiservice/operation/OperationHalService;I)V

    .line 729
    :cond_4
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v4, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$1100(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    .line 733
    :cond_5
    :goto_1
    if-nez v3, :cond_6

    .line 734
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v4, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$700(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    goto/16 :goto_4

    .line 736
    :cond_6
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v4, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$1200(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    .line 738
    goto/16 :goto_4

    .line 847
    .end local v0    # "remote":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .end local v1    # "local":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .end local v2    # "oldStatus":I
    .end local v3    # "newStatus":I
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$1600(Lcom/xiaopeng/xuiservice/operation/OperationHalService;ILcom/xiaopeng/xuimanager/operation/OperationSyncResult;)V

    .line 848
    goto/16 :goto_4

    .line 822
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 823
    .local v0, "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$1400(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V

    .line 824
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->resumeDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 825
    goto/16 :goto_4

    .line 817
    .end local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 818
    .restart local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->pauseDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 819
    goto/16 :goto_4

    .line 835
    .end local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 837
    .local v0, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    const-string v1, "OperationHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_EXPIRE_RESOURCE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$1500(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    .line 843
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->deleteOperationResource(Ljava/lang/String;)V

    .line 844
    goto/16 :goto_4

    .line 828
    .end local v0    # "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    :pswitch_f
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getAllResources()Ljava/util/List;

    move-result-object v0

    .line 829
    .local v0, "resourceInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    if-eqz v0, :cond_10

    .line 830
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    new-instance v2, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$OperationHandler$nUcydeYMYd2-9TC1FMbbg7yWTRk;

    invoke-direct {v2, v1}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$OperationHandler$nUcydeYMYd2-9TC1FMbbg7yWTRk;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_4

    .line 761
    .end local v0    # "resourceInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 763
    .local v0, "resourceId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getResourceInfoById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v1

    .line 764
    .local v1, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    if-nez v1, :cond_7

    .line 765
    const-string v2, "OperationHalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unselect resource failed, resource not exist: resourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    goto/16 :goto_4

    .line 769
    :cond_7
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->unselectOperationResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 770
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iget v3, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$1000(Lcom/xiaopeng/xuiservice/operation/OperationHalService;I)V

    goto/16 :goto_4

    .line 812
    .end local v0    # "resourceId":Ljava/lang/String;
    .end local v1    # "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 813
    .local v0, "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->cancelDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 814
    goto/16 :goto_4

    .line 684
    .end local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    :pswitch_12
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 685
    .local v0, "type":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 686
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/operation/OperationResource;>;"
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$800(Lcom/xiaopeng/xuiservice/operation/OperationHalService;ILjava/util/List;)V

    .line 687
    goto/16 :goto_4

    .line 798
    .end local v0    # "type":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/operation/OperationResource;>;"
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 799
    .local v0, "id":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getResourceInfoById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v1

    .line 800
    .local v1, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    if-eqz v1, :cond_10

    .line 801
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->unselectOperationResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 802
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iget v3, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$1000(Lcom/xiaopeng/xuiservice/operation/OperationHalService;I)V

    .line 805
    :cond_8
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->deleteOperationResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    .line 806
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$1200(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    .line 807
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$1100(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    goto/16 :goto_4

    .line 789
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 790
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaopeng/xuimanager/operation/OperationResource;Lcom/xiaopeng/xuimanager/operation/OpenAction;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 791
    .local v2, "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/xiaopeng/xuimanager/operation/OpenAction;

    .line 792
    .local v3, "openAction":Lcom/xiaopeng/xuimanager/operation/OpenAction;
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_9

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    .line 793
    .local v1, "useSystemTraffic":Z
    :goto_2
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$1400(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V

    .line 794
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v4

    invoke-virtual {v4, v2, v1, v3}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->downloadOperationResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V

    .line 795
    goto/16 :goto_4

    .line 745
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaopeng/xuimanager/operation/OperationResource;Lcom/xiaopeng/xuimanager/operation/OpenAction;>;"
    .end local v1    # "useSystemTraffic":Z
    .end local v2    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .end local v3    # "openAction":Lcom/xiaopeng/xuimanager/operation/OpenAction;
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 747
    .local v0, "resourceId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getResourceInfoById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v1

    .line 748
    .local v1, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    if-nez v1, :cond_a

    .line 749
    const-string v2, "OperationHalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select resource failed, resource not exist: resourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    goto/16 :goto_4

    .line 753
    :cond_a
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iget v3, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getSelectMode(I)I

    move-result v2

    .line 754
    .local v2, "selectMode":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->selectOperationResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 755
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iget v4, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$1300(Lcom/xiaopeng/xuiservice/operation/OperationHalService;I)V

    .line 756
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iget v4, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$1000(Lcom/xiaopeng/xuiservice/operation/OperationHalService;I)V

    goto/16 :goto_4

    .line 741
    .end local v0    # "resourceId":Ljava/lang/String;
    .end local v1    # "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .end local v2    # "selectMode":I
    :pswitch_16
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->processPresetFile()V

    .line 742
    goto/16 :goto_4

    .line 651
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 652
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 653
    .local v2, "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 655
    .local v3, "resourcePath":Ljava/lang/String;
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->isZipFile(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_b

    .line 656
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v1, v2, v5}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$400(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuimanager/operation/OperationResource;I)V

    .line 657
    return-void

    .line 660
    :cond_b
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->isDataDiskSpaceEnough(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 661
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v4, v2, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$400(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuimanager/operation/OperationResource;I)V

    .line 662
    return-void

    .line 665
    :cond_c
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v1

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getResourceInfoById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v1

    .line 666
    .local v1, "resourceInfoOld":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->addNewResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v4

    .line 667
    .restart local v4    # "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    if-eqz v4, :cond_f

    .line 668
    if-nez v1, :cond_d

    .line 669
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v5, v4}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$500(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    goto :goto_3

    .line 671
    :cond_d
    iget-object v5, v4, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    iget-object v6, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 672
    iget-object v5, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 674
    :cond_e
    const-string v5, "OperationHalService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resource updated: type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", new="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v5, v4}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$600(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    .line 677
    :goto_3
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v5, v4}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$700(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    goto :goto_4

    .line 679
    :cond_f
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v6, v2, v5}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$400(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuimanager/operation/OperationResource;I)V

    .line 681
    nop

    .line 890
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    .end local v1    # "resourceInfoOld":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .end local v2    # "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .end local v3    # "resourcePath":Ljava/lang/String;
    .end local v4    # "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    :cond_10
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
