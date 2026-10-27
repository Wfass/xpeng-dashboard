.class public Lcom/xiaopeng/devtools/presenter/c/b;
.super Ljava/lang/Object;
.source "TboxNetworkPresenter.java"


# instance fields
.field private gson:Lcom/google/gson/Gson;

.field private wy:Lcom/xiaopeng/devtools/model/a/d;

.field private yr:Lcom/xiaopeng/devtools/view/modemui/b;

.field private ys:Lcom/xiaopeng/devtools/bean/car/TboxApn;

.field private yt:Lcom/xiaopeng/devtools/bean/car/TboxGsmStatus;

.field private yu:Lcom/xiaopeng/devtools/bean/car/TboxLteStatus;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/modemui/b;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/b;->wy:Lcom/xiaopeng/devtools/model/a/d;

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/c/b;->yr:Lcom/xiaopeng/devtools/view/modemui/b;

    .line 40
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/c/b;->gson:Lcom/google/gson/Gson;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/c/b;)Lcom/xiaopeng/devtools/view/modemui/b;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/c/b;->yr:Lcom/xiaopeng/devtools/view/modemui/b;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/bean/car/TboxApn;)V
    .locals 1

    .line 99
    new-instance v0, Lcom/xiaopeng/devtools/presenter/c/b$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/presenter/c/b$1;-><init>(Lcom/xiaopeng/devtools/presenter/c/b;Lcom/xiaopeng/devtools/bean/car/TboxApn;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/xiaopeng/devtools/presenter/c/b$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/presenter/c/b$3;-><init>(Lcom/xiaopeng/devtools/presenter/c/b;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public cj(Ljava/lang/String;)V
    .locals 1

    .line 110
    new-instance v0, Lcom/xiaopeng/devtools/presenter/c/b$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/presenter/c/b$2;-><init>(Lcom/xiaopeng/devtools/presenter/c/b;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public it()V
    .locals 1

    .line 44
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 47
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 132
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 135
    :cond_0
    return-void
.end method

.method public onEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 51
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21101011

    if-eq v0, v1, :cond_5

    const v1, 0x21101013

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 58
    :cond_0
    const-string v0, "TboxNetworkPresenter"

    const-string v1, "ID_TBOX_CDU_MODEM_STATUS_RESP"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "TboxNetworkPresenter"

    const-string v2, "ID_TBOX_CDU_MODEM_STATUS_RESP"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/lib/utils/c;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const-string v1, "LTE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/b;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v1, Lcom/xiaopeng/devtools/bean/car/TboxLteStatus;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/car/TboxLteStatus;

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/c/b;->yu:Lcom/xiaopeng/devtools/bean/car/TboxLteStatus;

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/c/b;->yu:Lcom/xiaopeng/devtools/bean/car/TboxLteStatus;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxLteStatus;->getTbox()Lcom/xiaopeng/devtools/bean/car/TboxLteBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxLteBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/c/b;->cj(Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/c/b;->yu:Lcom/xiaopeng/devtools/bean/car/TboxLteStatus;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxLteStatus;->getNeighbours()Ljava/util/List;

    move-result-object p1

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 68
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/devtools/bean/car/TboxLteBean;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/bean/car/TboxLteBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/presenter/c/b;->a(Ljava/util/ArrayList;)V

    .line 71
    goto :goto_2

    :cond_2
    const-string v1, "GSM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/b;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v1, Lcom/xiaopeng/devtools/bean/car/TboxGsmStatus;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/car/TboxGsmStatus;

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/c/b;->yt:Lcom/xiaopeng/devtools/bean/car/TboxGsmStatus;

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/c/b;->yt:Lcom/xiaopeng/devtools/bean/car/TboxGsmStatus;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxGsmStatus;->getTbox()Lcom/xiaopeng/devtools/bean/car/TboxGsmBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxGsmBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/c/b;->cj(Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/c/b;->yt:Lcom/xiaopeng/devtools/bean/car/TboxGsmStatus;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxGsmStatus;->getNeighbours()Ljava/util/List;

    move-result-object p1

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_3

    .line 77
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/devtools/bean/car/TboxGsmBean;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/bean/car/TboxGsmBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/presenter/c/b;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_4
    :goto_2
    goto :goto_3

    .line 81
    :catch_0
    move-exception p1

    .line 82
    const-string v0, "TboxNetworkPresenter"

    const-string v1, "ID_TBOX_CDU_MODEM_STATUS_RESP"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/lib/utils/c;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    goto :goto_3

    .line 53
    :cond_5
    const-string v0, "TboxNetworkPresenter"

    const-string v1, "ID_TBOX_CDU_APN"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/b;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v1, Lcom/xiaopeng/devtools/bean/car/TboxApn;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/car/TboxApn;

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/c/b;->ys:Lcom/xiaopeng/devtools/bean/car/TboxApn;

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/c/b;->ys:Lcom/xiaopeng/devtools/bean/car/TboxApn;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/c/b;->a(Lcom/xiaopeng/devtools/bean/car/TboxApn;)V

    .line 56
    nop

    .line 88
    :goto_3
    return-void
.end method

.method public requestTBoxModemStatus()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/b;->wy:Lcom/xiaopeng/devtools/model/a/d;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/a/d;->requestTBoxModemStatus()V

    .line 96
    return-void
.end method
