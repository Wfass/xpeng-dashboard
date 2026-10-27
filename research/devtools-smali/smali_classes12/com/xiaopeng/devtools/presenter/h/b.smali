.class public Lcom/xiaopeng/devtools/presenter/h/b;
.super Ljava/lang/Object;
.source "IcmUpdatePresenter.java"


# instance fields
.field private zJ:Lcom/xiaopeng/devtools/view/update/a;

.field private zK:Ljava/lang/String;

.field private zL:Ljava/lang/String;

.field private zM:Lcom/xiaopeng/devtools/model/a/b;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/update/a;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zJ:Lcom/xiaopeng/devtools/view/update/a;

    .line 50
    new-instance p1, Lcom/xiaopeng/devtools/model/a/b;

    invoke-direct {p1}, Lcom/xiaopeng/devtools/model/a/b;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zM:Lcom/xiaopeng/devtools/model/a/b;

    .line 51
    return-void
.end method

.method private synthetic l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zL:Ljava/lang/String;

    const-string v1, "172.20.1.40"

    const/16 v2, 0x8ad

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/devtools/utils/h;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 143
    const-string p2, "IcmUpdatePresenter"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FtpSender ret  = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zM:Lcom/xiaopeng/devtools/model/a/b;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/model/a/b;->setUpdateFileTransferStatus(I)V

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zJ:Lcom/xiaopeng/devtools/view/update/a;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/xiaopeng/devtools/view/update/a;->dx(I)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zM:Lcom/xiaopeng/devtools/model/a/b;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/model/a/b;->setUpdateFileTransferStatus(I)V

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zJ:Lcom/xiaopeng/devtools/view/update/a;

    invoke-interface {p1, p2}, Lcom/xiaopeng/devtools/view/update/a;->dx(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    goto :goto_1

    .line 151
    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    :goto_1
    return-void
.end method

.method public static synthetic lambda$QshK15shaIG-rB38BI6hMwP4nlk(Lcom/xiaopeng/devtools/presenter/h/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/devtools/presenter/h/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public it()V
    .locals 1

    .line 54
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 57
    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 139
    new-instance v0, Lcom/xiaopeng/devtools/presenter/h/-$$Lambda$b$QshK15shaIG-rB38BI6hMwP4nlk;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/xiaopeng/devtools/presenter/h/-$$Lambda$b$QshK15shaIG-rB38BI6hMwP4nlk;-><init>(Lcom/xiaopeng/devtools/presenter/h/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 155
    const/4 p1, 0x1

    return p1
.end method

.method public kn()V
    .locals 2

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    const v1, 0x2110164a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 111
    const v1, 0x2140164d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    const v1, 0x2140164b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zM:Lcom/xiaopeng/devtools/model/a/b;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/b;->a(Ljava/util/Collection;)V

    .line 114
    return-void
.end method

.method public ko()Z
    .locals 3

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zK:Ljava/lang/String;

    .line 118
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/icm/update.squashfs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zL:Ljava/lang/String;

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/icm/update_icm_by_cdu_md5"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zL:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->aY(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->aY(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zK:Ljava/lang/String;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zK:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public kp()V
    .locals 3

    .line 130
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 131
    const-string v1, "md5"

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zM:Lcom/xiaopeng/devtools/model/a/b;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/b;->sendUpdateRequest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 60
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zM:Lcom/xiaopeng/devtools/model/a/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/a/b;->onDestroy()V

    .line 64
    return-void
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

    .line 70
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x2110164a

    if-eq v0, v1, :cond_2

    const v1, 0x2140164b

    if-eq v0, v1, :cond_1

    const v1, 0x2140164d

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 94
    const-string v0, "IcmUpdatePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID_ICM_UPDATE_PROGRESS value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zJ:Lcom/xiaopeng/devtools/view/update/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/update/a;->dy(I)V

    .line 97
    goto/16 :goto_1

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 100
    const-string v0, "IcmUpdatePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID_ICM_UPDATE_RESULT value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zJ:Lcom/xiaopeng/devtools/view/update/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/update/a;->dx(I)V

    .line 102
    goto :goto_1

    .line 73
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 74
    const-string v0, "IcmUpdatePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID_ICM_UPDATE_REQ resStr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    const-string p1, "status"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 77
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string v2, "homepath"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    const-string v3, "user"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    const-string v4, "passwd"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    if-nez p1, :cond_3

    .line 83
    invoke-virtual {p0, v2, v3, v0}, Lcom/xiaopeng/devtools/presenter/h/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 85
    :cond_3
    const-string p1, "IcmUpdatePresenter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID_ICM_UPDATE_REQ ICM update res reject,reason:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/b;->zJ:Lcom/xiaopeng/devtools/view/update/a;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/view/update/a;->dx(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    goto :goto_1

    .line 88
    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    nop

    .line 106
    :goto_1
    return-void
.end method
