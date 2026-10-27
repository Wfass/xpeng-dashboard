.class Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;
.super Ljava/lang/Object;
.source "TemperaturePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/model/c/a/i/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/c/a/i/a;->gO()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;->setCpuTemp(D)V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/model/c/a/i/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/c/a/i/a;->gP()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;->setSocTemp(D)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/model/c/a/i/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/c/a/i/a;->gQ()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;->setUfsTemp(D)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/model/c/a/i/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/c/a/i/a;->gR()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;->setDdrTemp(D)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/model/c/a/i/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/c/a/i/a;->gS()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;->setAmpTemp(D)V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/model/c/a/i/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/c/a/i/a;->gT()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;->setPmicTemp(D)V

    .line 48
    :try_start_0
    const-string v0, "SUPPORT_TMCU"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/model/a/d;->getDvTempMsg()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;)Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/bean/car/McuTempInfo;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/a/c;->getDvMcuTemp()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/bean/car/McuTempInfo;->setMcuTemp(F)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/bean/car/McuTempInfo;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/a/c;->getDvBatTemp()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/bean/car/McuTempInfo;->setBattTemp(F)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/bean/car/McuTempInfo;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/a/c;->getDvPcbTemp()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/bean/car/McuTempInfo;->setPcbTemp(F)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->d(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->d(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/a;->a(Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;)V

    .line 59
    const-string v0, "SUPPORT_TMCU"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->d(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->e(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/a;->a(Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;)V

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->d(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Lcom/xiaopeng/devtools/bean/car/McuTempInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/a;->a(Lcom/xiaopeng/devtools/bean/car/McuTempInfo;)V

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->f(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->g(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a$1;->xv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-static {v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->h(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/lib/utils/j;->b(ILjava/lang/Runnable;J)V

    .line 67
    :cond_3
    return-void
.end method
