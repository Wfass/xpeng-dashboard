.class Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;
.super Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback$Stub;
.source "PhoneControlBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libbluetooth/PhoneControlBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libbluetooth/PhoneControlBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-direct {p0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallRecordCallback(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->access$000(Lcom/xiaopeng/libbluetooth/PhoneControlBox;)Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->access$000(Lcom/xiaopeng/libbluetooth/PhoneControlBox;)Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;->onRecordCallback(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-static {v1, v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->access$100(Lcom/xiaopeng/libbluetooth/PhoneControlBox;Ljava/lang/Exception;)V

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onMessageCallback(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->access$000(Lcom/xiaopeng/libbluetooth/PhoneControlBox;)Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 70
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    :try_start_0
    const-string v0, "indKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, "keyType":I
    const-string v1, "indValue"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 90
    .local v1, "typeValue":I
    iget-object v2, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-static {v2}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->access$000(Lcom/xiaopeng/libbluetooth/PhoneControlBox;)Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;->onHFPIndicator(II)V

    .end local v0    # "keyType":I
    .end local v1    # "typeValue":I
    goto :goto_0

    .line 82
    :pswitch_1
    const-string v0, "text"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "text":Ljava/lang/String;
    const-string v1, "date"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "date":Ljava/lang/String;
    const-string v2, "number"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "number":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-static {v3}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->access$000(Lcom/xiaopeng/libbluetooth/PhoneControlBox;)Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0}, Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;->onIncomingSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    goto :goto_0

    .line 78
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "date":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    :pswitch_2
    const-string v0, "Value"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "missedCallCount":I
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-static {v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->access$000(Lcom/xiaopeng/libbluetooth/PhoneControlBox;)Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;->onMissCall(I)V

    .line 80
    goto :goto_0

    .line 72
    .end local v0    # "missedCallCount":I
    :pswitch_3
    const-string v0, "CallerNumber"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "number":Ljava/lang/String;
    const-string v1, "CallerName"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "name":Ljava/lang/String;
    const-string v2, "Value"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 75
    .local v2, "value":I
    iget-object v3, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-static {v3}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->access$000(Lcom/xiaopeng/libbluetooth/PhoneControlBox;)Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;->onCallStatus(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 93
    .end local v0    # "number":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":I
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-static {v1, v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->access$100(Lcom/xiaopeng/libbluetooth/PhoneControlBox;Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 95
    :goto_0
    nop

    .line 96
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPBAPCallback(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "status"    # I
    .param p2, "dataType"    # I
    .param p3, "cur"    # I
    .param p4, "total"    # I
    .param p5, "error"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "number"    # Ljava/lang/String;
    .param p8, "time"    # Ljava/lang/String;

    move-object v1, p0

    .line 110
    iget-object v0, v1, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->access$000(Lcom/xiaopeng/libbluetooth/PhoneControlBox;)Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->access$000(Lcom/xiaopeng/libbluetooth/PhoneControlBox;)Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;->onPBAPCallback(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v1, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-static {v2, v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->access$100(Lcom/xiaopeng/libbluetooth/PhoneControlBox;Ljava/lang/Exception;)V

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onPhoneCallback(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "status"    # I
    .param p2, "dataType"    # I
    .param p3, "cur"    # I
    .param p4, "total"    # I
    .param p5, "error"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "number"    # Ljava/lang/String;
    .param p8, "time"    # Ljava/lang/String;

    move-object v1, p0

    .line 100
    iget-object v0, v1, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->access$000(Lcom/xiaopeng/libbluetooth/PhoneControlBox;)Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->access$000(Lcom/xiaopeng/libbluetooth/PhoneControlBox;)Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;->onPhoneBook(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v1, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-static {v2, v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->access$100(Lcom/xiaopeng/libbluetooth/PhoneControlBox;Ljava/lang/Exception;)V

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onSmsCallback(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "error"    # I
    .param p3, "cur"    # I
    .param p4, "total"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/String;
    .param p7, "content"    # Ljava/lang/String;

    move-object v1, p0

    .line 120
    iget-object v0, v1, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->access$000(Lcom/xiaopeng/libbluetooth/PhoneControlBox;)Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->access$000(Lcom/xiaopeng/libbluetooth/PhoneControlBox;)Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;->onSmsCallback(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v1, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-static {v2, v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->access$100(Lcom/xiaopeng/libbluetooth/PhoneControlBox;Ljava/lang/Exception;)V

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
