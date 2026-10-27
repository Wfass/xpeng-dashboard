.class public Lbke;
.super Ljava/lang/Object;
.source "NrPlayOpt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbke$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;

.field private b:J

.field private c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;

.field private d:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lbke;->b:J

    .line 76
    iput-wide v0, p0, Lbke;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lbke$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lbke;-><init>()V

    return-void
.end method

.method public static a()Lbke;
    .locals 1

    .line 18
    sget-object v0, Lbke$a;->a:Lbke;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 2

    .line 25
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0}, Lbcz;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbkg;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v1

    invoke-virtual {v1}, Lbcz;->m()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 35
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_6

    .line 37
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 38
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0}, Lbcz;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 39
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object p1

    invoke-virtual {p1}, Lbcz;->pause()V

    goto :goto_0

    .line 40
    :cond_3
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0}, Lbcz;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 41
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object p1

    invoke-virtual {p1}, Lbcz;->pause()V

    goto :goto_0

    .line 42
    :cond_4
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0}, Lbcz;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 43
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object p1

    invoke-virtual {p1}, Lbcz;->play()V

    goto :goto_0

    .line 45
    :cond_5
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    goto :goto_0

    .line 48
    :cond_6
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;)V
    .locals 2

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbke;->b:J

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;->isFromCache()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iput-object p1, p0, Lbke;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lbke;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;)V
    .locals 2

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbke;->d:J

    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;->getmData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;->getmData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;->getmLocalList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;->getmData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;->getmLocalList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;->getmData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;->getmProvinceList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;->getmData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;->getmProvinceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;->isFromCache()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iput-object p1, p0, Lbke;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lbke;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;

    return-void
.end method

.method public b()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;
    .locals 4

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lbke;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 70
    iget-object v0, p0, Lbke;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;
    .locals 4

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lbke;->d:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 94
    iget-object v0, p0, Lbke;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
