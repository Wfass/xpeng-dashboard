.class Lcom/xiaopeng/libbluetooth/A2DPControlBox$1;
.super Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback$Stub;
.source "A2DPControlBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libbluetooth/A2DPControlBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/libbluetooth/A2DPControlBox;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libbluetooth/A2DPControlBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/libbluetooth/A2DPControlBox;

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/A2DPControlBox;

    invoke-direct {p0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageCallback(ILandroid/os/Bundle;)V
    .locals 16
    .param p1, "action"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 70
    move-object/from16 v2, p2

    if-nez v2, :cond_0

    return-void

    .line 71
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/xiaopeng/libbluetooth/A2DPControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/A2DPControlBox;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->access$000(Lcom/xiaopeng/libbluetooth/A2DPControlBox;)Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 72
    :cond_1
    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 112
    :pswitch_0
    const-string v0, "Allowed"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 113
    .local v0, "allowAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "AttributeID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 114
    .local v3, "attributeId":I
    iget-object v4, v1, Lcom/xiaopeng/libbluetooth/A2DPControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/A2DPControlBox;

    invoke-static {v4}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->access$000(Lcom/xiaopeng/libbluetooth/A2DPControlBox;)Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;->onAVRCPSupportedEvent(ILjava/util/List;)V

    .line 115
    goto/16 :goto_0

    .line 107
    .end local v0    # "allowAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "attributeId":I
    :pswitch_1
    const-string v0, "Value"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, "attributeValue":I
    const-string v3, "AttributeID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 109
    .restart local v3    # "attributeId":I
    iget-object v4, v1, Lcom/xiaopeng/libbluetooth/A2DPControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/A2DPControlBox;

    invoke-static {v4}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->access$000(Lcom/xiaopeng/libbluetooth/A2DPControlBox;)Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;->onAVRCPChangedEvent(II)V

    .line 110
    goto/16 :goto_0

    .line 117
    .end local v0    # "attributeValue":I
    .end local v3    # "attributeId":I
    :pswitch_2
    const-string v0, "EventID"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, "eventId":I
    iget-object v3, v1, Lcom/xiaopeng/libbluetooth/A2DPControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/A2DPControlBox;

    invoke-static {v3}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->access$000(Lcom/xiaopeng/libbluetooth/A2DPControlBox;)Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;->onAVRCPBrowsingEvent(I)V

    .line 119
    goto/16 :goto_0

    .line 122
    .end local v0    # "eventId":I
    :pswitch_3
    const-string v0, "Passthroughcmd"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 123
    .local v0, "isSupportCmd":Z
    const-string v3, "GroupNavi"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 124
    .local v3, "isSupportNavi":Z
    const-string v4, "AdvancedCTPlayer"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 125
    .local v4, "isSupportCTPlayer":Z
    const-string v5, "Browsing"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 126
    .local v5, "isSupportBrowsing":Z
    const-string v6, "Searching"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 127
    .local v6, "isSupportSearch":Z
    const-string v7, "AddToNowPlaying"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 128
    .local v7, "addToNowPlaying":Z
    const-string v8, "UIDUnique"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 129
    .local v8, "uidUnique":Z
    const-string v9, "OnlyBrowsable"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 130
    .local v9, "onlyBrowsable":Z
    const-string v10, "OnlySearchable"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 131
    .local v10, "onlySearchable":Z
    const-string v11, "Nowplaying"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 132
    .local v11, "nowPlaying":Z
    const-string v12, "UIDPersistency"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 133
    .local v12, "uidPersistency":Z
    iget-object v13, v1, Lcom/xiaopeng/libbluetooth/A2DPControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/A2DPControlBox;

    invoke-static {v13}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->access$000(Lcom/xiaopeng/libbluetooth/A2DPControlBox;)Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;

    move-result-object v13

    const/16 v14, 0xb

    new-array v14, v14, [Z

    const/4 v15, 0x0

    aput-boolean v0, v14, v15

    const/4 v15, 0x1

    aput-boolean v3, v14, v15

    const/4 v15, 0x2

    aput-boolean v4, v14, v15

    const/4 v15, 0x3

    aput-boolean v5, v14, v15

    const/4 v15, 0x4

    aput-boolean v6, v14, v15

    const/4 v15, 0x5

    aput-boolean v7, v14, v15

    const/4 v15, 0x6

    aput-boolean v8, v14, v15

    const/4 v15, 0x7

    aput-boolean v9, v14, v15

    const/16 v15, 0x8

    aput-boolean v10, v14, v15

    const/16 v15, 0x9

    aput-boolean v11, v14, v15

    const/16 v15, 0xa

    aput-boolean v12, v14, v15

    invoke-virtual {v13, v14}, Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;->onAVRCPFeatureSupport([Z)V

    .end local v0    # "isSupportCmd":Z
    .end local v3    # "isSupportNavi":Z
    .end local v4    # "isSupportCTPlayer":Z
    .end local v5    # "isSupportBrowsing":Z
    .end local v6    # "isSupportSearch":Z
    .end local v7    # "addToNowPlaying":Z
    .end local v8    # "uidUnique":Z
    .end local v9    # "onlyBrowsable":Z
    .end local v10    # "onlySearchable":Z
    .end local v11    # "nowPlaying":Z
    .end local v12    # "uidPersistency":Z
    goto/16 :goto_0

    .line 93
    :pswitch_4
    const-string v3, "StreamStatus"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 94
    .local v0, "streamStatus":I
    iget-object v3, v1, Lcom/xiaopeng/libbluetooth/A2DPControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/A2DPControlBox;

    invoke-static {v3}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->access$000(Lcom/xiaopeng/libbluetooth/A2DPControlBox;)Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;->onA2DPStreamStatus(I)V

    .line 95
    goto/16 :goto_0

    .line 85
    .end local v0    # "streamStatus":I
    :pswitch_5
    const-string v3, "PlayStatus"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 86
    .local v0, "playStatus":I
    iget-object v3, v1, Lcom/xiaopeng/libbluetooth/A2DPControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/A2DPControlBox;

    invoke-static {v3}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->access$000(Lcom/xiaopeng/libbluetooth/A2DPControlBox;)Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;->onA2DPPlayStatus(I)V

    .line 87
    goto/16 :goto_0

    .line 89
    .end local v0    # "playStatus":I
    :pswitch_6
    const-string v0, "Position"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "position":Ljava/lang/String;
    iget-object v3, v1, Lcom/xiaopeng/libbluetooth/A2DPControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/A2DPControlBox;

    invoke-static {v3}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->access$000(Lcom/xiaopeng/libbluetooth/A2DPControlBox;)Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;->onA2DPPlayBackPos(I)V

    .line 91
    goto :goto_0

    .line 79
    .end local v0    # "position":Ljava/lang/String;
    :pswitch_7
    const-string v0, "DataType"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, "dataType":I
    const-string v3, "Attribute_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 81
    .local v3, "attributeId":I
    const-string v4, "MetaData"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "metaData":Ljava/lang/String;
    iget-object v5, v1, Lcom/xiaopeng/libbluetooth/A2DPControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/A2DPControlBox;

    invoke-static {v5}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->access$000(Lcom/xiaopeng/libbluetooth/A2DPControlBox;)Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v4}, Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;->onA2DPMetaData(IILjava/lang/String;)V

    .line 83
    goto :goto_0

    .line 74
    .end local v0    # "dataType":I
    .end local v3    # "attributeId":I
    .end local v4    # "metaData":Ljava/lang/String;
    :pswitch_8
    const-string v0, "MetaData"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 75
    .local v0, "isSupportMetaData":Z
    const-string v3, "PlayStatus"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 76
    .local v3, "isSupportPlayStatus":Z
    iget-object v4, v1, Lcom/xiaopeng/libbluetooth/A2DPControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/A2DPControlBox;

    invoke-static {v4}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->access$000(Lcom/xiaopeng/libbluetooth/A2DPControlBox;)Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;->onA2DPFeatureSupport(ZZ)V

    .line 77
    goto :goto_0

    .line 97
    .end local v0    # "isSupportMetaData":Z
    .end local v3    # "isSupportPlayStatus":Z
    :pswitch_9
    const-string v0, "cur"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 98
    .local v4, "cur":I
    const-string v0, "total"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 99
    .local v5, "total":I
    const-string v0, "code"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 100
    .local v6, "code":I
    const-string v0, "complete"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 101
    .local v7, "complete":I
    const-string v0, "title"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 102
    .local v8, "title":Ljava/lang/String;
    const-string v0, "artist"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, "artist":Ljava/lang/String;
    const-string v0, "itemType"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 104
    .local v10, "itemType":Ljava/lang/String;
    iget-object v0, v1, Lcom/xiaopeng/libbluetooth/A2DPControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/A2DPControlBox;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->access$000(Lcom/xiaopeng/libbluetooth/A2DPControlBox;)Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;

    move-result-object v3

    invoke-virtual/range {v3 .. v10}, Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;->onA2DPBrowsingCallback(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    nop

    .line 140
    .end local v4    # "cur":I
    .end local v5    # "total":I
    .end local v6    # "code":I
    .end local v7    # "complete":I
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "artist":Ljava/lang/String;
    .end local v10    # "itemType":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/xiaopeng/libbluetooth/A2DPControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/A2DPControlBox;

    invoke-static {v3, v0}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->access$100(Lcom/xiaopeng/libbluetooth/A2DPControlBox;Ljava/lang/Exception;)V

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xa
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
