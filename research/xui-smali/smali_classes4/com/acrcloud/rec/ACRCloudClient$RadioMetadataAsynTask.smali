.class Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;
.super Ljava/lang/Object;
.source "ACRCloudClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acrcloud/rec/ACRCloudClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RadioMetadataAsynTask"
.end annotation


# instance fields
.field private mFreq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLat:Ljava/lang/String;

.field private mLng:Ljava/lang/String;

.field private mRadioMetadataListener:Lcom/acrcloud/rec/IACRCloudRadioMetadataListener;

.field private mRadioType:Lcom/acrcloud/rec/ACRCloudConfig$RadioType;

.field final synthetic this$0:Lcom/acrcloud/rec/ACRCloudClient;


# direct methods
.method public constructor <init>(Lcom/acrcloud/rec/ACRCloudClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/acrcloud/rec/ACRCloudConfig$RadioType;Lcom/acrcloud/rec/IACRCloudRadioMetadataListener;)V
    .locals 2
    .param p1, "this$0"    # Lcom/acrcloud/rec/ACRCloudClient;
    .param p2, "gpsLat"    # Ljava/lang/String;
    .param p3, "gpsLng"    # Ljava/lang/String;
    .param p5, "radioType"    # Lcom/acrcloud/rec/ACRCloudConfig$RadioType;
    .param p6, "radioMetadataListener"    # Lcom/acrcloud/rec/IACRCloudRadioMetadataListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/acrcloud/rec/ACRCloudConfig$RadioType;",
            "Lcom/acrcloud/rec/IACRCloudRadioMetadataListener;",
            ")V"
        }
    .end annotation

    .line 740
    .local p4, "freq":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->this$0:Lcom/acrcloud/rec/ACRCloudClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    const-string v0, ""

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->mLat:Ljava/lang/String;

    .line 733
    const-string v0, ""

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->mLng:Ljava/lang/String;

    .line 734
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->mFreq:Ljava/util/List;

    .line 735
    sget-object v1, Lcom/acrcloud/rec/ACRCloudConfig$RadioType;->FM:Lcom/acrcloud/rec/ACRCloudConfig$RadioType;

    iput-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->mRadioType:Lcom/acrcloud/rec/ACRCloudConfig$RadioType;

    .line 736
    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->mRadioMetadataListener:Lcom/acrcloud/rec/IACRCloudRadioMetadataListener;

    .line 741
    iput-object p2, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->mLat:Ljava/lang/String;

    .line 742
    iput-object p3, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->mLng:Ljava/lang/String;

    .line 743
    iput-object p4, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->mFreq:Ljava/util/List;

    .line 744
    iput-object p5, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->mRadioType:Lcom/acrcloud/rec/ACRCloudConfig$RadioType;

    .line 745
    iput-object p6, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->mRadioMetadataListener:Lcom/acrcloud/rec/IACRCloudRadioMetadataListener;

    .line 746
    return-void
.end method

.method private onRadioMetadataResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .line 749
    new-instance v0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;

    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->this$0:Lcom/acrcloud/rec/ACRCloudClient;

    invoke-direct {v0, v1}, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;-><init>(Lcom/acrcloud/rec/ACRCloudClient;)V

    .line 750
    .local v0, "aMsg":Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;
    iput-object p1, v0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;->mParams:Ljava/lang/Object;

    .line 751
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->mRadioMetadataListener:Lcom/acrcloud/rec/IACRCloudRadioMetadataListener;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;->mCallback:Ljava/lang/Object;

    .line 753
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 754
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 756
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/os/Message;->what:I

    .line 757
    iget-object v2, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->this$0:Lcom/acrcloud/rec/ACRCloudClient;

    invoke-static {v2}, Lcom/acrcloud/rec/ACRCloudClient;->access$300(Lcom/acrcloud/rec/ACRCloudClient;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 758
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 763
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/acrcloud/rec/ACRCloudClient;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v1/car-radios/search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "searchURL":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 765
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "gps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->mLat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->mLng:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    iget-object v2, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->mRadioType:Lcom/acrcloud/rec/ACRCloudConfig$RadioType;

    sget-object v3, Lcom/acrcloud/rec/ACRCloudConfig$RadioType;->FM:Lcom/acrcloud/rec/ACRCloudConfig$RadioType;

    if-ne v2, v3, :cond_0

    .line 767
    const-string v2, "type"

    const-string v3, "FM"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 769
    :cond_0
    const-string v2, "type"

    const-string v3, "AM"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 773
    .local v2, "tParams":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->mFreq:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 774
    .local v4, "item":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 775
    goto :goto_1

    .line 777
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    .end local v4    # "item":Ljava/lang/String;
    goto :goto_1

    .line 779
    :cond_3
    const-string v3, "freq"

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v3, "access_key"

    iget-object v4, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->this$0:Lcom/acrcloud/rec/ACRCloudClient;

    invoke-static {v4}, Lcom/acrcloud/rec/ACRCloudClient;->access$000(Lcom/acrcloud/rec/ACRCloudClient;)Lcom/acrcloud/rec/ACRCloudConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/acrcloud/rec/ACRCloudConfig;->accessKey:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    iget-object v3, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->this$0:Lcom/acrcloud/rec/ACRCloudClient;

    invoke-static {v3}, Lcom/acrcloud/rec/ACRCloudClient;->access$000(Lcom/acrcloud/rec/ACRCloudClient;)Lcom/acrcloud/rec/ACRCloudConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudPartnerDeviceInfo:Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->this$0:Lcom/acrcloud/rec/ACRCloudClient;

    .line 783
    invoke-static {v3}, Lcom/acrcloud/rec/ACRCloudClient;->access$000(Lcom/acrcloud/rec/ACRCloudClient;)Lcom/acrcloud/rec/ACRCloudConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudPartnerDeviceInfo:Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;

    invoke-interface {v3}, Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_5

    .line 789
    :cond_4
    const-string v3, "device_id"

    iget-object v4, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->this$0:Lcom/acrcloud/rec/ACRCloudClient;

    invoke-static {v4}, Lcom/acrcloud/rec/ACRCloudClient;->access$000(Lcom/acrcloud/rec/ACRCloudClient;)Lcom/acrcloud/rec/ACRCloudConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudPartnerDeviceInfo:Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;

    invoke-interface {v4}, Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 793
    .local v3, "str":Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->this$0:Lcom/acrcloud/rec/ACRCloudClient;

    .line 794
    invoke-static {v4}, Lcom/acrcloud/rec/ACRCloudClient;->access$000(Lcom/acrcloud/rec/ACRCloudClient;)Lcom/acrcloud/rec/ACRCloudConfig;

    move-result-object v4

    iget v4, v4, Lcom/acrcloud/rec/ACRCloudConfig;->requestOnceTimeoutMS:I

    .line 793
    invoke-static {v0, v1, v4}, Lcom/acrcloud/rec/network/ACRCloudHttpWrapper;->doGet(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lcom/acrcloud/rec/utils/ACRCloudException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    goto :goto_2

    .line 797
    :catch_0
    move-exception v4

    .line 798
    .local v4, "ex":Ljava/lang/Exception;
    const/16 v5, 0xbb8

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .end local v4    # "ex":Ljava/lang/Exception;
    goto :goto_3

    .line 795
    :catch_1
    move-exception v4

    .line 796
    .local v4, "e":Lcom/acrcloud/rec/utils/ACRCloudException;
    invoke-virtual {v4}, Lcom/acrcloud/rec/utils/ACRCloudException;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v5

    .line 799
    .end local v4    # "e":Lcom/acrcloud/rec/utils/ACRCloudException;
    :goto_2
    nop

    .line 802
    :goto_3
    :try_start_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 806
    goto :goto_4

    .line 803
    :catch_2
    move-exception v4

    .line 804
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 805
    const/16 v5, 0x7d2

    invoke-static {v5, v3}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 807
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_4
    invoke-direct {p0, v3}, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->onRadioMetadataResult(Ljava/lang/String;)V

    .line 811
    .end local v0    # "searchURL":Ljava/lang/String;
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "tParams":Ljava/lang/StringBuilder;
    .end local v3    # "str":Ljava/lang/String;
    goto :goto_6

    .line 784
    .restart local v0    # "searchURL":Ljava/lang/String;
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "tParams":Ljava/lang/StringBuilder;
    :cond_5
    :goto_5
    const/16 v3, 0xfa0

    invoke-static {v3}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(I)Ljava/lang/String;

    move-result-object v3

    .line 785
    .local v3, "retError":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->onRadioMetadataResult(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 786
    return-void

    .line 808
    .end local v0    # "searchURL":Ljava/lang/String;
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "tParams":Ljava/lang/StringBuilder;
    .end local v3    # "retError":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 809
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 810
    const/16 v1, 0x7da

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;->onRadioMetadataResult(Ljava/lang/String;)V

    .line 812
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6
    return-void
.end method
