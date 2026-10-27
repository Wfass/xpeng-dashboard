.class Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;
.super Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback$Stub;
.source "GeneralControlBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libbluetooth/GeneralControlBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/libbluetooth/GeneralControlBox;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libbluetooth/GeneralControlBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    invoke-direct {p0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageCallback(ILandroid/os/Bundle;)V
    .locals 8
    .param p1, "action"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 68
    if-nez p2, :cond_0

    return-void

    .line 69
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->access$000(Lcom/xiaopeng/libbluetooth/GeneralControlBox;)Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 70
    :cond_1
    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0x14

    const/4 v1, -0x1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 83
    :pswitch_0
    const-string v0, "Address"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "pairAddress":Ljava/lang/String;
    const-string v2, "DeviceName"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "pairName":Ljava/lang/String;
    const-string v3, "PINCode"

    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, "pairCode":I
    const-string v3, "SSP"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 87
    .local v3, "pairBssp":Z
    iget-object v4, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    invoke-static {v4}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->access$000(Lcom/xiaopeng/libbluetooth/GeneralControlBox;)Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v1, v3}, Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;->onPairRequest(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 88
    goto :goto_2

    .line 77
    .end local v0    # "pairAddress":Ljava/lang/String;
    .end local v1    # "pairCode":I
    .end local v2    # "pairName":Ljava/lang/String;
    .end local v3    # "pairBssp":Z
    :pswitch_1
    const-string v0, "Status"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "status":I
    const-string v1, "Address"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "address":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    invoke-static {v2}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->access$000(Lcom/xiaopeng/libbluetooth/GeneralControlBox;)Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;->onBtPairStatus(ILjava/lang/String;)V

    .line 80
    goto :goto_2

    .line 72
    .end local v0    # "status":I
    .end local v1    # "address":Ljava/lang/String;
    :pswitch_2
    const-string v0, "Value"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 73
    .local v0, "isOn":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    invoke-static {v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->access$000(Lcom/xiaopeng/libbluetooth/GeneralControlBox;)Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;->onBtPower(Z)V

    .line 74
    goto :goto_2

    .line 106
    .end local v0    # "isOn":Z
    :cond_2
    const-string v0, "Address"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "address":Ljava/lang/String;
    const-string v2, "Value"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 108
    .local v1, "rssiValue":I
    iget-object v2, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    invoke-static {v2}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->access$000(Lcom/xiaopeng/libbluetooth/GeneralControlBox;)Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;->onBtRssiCallback(Ljava/lang/String;I)V

    .line 109
    goto :goto_2

    .line 91
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "rssiValue":I
    :cond_3
    const-string v0, "Value"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "value":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 94
    const/4 v1, 0x1

    .line 96
    .local v4, "connectStatus":Z
    :goto_0
    move v4, v1

    goto :goto_1

    .end local v4    # "connectStatus":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 98
    .restart local v4    # "connectStatus":Z
    :goto_1
    const-string v1, "Address"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "deviceAddress":Ljava/lang/String;
    const-string v1, "Linklost"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 100
    .local v5, "linkLost":I
    const-string v1, "Profile"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 101
    .local v6, "profileType":I
    const-string v1, "Index"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 102
    .local v7, "index":I
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    invoke-static {v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->access$000(Lcom/xiaopeng/libbluetooth/GeneralControlBox;)Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

    move-result-object v2

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;->onBtConnectStatus(Ljava/lang/String;ZIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    nop

    .line 116
    .end local v0    # "value":I
    .end local v3    # "deviceAddress":Ljava/lang/String;
    .end local v4    # "connectStatus":Z
    .end local v5    # "linkLost":I
    .end local v6    # "profileType":I
    .end local v7    # "index":I
    :goto_2
    goto :goto_3

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    invoke-static {v1, v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->access$100(Lcom/xiaopeng/libbluetooth/GeneralControlBox;Ljava/lang/Exception;)V

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onScanCallback(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "cod"    # I
    .param p4, "rssi"    # I
    .param p5, "complete"    # Z

    .line 122
    if-eqz p5, :cond_0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->access$200(Lcom/xiaopeng/libbluetooth/GeneralControlBox;)Lcom/xiaopeng/libbluetooth/GeneralControlBox$OnInquiryStopListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->access$200(Lcom/xiaopeng/libbluetooth/GeneralControlBox;)Lcom/xiaopeng/libbluetooth/GeneralControlBox$OnInquiryStopListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox$OnInquiryStopListener;->onInquiryStopSuccess()V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->access$202(Lcom/xiaopeng/libbluetooth/GeneralControlBox;Lcom/xiaopeng/libbluetooth/GeneralControlBox$OnInquiryStopListener;)Lcom/xiaopeng/libbluetooth/GeneralControlBox$OnInquiryStopListener;

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    goto :goto_1

    .line 128
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->access$000(Lcom/xiaopeng/libbluetooth/GeneralControlBox;)Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->access$000(Lcom/xiaopeng/libbluetooth/GeneralControlBox;)Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;->onScanCallback(Ljava/lang/String;Ljava/lang/String;IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_2

    .line 130
    :goto_1
    nop

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    invoke-static {v1, v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->access$100(Lcom/xiaopeng/libbluetooth/GeneralControlBox;Ljava/lang/Exception;)V

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public onSppDataCallback(I[BI)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "data"    # [B
    .param p3, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->access$000(Lcom/xiaopeng/libbluetooth/GeneralControlBox;)Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->access$000(Lcom/xiaopeng/libbluetooth/GeneralControlBox;)Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;->onSppDataCallback(I[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    invoke-static {v1, v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->access$100(Lcom/xiaopeng/libbluetooth/GeneralControlBox;Ljava/lang/Exception;)V

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
