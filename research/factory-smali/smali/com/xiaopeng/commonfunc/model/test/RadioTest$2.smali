.class Lcom/xiaopeng/commonfunc/model/test/RadioTest$2;
.super Ljava/lang/Object;
.source "RadioTest.java"

# interfaces
.implements Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/test/RadioTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/test/RadioTest;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/test/RadioTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/test/RadioTest;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest$2;->this$0:Lcom/xiaopeng/commonfunc/model/test/RadioTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 47
    const-string v0, "RadioTest "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest$2;->this$0:Lcom/xiaopeng/commonfunc/model/test/RadioTest;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->access$300(Lcom/xiaopeng/commonfunc/model/test/RadioTest;)Lcom/xiaopeng/commonfunc/model/test/callback/CarCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest$2;->this$0:Lcom/xiaopeng/commonfunc/model/test/RadioTest;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->access$300(Lcom/xiaopeng/commonfunc/model/test/RadioTest;)Lcom/xiaopeng/commonfunc/model/test/callback/CarCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/commonfunc/model/test/callback/CarCallback;->handleChangeEvent(Landroid/car/hardware/CarPropertyValue;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 3
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 55
    const-string v0, "RadioTest "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorEvent propertyId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , zone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest$2;->this$0:Lcom/xiaopeng/commonfunc/model/test/RadioTest;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->access$300(Lcom/xiaopeng/commonfunc/model/test/RadioTest;)Lcom/xiaopeng/commonfunc/model/test/callback/CarCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest$2;->this$0:Lcom/xiaopeng/commonfunc/model/test/RadioTest;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->access$300(Lcom/xiaopeng/commonfunc/model/test/RadioTest;)Lcom/xiaopeng/commonfunc/model/test/callback/CarCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/commonfunc/model/test/callback/CarCallback;->handleErrorEvent(II)V

    .line 59
    :cond_0
    return-void
.end method
