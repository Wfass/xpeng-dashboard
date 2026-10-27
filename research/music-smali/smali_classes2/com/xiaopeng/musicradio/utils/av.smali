.class public Lcom/xiaopeng/musicradio/utils/av;
.super Ljava/lang/Object;
.source "NetRadioInfoTransferUtil.java"


# direct methods
.method public static a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;
    .locals 3

    .line 104
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;-><init>()V

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setId(J)V

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setAreaCode(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getHz()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setHz(D)V

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setPicUrl(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setPlayCount(I)V

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setPlayingInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getProgramInfos()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setProgramInfos(Ljava/util/List;)V

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setPlayUrl(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setUpdateTime(J)V

    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;
    .locals 3

    .line 67
    new-instance v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setId(I)V

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setAreaCode(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getHz()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setHz(D)V

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setName(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setPicUrl(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getPlayCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setPlayCount(I)V

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getPlayUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setPlayUrl(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setUpdateTime(J)V

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getCacheTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setCacheTime(J)V

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getProgramInfos()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/xiaopeng/musicradio/utils/av;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;
    .locals 3

    .line 51
    new-instance v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setId(I)V

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setAreaCode(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getHz()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setHz(D)V

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setPicUrl(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getPlayCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setPlayCount(I)V

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getPlayUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setPlayUrl(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setUpdateTime(J)V

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getCacheTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setCacheTime(J)V

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getProgramInfos()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/xiaopeng/musicradio/utils/av;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;
    .locals 2

    if-eqz p0, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->getRelatedProgram()Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean$RelatedProgramBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->getBackPlayUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->getRelatedProgram()Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean$RelatedProgramBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean$RelatedProgramBean;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setId(I)V

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->getRelatedProgram()Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean$RelatedProgramBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean$RelatedProgramBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setName(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->getBackPlayUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setPlayUrl(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setStartTime(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->getEndTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setEndTime(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setParentInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->clone()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object p1

    const/4 v1, 0x2

    .line 86
    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setType(I)V

    .line 87
    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setParentInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 89
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setPlayingInfoRaw(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    if-eqz p2, :cond_1

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    .line 95
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->clone()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object p2

    .line 96
    invoke-virtual {p2, p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setParentInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    .line 97
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setProgramInfosRaw(Ljava/util/List;)V

    return-void
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;
    .locals 3

    .line 119
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;-><init>()V

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setId(J)V

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setAreaCode(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getHz()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setHz(D)V

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setName(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setPicUrl(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setPlayCount(I)V

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setPlayingInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getProgramInfos()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setProgramInfos(Ljava/util/List;)V

    .line 128
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setPlayUrl(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setUpdateTime(J)V

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getCacheTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setCacheTime(J)V

    return-object v0
.end method
