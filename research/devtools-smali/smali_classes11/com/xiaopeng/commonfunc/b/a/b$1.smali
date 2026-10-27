.class Lcom/xiaopeng/commonfunc/b/a/b$1;
.super Ljava/lang/Object;
.source "CommonCarModel.java"

# interfaces
.implements Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nO:Lcom/xiaopeng/commonfunc/b/a/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/b/a/b;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/a/b$1;->nO:Lcom/xiaopeng/commonfunc/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/a/b$1;->nO:Lcom/xiaopeng/commonfunc/b/a/b;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/b/a/b;->a(Lcom/xiaopeng/commonfunc/b/a/b;)Lcom/xiaopeng/commonfunc/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/a/b$1;->nO:Lcom/xiaopeng/commonfunc/b/a/b;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/b/a/b;->a(Lcom/xiaopeng/commonfunc/b/a/b;)Lcom/xiaopeng/commonfunc/b/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/commonfunc/b/a/a;->onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V

    .line 33
    :cond_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/a/b$1;->nO:Lcom/xiaopeng/commonfunc/b/a/b;

    iget-object v0, v0, Lcom/xiaopeng/commonfunc/b/a/b;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorEvent propertyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , errorCode: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    return-void
.end method
