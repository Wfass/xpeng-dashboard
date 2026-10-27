.class public Lcom/xiaopeng/devtools/presenter/h/f;
.super Ljava/lang/Object;
.source "XpuFirUpdatePresenter.java"


# instance fields
.field private Ac:Lcom/xiaopeng/devtools/view/update/e;

.field private Ad:Ljava/lang/String;

.field private Ae:Ljava/lang/String;

.field private Af:Ljava/lang/String;

.field private Ag:Ljava/lang/String;

.field private Ah:Lcom/xiaopeng/devtools/model/a/e;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/update/e;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ac:Lcom/xiaopeng/devtools/view/update/e;

    .line 44
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/e;->fz()Lcom/xiaopeng/devtools/model/a/e;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ah:Lcom/xiaopeng/devtools/model/a/e;

    .line 45
    const-string p1, "XpuFirUpdatePresenter"

    const-string v0, "ScreenFirUpdatePresenter construct start."

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private co(Ljava/lang/String;)V
    .locals 6

    .line 163
    const-string v0, "|"

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/g;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    if-eqz p1, :cond_2

    .line 165
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 166
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 167
    aget-object v1, p1, v0

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    .line 168
    aget-object v1, p1, v0

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 169
    array-length v5, v1

    if-ne v5, v2, :cond_0

    .line 170
    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ag:Ljava/lang/String;

    .line 173
    :cond_0
    aget-object v1, p1, v0

    const-string v5, "cks"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 174
    aget-object v1, p1, v0

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 175
    array-length v3, v1

    if-ne v3, v2, :cond_1

    .line 176
    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Af:Ljava/lang/String;

    .line 166
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_2
    return-void
.end method

.method public static synthetic lambda$KgEwXi7VySD-2sw41hdxoSuh1SY(Lcom/xiaopeng/devtools/presenter/h/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/devtools/presenter/h/f;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ad:Ljava/lang/String;

    const-string v1, "172.20.1.22"

    const/4 v2, -0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/devtools/utils/h;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 144
    const-string p2, "XpuFirUpdatePresenter"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FtpSender ret  = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ah:Lcom/xiaopeng/devtools/model/a/e;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/model/a/e;->bV(I)V

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ac:Lcom/xiaopeng/devtools/view/update/e;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/xiaopeng/devtools/view/update/e;->dD(I)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ah:Lcom/xiaopeng/devtools/model/a/e;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/model/a/e;->bV(I)V

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ac:Lcom/xiaopeng/devtools/view/update/e;

    invoke-interface {p1, p2}, Lcom/xiaopeng/devtools/view/update/e;->dD(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    goto :goto_1

    .line 152
    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    :goto_1
    return-void
.end method


# virtual methods
.method public it()V
    .locals 1

    .line 49
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 52
    :cond_0
    return-void
.end method

.method public kC()Z
    .locals 4

    .line 102
    nop

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ad:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ae:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Af:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ag:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/xpuFirm/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "update_xpu_by_cdu_cfg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ae:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ae:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->aY(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ae:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xiaopeng/devtools/presenter/h/f;->co(Ljava/lang/String;)V

    .line 112
    const-string v1, "XpuFirUpdatePresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get XPU FirmFile FromUsb md5value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Af:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",filename = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ag:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ad:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ad:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->aY(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public kD()V
    .locals 4

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ah:Lcom/xiaopeng/devtools/model/a/e;

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 126
    const-string v1, "name"

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v1, "cks"

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Af:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v1, "XpuFirUpdatePresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sendIcmUpdateRequest str = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ah:Lcom/xiaopeng/devtools/model/a/e;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/e;->sendXpuUpdateRequest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    :goto_0
    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ad:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "XpuFirUpdatePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTrasnferXpuFirmToXpu,mPathXpuFirFile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/xiaopeng/devtools/presenter/h/-$$Lambda$f$KgEwXi7VySD-2sw41hdxoSuh1SY;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/xiaopeng/devtools/presenter/h/-$$Lambda$f$KgEwXi7VySD-2sw41hdxoSuh1SY;-><init>(Lcom/xiaopeng/devtools/presenter/h/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ac:Lcom/xiaopeng/devtools/view/update/e;

    const/4 p2, -0x2

    invoke-interface {p1, p2}, Lcom/xiaopeng/devtools/view/update/e;->dD(I)V

    .line 159
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 64
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21103802

    if-eq v0, v1, :cond_2

    const v1, 0x21403804

    if-eq v0, v1, :cond_1

    const v1, 0x21403806

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 93
    const-string v0, "XpuFirUpdatePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID_XPU_UPDATE_RESULT value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ac:Lcom/xiaopeng/devtools/view/update/e;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/update/e;->dD(I)V

    .line 95
    goto/16 :goto_1

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 87
    const-string v0, "XpuFirUpdatePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID_XPU_UPDATE_PROGRESS value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/f;->Ac:Lcom/xiaopeng/devtools/view/update/e;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/update/e;->dE(I)V

    .line 90
    goto :goto_1

    .line 67
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 68
    const-string v0, "XpuFirUpdatePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID_XPU_UPDATE_REQ resStr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 70
    const-string p1, "status"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 71
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    const-string v2, "homepath"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    const-string v3, "user"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    const-string v4, "passwd"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-nez p1, :cond_3

    .line 77
    invoke-virtual {p0, v2, v3, v0}, Lcom/xiaopeng/devtools/presenter/h/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 79
    :cond_3
    const-string p1, "XpuFirUpdatePresenter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID_XPU_UPDATE_REQ xpu update res reject,reason:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    goto :goto_1

    .line 81
    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    nop

    .line 99
    :goto_1
    return-void
.end method
