.class Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a$1;
.super Ljava/lang/Object;
.source "RadioPresenter.java"

# interfaces
.implements Lcom/xpeng/test/callback/CarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xj:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a$1;->xj:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3

    .line 56
    const-string v0, "RadioPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCarCallback handleChangeEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a$1;->xj:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v2, Lcom/xiaopeng/devtools/bean/factorytest/RadioBean;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/factorytest/RadioBean;

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;Lcom/xiaopeng/devtools/bean/factorytest/RadioBean;)Lcom/xiaopeng/devtools/bean/factorytest/RadioBean;

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a$1;->xj:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a$1;->xj:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;)V

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a$1;->xj:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;)V

    .line 62
    :cond_0
    return-void
.end method

.method public handleErrorEvent(II)V
    .locals 0

    .line 67
    return-void
.end method
