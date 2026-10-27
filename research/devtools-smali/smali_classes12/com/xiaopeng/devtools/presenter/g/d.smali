.class public Lcom/xiaopeng/devtools/presenter/g/d;
.super Ljava/lang/Object;
.source "SystemInfoPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/g/c;


# static fields
.field private static final zz:[Ljava/lang/String;


# instance fields
.field private zx:Lcom/xiaopeng/devtools/model/h/b;

.field private zy:Lcom/xiaopeng/devtools/view/systeminfo/b;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 41
    const-string v0, "com.xiaopeng.xmart.cargallery"

    const-string v1, "com.xiaopeng.xmart.camera"

    const-string v2, "com.xiaopeng.usermanual"

    const-string v3, "com.xiaopeng.chargecontrol"

    const-string v4, "com.xiaopeng.montecarlo"

    const-string v5, "com.xiaopeng.message.center"

    const-string v6, "com.xiaopeng.caraccount"

    const-string v7, "com.xiaopeng.btphone"

    const-string v8, "com.xiaopeng.ota"

    const-string v9, "com.xiaopeng.musicradio"

    const-string v10, "com.xiaopeng.aiassistant"

    const-string v11, "com.xiaopeng.autopilot"

    const-string v12, "com.xiaopeng.aiavatarservice"

    const-string v13, "com.xiaopeng.appstore"

    const-string v14, "com.android.systemui"

    const-string v15, "com.xiaopeng.oobe"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/g/d;->zz:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/devtools/view/systeminfo/b;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/xiaopeng/devtools/model/h/c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/h/c;-><init>(Lcom/xiaopeng/devtools/presenter/g/c;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/g/d;->zx:Lcom/xiaopeng/devtools/model/h/b;

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/g/d;->zy:Lcom/xiaopeng/devtools/view/systeminfo/b;

    .line 50
    return-void
.end method

.method private cm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 67
    const-string v0, "UNKNOWN"

    .line 68
    const-string v1, "46000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46002"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46004"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46007"

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46008"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46013"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    const-string v1, "46001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "46006"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "46009"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    const-string v1, "46003"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "46005"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "46011"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 74
    :cond_2
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1000b5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 72
    :cond_3
    :goto_0
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1000b6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 70
    :cond_4
    :goto_1
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1000b4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_5
    :goto_2
    return-object v0
.end method

.method private synthetic kd()V
    .locals 9

    .line 138
    const-string v0, "SystemInfoPresenter"

    const-string v1, "collectWantedApps"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 141
    sget-object v2, Lcom/xiaopeng/devtools/presenter/g/d;->zz:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 143
    const/16 v6, 0x2000

    :try_start_0
    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 144
    if-eqz v6, :cond_0

    .line 145
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    goto :goto_1

    .line 147
    :catch_0
    move-exception v6

    .line 148
    const-string v6, "SystemInfoPresenter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NameNotFoundException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/presenter/g/d;->u(Ljava/util/List;)V

    .line 152
    return-void
.end method

.method public static synthetic lambda$haX3jzCQVgP_Gz2oB-wsc2ot3bw(Lcom/xiaopeng/devtools/presenter/g/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/g/d;->kd()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 101
    new-instance v0, Lcom/xiaopeng/devtools/presenter/g/d$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/devtools/presenter/g/d$1;-><init>(Lcom/xiaopeng/devtools/presenter/g/d;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public eG()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/g/d;->zx:Lcom/xiaopeng/devtools/model/h/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/h/b;->eG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fQ()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/g/d;->zx:Lcom/xiaopeng/devtools/model/h/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/h/b;->fQ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccid()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/g/d;->zx:Lcom/xiaopeng/devtools/model/h/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/h/b;->getIccid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMcuVersion()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/g/d;->zx:Lcom/xiaopeng/devtools/model/h/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/h/b;->getMcuVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemVersion()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/g/d;->zx:Lcom/xiaopeng/devtools/model/h/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/h/b;->getSystemVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/g/d;->zx:Lcom/xiaopeng/devtools/model/h/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/h/b;->getVehicleId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hI()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/g/d;->zx:Lcom/xiaopeng/devtools/model/h/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/h/b;->hI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hJ()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/g/d;->zx:Lcom/xiaopeng/devtools/model/h/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/h/b;->hJ()V

    .line 133
    return-void
.end method

.method public kb()V
    .locals 0

    .line 53
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    .line 54
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/f;->k(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public kc()V
    .locals 1

    .line 137
    new-instance v0, Lcom/xiaopeng/devtools/presenter/g/-$$Lambda$d$haX3jzCQVgP_Gz2oB-wsc2ot3bw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/g/-$$Lambda$d$haX3jzCQVgP_Gz2oB-wsc2ot3bw;-><init>(Lcom/xiaopeng/devtools/presenter/g/d;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 164
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/f;->l(Ljava/lang/Object;)V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/g/d;->zx:Lcom/xiaopeng/devtools/model/h/b;

    .line 166
    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/g/d;->zy:Lcom/xiaopeng/devtools/view/systeminfo/b;

    .line 167
    return-void
.end method

.method public onEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 59
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21101011

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v1, Lcom/xiaopeng/devtools/bean/car/TboxApn;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/car/TboxApn;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/g/d;->zy:Lcom/xiaopeng/devtools/view/systeminfo/b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxApn;->getImsi()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/g/d;->cm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/systeminfo/b;->dw(Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/g/d;->zy:Lcom/xiaopeng/devtools/view/systeminfo/b;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/g/d;->zy:Lcom/xiaopeng/devtools/view/systeminfo/b;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/systeminfo/b;->u(Ljava/util/List;)V

    .line 160
    :cond_0
    return-void
.end method
