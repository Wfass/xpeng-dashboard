.class public Lcom/xiaopeng/devtools/presenter/h/d;
.super Ljava/lang/Object;
.source "ScreenFirUpdatePresenter.java"


# static fields
.field private static final zS:Ljava/lang/String;


# instance fields
.field private zT:Lcom/xiaopeng/devtools/view/update/c;

.field private zU:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-string v0, "INAP562T_REMOTE_ATTR"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/h/d;->zS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/devtools/view/update/c;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/d;->zT:Lcom/xiaopeng/devtools/view/update/c;

    .line 42
    const-string p1, "ScreenFirUpdatePresenter"

    const-string v0, "ScreenFirUpdatePresenter construct start."

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/h/d;)Lcom/xiaopeng/devtools/view/update/c;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/h/d;->zT:Lcom/xiaopeng/devtools/view/update/c;

    return-object p0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/devtools/presenter/h/d;->zS:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public it()V
    .locals 1

    .line 46
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 49
    :cond_0
    return-void
.end method

.method public kq()Z
    .locals 7

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/d;->zU:Ljava/lang/String;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/g;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/screenFir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    nop

    .line 78
    :try_start_0
    const-string v2, "XPeng_AP.bin"

    invoke-static {v1, v2}, Lcom/xiaopeng/devtools/utils/g;->J(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .line 83
    move-object v0, v2

    goto :goto_0

    .line 79
    :catch_0
    move-exception v2

    .line 80
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 84
    array-length v3, v0

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 85
    const-string v6, "XPeng_AP.bin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/d;->zU:Ljava/lang/String;

    .line 87
    goto :goto_2

    .line 84
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 91
    :cond_1
    :goto_2
    const-string v0, "ScreenFirUpdatePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Screen FirmFile FromUsb mPathScreenFirFile :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/devtools/presenter/h/d;->zU:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/d;->zU:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    return v2
.end method

.method public kr()V
    .locals 4

    .line 96
    const-string v0, "/data/firmware/"

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->aW(Ljava/lang/String;)Z

    move-result v0

    .line 97
    const-string v1, "ScreenFirUpdatePresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFolerRet ret =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    const-string v0, "/data/firmware/XPeng_AP.bin"

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->deleteFile(Ljava/lang/String;)Z

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/d;->zU:Ljava/lang/String;

    const-string v1, "/data/firmware/XPeng_AP.bin"

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/g;->A(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public ks()Z
    .locals 3

    .line 103
    const-string v0, "/data/firmware/XPeng_AP.bin"

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/h/d;->kr()V

    .line 105
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_0
    const/16 v0, 0x1b6

    .line 108
    const-string v1, "/data/firmware/XPeng_AP.bin"

    const/4 v2, -0x1

    invoke-static {v1, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 110
    const-string v0, "ScreenFirUpdatePresenter"

    const-string v1, "XP start to upgrade screen firmware ..."

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/h/d;->kt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Lcom/xiaopeng/devtools/presenter/h/d$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/h/d$1;-><init>(Lcom/xiaopeng/devtools/presenter/h/d;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/h/d;->ku()V

    .line 121
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public kt()Z
    .locals 2

    .line 125
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xiaopeng/devtools/presenter/h/d;->zS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public ku()V
    .locals 1

    .line 132
    new-instance v0, Lcom/xiaopeng/devtools/presenter/h/d$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/h/d$2;-><init>(Lcom/xiaopeng/devtools/presenter/h/d;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 52
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 60
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    const-string p1, "ScreenFirUpdatePresenter"

    const-string v0, "copy file error!!!"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    goto :goto_0

    .line 62
    :pswitch_1
    const-string p1, "ScreenFirUpdatePresenter"

    const-string v0, "copy file success."

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/h/d;->ks()Z

    .line 64
    nop

    .line 71
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
