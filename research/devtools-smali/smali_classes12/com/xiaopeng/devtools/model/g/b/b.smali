.class public Lcom/xiaopeng/devtools/model/g/b/b;
.super Ljava/lang/Object;
.source "SmartDriveModel.java"

# interfaces
.implements Lcom/xiaopeng/devtools/model/g/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/model/g/b/b$a;,
        Lcom/xiaopeng/devtools/model/g/b/b$b;
    }
.end annotation


# instance fields
.field private uK:Lcom/xiaopeng/devtools/model/g/b/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/g/b/b;)Lcom/xiaopeng/devtools/model/g/b/b$a;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/g/b/b;->uK:Lcom/xiaopeng/devtools/model/g/b/b$a;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/g/b/b;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/g/b/b;->bH(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private bH(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/smartdrive/SmartDriveData;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 81
    new-instance v1, Lcom/xiaopeng/devtools/model/g/b/b$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/model/g/b/b$1;-><init>(Lcom/xiaopeng/devtools/model/g/b/b;)V

    .line 82
    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/g/b/b$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 81
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 86
    return-object p1
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/bean/smartdrive/SmartDriveData;)V
    .locals 0

    .line 71
    return-void
.end method

.method public a(Lcom/xiaopeng/devtools/model/g/b/b$a;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/g/b/b;->uK:Lcom/xiaopeng/devtools/model/g/b/b$a;

    .line 77
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 55
    new-instance v0, Lcom/xiaopeng/devtools/model/g/b/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/devtools/model/g/b/b$b;-><init>(Lcom/xiaopeng/devtools/model/g/b/b;Lcom/xiaopeng/devtools/model/g/b/b$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/g/b/b$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 61
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public onReceiveFactoryScuTest322EventMsg(Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$FactoryScuTest322EventMsg;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/g/b/b;->uK:Lcom/xiaopeng/devtools/model/g/b/b$a;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$FactoryScuTest322EventMsg;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/g/b/b$a;->a([I)V

    .line 39
    return-void
.end method

.method public onReceiveFactoryScuTest3FDEventMsg(Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$FactoryScuTest3FDEventMsg;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/g/b/b;->uK:Lcom/xiaopeng/devtools/model/g/b/b$a;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$FactoryScuTest3FDEventMsg;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/g/b/b$a;->b([I)V

    .line 45
    return-void
.end method

.method public onReceiveFactoryScuTest3FEEventMsg(Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$FactoryScuTest3FEEventMsg;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/g/b/b;->uK:Lcom/xiaopeng/devtools/model/g/b/b$a;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$FactoryScuTest3FEEventMsg;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/g/b/b$a;->c([I)V

    .line 51
    return-void
.end method
