.class Lcom/acrcloud/rec/ACRCloudClient$1;
.super Landroid/os/Handler;
.source "ACRCloudClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acrcloud/rec/ACRCloudClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acrcloud/rec/ACRCloudClient;


# direct methods
.method constructor <init>(Lcom/acrcloud/rec/ACRCloudClient;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/acrcloud/rec/ACRCloudClient;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 67
    iput-object p1, p0, Lcom/acrcloud/rec/ACRCloudClient$1;->this$0:Lcom/acrcloud/rec/ACRCloudClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient$1;->this$0:Lcom/acrcloud/rec/ACRCloudClient;

    invoke-static {v0}, Lcom/acrcloud/rec/ACRCloudClient;->access$000(Lcom/acrcloud/rec/ACRCloudClient;)Lcom/acrcloud/rec/ACRCloudConfig;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;

    .line 74
    .local v0, "aMsg":Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;
    const/4 v1, 0x0

    .line 75
    .local v1, "resultCallback":Lcom/acrcloud/rec/IACRCloudListener;
    const/4 v2, 0x0

    .line 77
    .local v2, "radioMetadataCallback":Lcom/acrcloud/rec/IACRCloudRadioMetadataListener;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "aMsg":Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;
    .end local v1    # "resultCallback":Lcom/acrcloud/rec/IACRCloudListener;
    .end local v2    # "radioMetadataCallback":Lcom/acrcloud/rec/IACRCloudRadioMetadataListener;
    goto :goto_0

    .line 95
    .restart local v0    # "aMsg":Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;
    .restart local v1    # "resultCallback":Lcom/acrcloud/rec/IACRCloudListener;
    .restart local v2    # "radioMetadataCallback":Lcom/acrcloud/rec/IACRCloudRadioMetadataListener;
    :pswitch_0
    iget-object v3, v0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;->mParams:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 96
    .local v3, "radioMetadata":Ljava/lang/String;
    iget-object v4, v0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;->mCallback:Ljava/lang/Object;

    check-cast v4, Lcom/acrcloud/rec/IACRCloudRadioMetadataListener;

    move-object v2, v4

    .line 97
    if-eqz v2, :cond_1

    .line 98
    invoke-interface {v2, v3}, Lcom/acrcloud/rec/IACRCloudRadioMetadataListener;->onRadioMetadataResult(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v3    # "radioMetadata":Ljava/lang/String;
    :pswitch_1
    iget-object v3, v0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;->mParams:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 88
    .local v3, "volume":D
    iget-object v5, v0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;->mCallback:Ljava/lang/Object;

    check-cast v5, Lcom/acrcloud/rec/IACRCloudListener;

    move-object v1, v5

    .line 89
    if-eqz v1, :cond_1

    .line 90
    invoke-interface {v1, v3, v4}, Lcom/acrcloud/rec/IACRCloudListener;->onVolumeChanged(D)V

    goto :goto_0

    .line 79
    .end local v3    # "volume":D
    :pswitch_2
    iget-object v3, v0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;->mParams:Ljava/lang/Object;

    check-cast v3, Lcom/acrcloud/rec/ACRCloudResult;

    .line 80
    .local v3, "res":Lcom/acrcloud/rec/ACRCloudResult;
    iget-object v4, v0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;->mCallback:Ljava/lang/Object;

    check-cast v4, Lcom/acrcloud/rec/IACRCloudListener;

    move-object v1, v4

    .line 81
    if-eqz v1, :cond_1

    .line 82
    invoke-interface {v1, v3}, Lcom/acrcloud/rec/IACRCloudListener;->onResult(Lcom/acrcloud/rec/ACRCloudResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "aMsg":Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;
    .end local v1    # "resultCallback":Lcom/acrcloud/rec/IACRCloudListener;
    .end local v2    # "radioMetadataCallback":Lcom/acrcloud/rec/IACRCloudRadioMetadataListener;
    .end local v3    # "res":Lcom/acrcloud/rec/ACRCloudResult;
    :cond_1
    :goto_0
    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
