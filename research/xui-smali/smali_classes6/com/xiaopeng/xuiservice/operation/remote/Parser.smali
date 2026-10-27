.class public Lcom/xiaopeng/xuiservice/operation/remote/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Parser"

.field private static final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/operation/remote/Parser;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseQueryResponse(Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    .locals 8
    .param p0, "response"    # Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    const/4 v0, 0x0

    .line 25
    .local v0, "resourceContainer":Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/operation/remote/Parser;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp;

    .line 26
    .local v1, "resServiceResp":Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp;
    new-instance v2, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;

    invoke-direct {v2}, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;-><init>()V

    move-object v0, v2

    .line 27
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp;->data:Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;

    if-eqz v2, :cond_2

    .line 28
    iget-object v2, v1, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp;->data:Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;

    .line 29
    .local v2, "data":Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;
    invoke-virtual {v2}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->getTotalPage()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->setTotalPage(I)V

    .line 30
    invoke-virtual {v2}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->getCurrentPage()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->setCurrentPage(I)V

    .line 31
    invoke-virtual {v2}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->getPageCount()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->setPageCount(I)V

    .line 32
    invoke-virtual {v2}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->getTotalCount()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->setTotalCount(I)V

    .line 33
    invoke-virtual {v2}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->getResServiceBeans()Ljava/util/List;

    move-result-object v3

    .line 34
    .local v3, "resServiceBeans":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v4, "resourceBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/Resource;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 36
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;

    .line 37
    .local v6, "resServiceBean":Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;
    if-eqz v6, :cond_0

    .line 38
    invoke-static {v6}, Lcom/xiaopeng/xuiservice/operation/remote/Parser;->parseQueryResponseItem(Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;)Lcom/xiaopeng/appstore/storeprovider/Resource;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .end local v6    # "resServiceBean":Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;
    :cond_0
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0, v4}, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->setResourceList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1    # "resServiceResp":Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp;
    .end local v2    # "data":Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;
    .end local v3    # "resServiceBeans":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;>;"
    .end local v4    # "resourceBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/Resource;>;"
    :cond_2
    goto :goto_1

    .line 44
    :catch_0
    move-exception v1

    .line 46
    :goto_1
    return-object v0
.end method

.method public static parseQueryResponseItem(Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;)Lcom/xiaopeng/appstore/storeprovider/Resource;
    .locals 6
    .param p0, "itemBean"    # Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/Resource;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/Resource;-><init>()V

    .line 51
    .local v0, "resourceRet":Lcom/xiaopeng/appstore/storeprovider/Resource;
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuiservice/operation/remote/Parser;->stringToLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/xiaopeng/appstore/storeprovider/Resource;->setCreateTime(J)V

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->getUpdateTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuiservice/operation/remote/Parser;->stringToLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/appstore/storeprovider/Resource;->setUpdateTime(J)V

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->getResId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/Resource;->setRscId(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->getClientStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/Resource;->setClientStatus(I)V

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->getRscCategory()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/operation/remote/Parser;->stringToInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/Resource;->setResType(I)V

    .line 56
    sget-object v1, Lcom/xiaopeng/xuiservice/operation/remote/Parser;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->getContent()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;

    .line 57
    .local v1, "resServiceContent":Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->getRscName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/appstore/storeprovider/Resource;->setRscName(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/appstore/storeprovider/Resource;->setDownloadUrl(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->getRscIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/appstore/storeprovider/Resource;->setRscIcon(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/appstore/storeprovider/Resource;->setExpandContent(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/appstore/storeprovider/Resource;->setDes(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/appstore/storeprovider/Resource;->setPrice(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-object v0
.end method

.method public static stringToInt(Ljava/lang/String;I)I
    .locals 2
    .param p0, "numStr"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 77
    move v0, p1

    .line 79
    .local v0, "value":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 81
    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 82
    :goto_0
    return v0
.end method

.method public static stringToLong(Ljava/lang/String;J)J
    .locals 4
    .param p0, "numStr"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .line 69
    move-wide v0, p1

    .line 71
    .local v0, "value":J
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 73
    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    .line 74
    :goto_0
    return-wide v0
.end method
