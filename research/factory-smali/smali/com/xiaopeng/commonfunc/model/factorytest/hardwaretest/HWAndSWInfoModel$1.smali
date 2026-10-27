.class Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$1;
.super Landroid/os/Handler;
.source "HWAndSWInfoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 55
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 56
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 57
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 71
    :pswitch_0
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;

    invoke-static {v1, v0}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->access$200(Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 65
    :pswitch_1
    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;

    invoke-static {v1, v0}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->access$100(Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 59
    :pswitch_2
    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;

    invoke-static {v1, v0}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->access$000(Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;Landroid/graphics/Bitmap;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
