.class Lcom/xiaopeng/commonfunc/model/test/CarTest$TestCallBack;
.super Ljava/lang/Object;
.source "CarTest.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/test/CarTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TestCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/test/CarTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/test/CarTest;

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest$TestCallBack;->this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest$TestCallBack;->this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;

    iget-object v0, v0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest$TestCallBack;->this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/model/test/CarTest;->access$608(Lcom/xiaopeng/commonfunc/model/test/CarTest;)I

    .line 93
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 98
    return-void
.end method
