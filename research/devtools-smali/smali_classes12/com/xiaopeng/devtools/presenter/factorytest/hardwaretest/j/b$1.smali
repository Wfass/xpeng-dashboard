.class Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b$1;
.super Ljava/lang/Object;
.source "SoundPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;->js()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xo:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b$1;->xo:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b$1;->xo:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;)Lcom/xiaopeng/devtools/model/c/a/h/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/h/a;->gN()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b$1;->xo:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b$1;->xo:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/a;->dm(Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method
