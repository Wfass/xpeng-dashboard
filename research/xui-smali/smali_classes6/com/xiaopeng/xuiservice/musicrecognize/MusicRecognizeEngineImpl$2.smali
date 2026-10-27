.class Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$2;
.super Ljava/lang/Object;
.source "MusicRecognizeEngineImpl.java"

# interfaces
.implements Lcom/acrcloud/rec/IACRCloudListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$2;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/acrcloud/rec/ACRCloudResult;)V
    .locals 31
    .param p1, "acrCloudResult"    # Lcom/acrcloud/rec/ACRCloudResult;

    move-object/from16 v1, p0

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/acrcloud/rec/ACRCloudResult;->getResult()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "result":Ljava/lang/String;
    const-string v0, "MusicRecognizeEngineImpl"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "root":Lorg/json/JSONObject;
    const-string v3, "status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 119
    .local v3, "statusObject":Lorg/json/JSONObject;
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "msg":Ljava/lang/String;
    const-string v5, "code"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "code":Ljava/lang/String;
    const-string v6, "0"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 122
    return-void

    .line 126
    :cond_0
    iget-object v6, v1, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$2;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->access$400(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 136
    const-string v6, "humming"

    goto :goto_0

    .line 132
    :pswitch_0
    const-string v6, "humming"

    .line 133
    .local v6, "modeKey":Ljava/lang/String;
    const/high16 v7, 0x3f800000    # 1.0f

    .line 134
    .local v7, "k":F
    goto :goto_1

    .line 128
    .end local v6    # "modeKey":Ljava/lang/String;
    .end local v7    # "k":F
    :pswitch_1
    const-string v6, "music"

    .line 129
    .restart local v6    # "modeKey":Ljava/lang/String;
    const v7, 0x3c23d70a    # 0.01f

    .line 130
    .restart local v7    # "k":F
    goto :goto_1

    .line 136
    .end local v6    # "modeKey":Ljava/lang/String;
    .end local v7    # "k":F
    :goto_0
    nop

    .line 137
    .restart local v6    # "modeKey":Ljava/lang/String;
    const/high16 v7, 0x3f800000    # 1.0f

    .line 139
    .restart local v7    # "k":F
    :goto_1
    const-string v8, "metadata"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 140
    .local v8, "resultArray":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .line 141
    .local v9, "maxScore":F
    const-string v10, ""

    .line 142
    .local v10, "title":Ljava/lang/String;
    const-string v11, ""

    .line 143
    .local v11, "albumName":Ljava/lang/String;
    const-string v12, ""

    .line 144
    .local v12, "albumLink":Ljava/lang/String;
    const-string v13, ""

    .line 145
    .local v13, "name":Ljava/lang/String;
    const-string v14, "0"

    .line 146
    .local v14, "score":Ljava/lang/String;
    const/4 v15, 0x0

    .line 148
    .local v15, "i":I
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v16

    .local v16, "var15":I
    :goto_2
    move/from16 v23, v16

    .end local v16    # "var15":I
    .local v23, "var15":I
    move-object/from16 v24, v0

    .end local v0    # "root":Lorg/json/JSONObject;
    .local v24, "root":Lorg/json/JSONObject;
    move/from16 v0, v23

    if-ge v15, v0, :cond_2

    .line 149
    .end local v23    # "var15":I
    .local v0, "var15":I
    invoke-virtual {v8, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v25, v16

    .line 150
    .local v25, "resultObject":Lorg/json/JSONObject;
    move/from16 v26, v0

    const-string v0, "score"

    .end local v0    # "var15":I
    .local v26, "var15":I
    move-object/from16 v27, v3

    move-object/from16 v3, v25

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .end local v25    # "resultObject":Lorg/json/JSONObject;
    .local v0, "value":Ljava/lang/String;
    .local v3, "resultObject":Lorg/json/JSONObject;
    .local v27, "statusObject":Lorg/json/JSONObject;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    .line 152
    .local v16, "newScore":F
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    .line 153
    .local v17, "oldScore":F
    cmpl-float v18, v16, v17

    if-ltz v18, :cond_1

    .line 154
    move-object v14, v0

    .line 155
    move-object/from16 v28, v0

    const-string v0, "title"

    .end local v0    # "value":Ljava/lang/String;
    .local v28, "value":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .end local v10    # "title":Ljava/lang/String;
    .local v0, "title":Ljava/lang/String;
    const-string v10, "album"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 157
    .local v10, "albumObject":Lorg/json/JSONObject;
    move-object/from16 v29, v0

    const-string v0, "name"

    .end local v0    # "title":Ljava/lang/String;
    .local v29, "title":Ljava/lang/String;
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .end local v11    # "albumName":Ljava/lang/String;
    .local v0, "albumName":Ljava/lang/String;
    const-string v11, "image"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 159
    .end local v12    # "albumLink":Ljava/lang/String;
    .local v11, "albumLink":Ljava/lang/String;
    const-string v12, "artists"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    move-object/from16 v30, v0

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .end local v0    # "albumName":Ljava/lang/String;
    .local v30, "albumName":Ljava/lang/String;
    const-string v12, "name"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .end local v13    # "name":Ljava/lang/String;
    .local v0, "name":Ljava/lang/String;
    mul-float v16, v16, v7

    .line 148
    .end local v3    # "resultObject":Lorg/json/JSONObject;
    .end local v9    # "maxScore":F
    .end local v10    # "albumObject":Lorg/json/JSONObject;
    .end local v17    # "oldScore":F
    .end local v28    # "value":Ljava/lang/String;
    .local v16, "maxScore":F
    move-object v13, v0

    move-object v12, v11

    move/from16 v9, v16

    move-object/from16 v10, v29

    move-object/from16 v11, v30

    .end local v0    # "name":Ljava/lang/String;
    .end local v16    # "maxScore":F
    .end local v29    # "title":Ljava/lang/String;
    .end local v30    # "albumName":Ljava/lang/String;
    .restart local v9    # "maxScore":F
    .local v10, "title":Ljava/lang/String;
    .local v11, "albumName":Ljava/lang/String;
    .restart local v12    # "albumLink":Ljava/lang/String;
    .restart local v13    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v24

    move/from16 v16, v26

    move-object/from16 v3, v27

    goto :goto_2

    .line 164
    .end local v26    # "var15":I
    .end local v27    # "statusObject":Lorg/json/JSONObject;
    .local v3, "statusObject":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v27, v3

    .end local v3    # "statusObject":Lorg/json/JSONObject;
    .restart local v27    # "statusObject":Lorg/json/JSONObject;
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$2;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    invoke-static {v0, v9}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->access$500(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$2;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->access$002(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;Z)Z

    .line 167
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$2;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->access$100(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;)Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine$Callback;

    move-result-object v0

    new-instance v3, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v17, v3

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    invoke-direct/range {v17 .. v22}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine$Callback;->onSuccess(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;)V

    .line 168
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$2;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "code":Ljava/lang/String;
    .end local v6    # "modeKey":Ljava/lang/String;
    .end local v7    # "k":F
    .end local v8    # "resultArray":Lorg/json/JSONArray;
    .end local v9    # "maxScore":F
    .end local v10    # "title":Ljava/lang/String;
    .end local v11    # "albumName":Ljava/lang/String;
    .end local v12    # "albumLink":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "score":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v24    # "root":Lorg/json/JSONObject;
    .end local v27    # "statusObject":Lorg/json/JSONObject;
    :cond_3
    goto :goto_3

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    const-string v3, "MusicRecognizeEngineImpl"

    invoke-static {v3, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onVolumeChanged(D)V
    .locals 0
    .param p1, "v"    # D

    .line 180
    return-void
.end method
