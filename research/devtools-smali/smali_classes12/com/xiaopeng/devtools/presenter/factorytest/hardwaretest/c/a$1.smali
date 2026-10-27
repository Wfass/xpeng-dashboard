.class Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a$1;
.super Ljava/lang/Object;
.source "CameraTestPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->co(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic wO:I

.field final synthetic wP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;I)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a$1;->wP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    iput p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a$1;->wO:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 30
    const-string v0, "FPS_SELECTION_TOP_CAM"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a$1;->wO:I

    .line 31
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/g;->F(Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    return-void
.end method
