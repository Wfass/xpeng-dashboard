.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;
.super Ljava/lang/Object;
.source "TemperaturePresenter.java"


# instance fields
.field private vD:Lcom/xiaopeng/devtools/model/c/a/i/a;

.field private vE:I

.field private xp:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/a;

.field private xq:Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;

.field private xr:Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;

.field private xs:Lcom/xiaopeng/devtools/bean/car/McuTempInfo;

.field private xt:Z

.field private xu:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/a;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->vE:I

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->xt:Z

    .line 38
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->xu:Ljava/lang/Runnable;

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->xp:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/a;

    .line 32
    new-instance p1, Lcom/xiaopeng/devtools/model/c/a/i/a;

    invoke-direct {p1}, Lcom/xiaopeng/devtools/model/c/a/i/a;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->vD:Lcom/xiaopeng/devtools/model/c/a/i/a;

    .line 33
    new-instance p1, Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;

    invoke-direct {p1}, Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->xq:Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;

    .line 34
    new-instance p1, Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;

    invoke-direct {p1}, Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->xr:Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;

    .line 35
    new-instance p1, Lcom/xiaopeng/devtools/bean/car/McuTempInfo;

    invoke-direct {p1}, Lcom/xiaopeng/devtools/bean/car/McuTempInfo;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->xs:Lcom/xiaopeng/devtools/bean/car/McuTempInfo;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;)Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->xr:Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/model/c/a/i/a;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->vD:Lcom/xiaopeng/devtools/model/c/a/i/a;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->xq:Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/bean/car/McuTempInfo;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->xs:Lcom/xiaopeng/devtools/bean/car/McuTempInfo;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/a;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->xp:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/a;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->xr:Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->xt:Z

    return p0
.end method

.method static synthetic g(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Ljava/lang/Runnable;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->xu:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic h(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->vE:I

    return p0
.end method


# virtual methods
.method public cq(I)V
    .locals 3

    .line 71
    const-string v0, "TemperaturePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInterval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->vE:I

    .line 73
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 83
    const-string v0, "TemperaturePresenter"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->xt:Z

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->xu:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->e(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public jt()V
    .locals 2

    .line 76
    const-string v0, "TemperaturePresenter"

    const-string v1, "readTemp"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->xt:Z

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->xu:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->e(Ljava/lang/Runnable;)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->xu:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method
