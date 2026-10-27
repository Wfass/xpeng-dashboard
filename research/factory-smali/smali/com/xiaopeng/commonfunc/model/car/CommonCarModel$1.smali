.class Lcom/xiaopeng/commonfunc/model/car/CommonCarModel$1;
.super Ljava/lang/Object;
.source "CommonCarModel.java"

# interfaces
.implements Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;

    .line 27
    .local p0, "this":Lcom/xiaopeng/commonfunc/model/car/CommonCarModel$1;, "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel$1;"
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 30
    .local p0, "this":Lcom/xiaopeng/commonfunc/model/car/CommonCarModel$1;, "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel$1;"
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->access$000(Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;)Lcom/xiaopeng/commonfunc/model/car/CarEventChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->access$000(Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;)Lcom/xiaopeng/commonfunc/model/car/CarEventChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/commonfunc/model/car/CarEventChangedListener;->onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V

    .line 33
    :cond_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 3
    .param p1, "propertyId"    # I
    .param p2, "errorCode"    # I

    .line 37
    .local p0, "this":Lcom/xiaopeng/commonfunc/model/car/CommonCarModel$1;, "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel$1;"
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;

    iget-object v0, v0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorEvent propertyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    return-void
.end method
