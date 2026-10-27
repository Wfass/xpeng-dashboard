.class public Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgramBeanUtil;
.super Ljava/lang/Object;
.source "MiniProgramBeanUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniProgramBeanUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseMini(Ljava/util/Map;)Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;
    .locals 5
    .param p0, "params"    # Ljava/util/Map;

    .line 41
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;-><init>()V

    .line 42
    .local v0, "miniConfig":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;
    if-eqz p0, :cond_4

    .line 45
    :try_start_0
    const-string v1, "config"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    const-string v1, "config"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    .local v1, "config":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const-class v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;

    move-object v0, v2

    .line 50
    :cond_0
    const-string v2, "MiniProgramBeanUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "params config:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v1    # "config":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    const-string v1, "page"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    const-string v1, "page"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, "page":Ljava/lang/String;
    const-string v2, "MiniProgramBeanUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "params page:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->setPage(Ljava/lang/String;)V

    .line 62
    .end local v1    # "page":Ljava/lang/String;
    :cond_2
    const-string v1, "query"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    const-string v1, "query"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    .local v1, "query":Ljava/lang/String;
    const-string v2, "MiniProgramBeanUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "params query:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->setPage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    .end local v1    # "query":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 67
    :catch_1
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    return-object v0
.end method

.method public static parseResponse(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;
    .locals 20
    .param p0, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 75
    new-instance v0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;-><init>()V

    move-object v1, v0

    .line 76
    .local v1, "miniProgramResponse":Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;
    if-nez p0, :cond_0

    .line 77
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->setCode(I)V

    .line 78
    return-object v1

    .line 81
    :cond_0
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->setCode(I)V

    .line 82
    new-instance v0, Lorg/json/JSONObject;

    invoke-interface/range {p0 .. p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "body":Lorg/json/JSONObject;
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 84
    .local v3, "dataRoot":Lorg/json/JSONObject;
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 85
    .local v4, "dataGroup":Lorg/json/JSONObject;
    const-string v5, "list"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "groupList":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 87
    return-object v1

    .line 89
    :cond_1
    new-instance v6, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgramBeanUtil$1;

    invoke-direct {v6}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgramBeanUtil$1;-><init>()V

    .line 90
    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgramBeanUtil$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 89
    invoke-static {v5, v6}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 91
    .local v6, "miniGroupContainerList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupContainer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v7, "miniProgramGroups":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/xapp/MiniProgramGroup;>;"
    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 93
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupContainer;

    .line 94
    .local v9, "miniGroupContainer":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupContainer;
    new-instance v10, Lcom/xiaopeng/xuimanager/xapp/MiniProgramGroup;

    invoke-direct {v10}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramGroup;-><init>()V

    .line 95
    .local v10, "miniProgramGroup":Lcom/xiaopeng/xuimanager/xapp/MiniProgramGroup;
    if-nez v9, :cond_2

    .line 96
    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v9}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupContainer;->getMiniGroupBean()Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;

    move-result-object v11

    .line 99
    .local v11, "groupBean":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;
    if-nez v11, :cond_3

    .line 100
    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {v9}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupContainer;->getContentType()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramGroup;->setContentType(I)V

    .line 103
    invoke-virtual {v11}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramGroup;->setId(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v11}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;->getGroupName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramGroup;->setGroupName(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v11}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;->getMiniBeanContainers()Ljava/util/List;

    move-result-object v12

    .line 106
    .local v12, "miniBeanContainers":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBeanContainer;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v13, "miniProgramDatas":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;>;"
    if-eqz v12, :cond_6

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_6

    .line 108
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBeanContainer;

    .line 109
    .local v15, "miniBeanContainer":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBeanContainer;
    if-nez v15, :cond_4

    .line 110
    goto :goto_1

    .line 112
    :cond_4
    move-object/from16 v16, v0

    new-instance v0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;

    .end local v0    # "body":Lorg/json/JSONObject;
    .local v16, "body":Lorg/json/JSONObject;
    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;-><init>()V

    .line 113
    .local v0, "miniProgramData":Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;
    invoke-virtual {v15}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBeanContainer;->getContentType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->setContentType(I)V

    .line 114
    invoke-virtual {v15}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBeanContainer;->getMiniBean()Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;

    move-result-object v2

    .line 115
    .local v2, "miniBean":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;
    if-nez v2, :cond_5

    .line 116
    nop

    .line 108
    move-object/from16 v0, v16

    goto :goto_1

    .line 118
    :cond_5
    move-object/from16 v17, v3

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->getAliId()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "dataRoot":Lorg/json/JSONObject;
    .local v17, "dataRoot":Lorg/json/JSONObject;
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->setMiniAppId(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->getLogo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->setIconName(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->setName(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->getAlipayVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->setAlipayVersion(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->setId(Ljava/lang/String;)V

    .line 123
    const-string v3, "MiniProgramBeanUtil"

    move-object/from16 v18, v2

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "miniBean":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;
    .local v18, "miniBean":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    const-string v4, "miniProgramData  parse "

    .end local v4    # "dataGroup":Lorg/json/JSONObject;
    .local v19, "dataGroup":Lorg/json/JSONObject;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {v3, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v0    # "miniProgramData":Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;
    .end local v15    # "miniBeanContainer":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBeanContainer;
    .end local v18    # "miniBean":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;
    nop

    .line 108
    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    goto :goto_1

    .line 128
    .end local v16    # "body":Lorg/json/JSONObject;
    .end local v17    # "dataRoot":Lorg/json/JSONObject;
    .end local v19    # "dataGroup":Lorg/json/JSONObject;
    .local v0, "body":Lorg/json/JSONObject;
    .restart local v3    # "dataRoot":Lorg/json/JSONObject;
    .restart local v4    # "dataGroup":Lorg/json/JSONObject;
    :cond_6
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    .end local v0    # "body":Lorg/json/JSONObject;
    .end local v3    # "dataRoot":Lorg/json/JSONObject;
    .end local v4    # "dataGroup":Lorg/json/JSONObject;
    .restart local v16    # "body":Lorg/json/JSONObject;
    .restart local v17    # "dataRoot":Lorg/json/JSONObject;
    .restart local v19    # "dataGroup":Lorg/json/JSONObject;
    invoke-virtual {v10, v13}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramGroup;->setData(Ljava/util/List;)V

    .line 129
    const-string v0, "MiniProgramBeanUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "miniProgramGroup  parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v10}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v9    # "miniGroupContainer":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupContainer;
    .end local v10    # "miniProgramGroup":Lcom/xiaopeng/xuimanager/xapp/MiniProgramGroup;
    .end local v11    # "groupBean":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;
    .end local v12    # "miniBeanContainers":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBeanContainer;>;"
    .end local v13    # "miniProgramDatas":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;>;"
    nop

    .line 93
    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    goto/16 :goto_0

    .line 134
    .end local v16    # "body":Lorg/json/JSONObject;
    .end local v17    # "dataRoot":Lorg/json/JSONObject;
    .end local v19    # "dataGroup":Lorg/json/JSONObject;
    .restart local v0    # "body":Lorg/json/JSONObject;
    .restart local v3    # "dataRoot":Lorg/json/JSONObject;
    .restart local v4    # "dataGroup":Lorg/json/JSONObject;
    :cond_7
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    .end local v0    # "body":Lorg/json/JSONObject;
    .end local v3    # "dataRoot":Lorg/json/JSONObject;
    .end local v4    # "dataGroup":Lorg/json/JSONObject;
    .restart local v16    # "body":Lorg/json/JSONObject;
    .restart local v17    # "dataRoot":Lorg/json/JSONObject;
    .restart local v19    # "dataGroup":Lorg/json/JSONObject;
    invoke-virtual {v1, v7}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->setMiniProgramGroups(Ljava/util/List;)V

    .line 135
    const-string v0, "MiniProgramBeanUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "miniProgramResponse  parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v5    # "groupList":Ljava/lang/String;
    .end local v6    # "miniGroupContainerList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupContainer;>;"
    .end local v7    # "miniProgramGroups":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/xapp/MiniProgramGroup;>;"
    .end local v16    # "body":Lorg/json/JSONObject;
    .end local v17    # "dataRoot":Lorg/json/JSONObject;
    .end local v19    # "dataGroup":Lorg/json/JSONObject;
    goto :goto_2

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MiniProgramBeanUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse mini list json failure!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v1
.end method

.method public static toBean(I)Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;
    .locals 1
    .param p0, "code"    # I

    .line 35
    new-instance v0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;-><init>()V

    .line 36
    .local v0, "response":Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;
    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->setCode(I)V

    .line 37
    return-object v0
.end method
