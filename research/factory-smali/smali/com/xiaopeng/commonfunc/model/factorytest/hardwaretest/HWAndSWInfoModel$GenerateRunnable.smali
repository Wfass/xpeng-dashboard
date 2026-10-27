.class Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;
.super Ljava/lang/Object;
.source "HWAndSWInfoModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenerateRunnable"
.end annotation


# instance fields
.field private mData:Ljava/lang/String;

.field private final mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhat:I

.field private final mWidth:I

.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;IILandroid/os/Handler;)V
    .locals 0
    .param p2, "what"    # I
    .param p3, "width"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .line 247
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->this$0:Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput p2, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWhat:I

    .line 249
    iput p3, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWidth:I

    .line 250
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 251
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;IILjava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p2, "what"    # I
    .param p3, "width"    # I
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 253
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->this$0:Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput p2, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWhat:I

    .line 255
    iput p3, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWidth:I

    .line 256
    iput-object p4, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mData:Ljava/lang/String;

    .line 257
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 258
    return-void
.end method

.method private sendMsg(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 278
    .local v0, "message":Landroid/os/Message;
    iget v1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWhat:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 279
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 280
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 262
    iget v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWhat:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->this$0:Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->getDeviceCode()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWidth:I

    iget v3, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWidth:I

    invoke-static {v0, v2, v3, v1}, Lcom/xiaopeng/commonfunc/utils/QRCodeUtil;->createQRImage(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 264
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->sendMsg(Landroid/graphics/Bitmap;)V

    .line 265
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWhat:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 266
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getIccid()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "iccid":Ljava/lang/String;
    iget v2, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWidth:I

    iget v3, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWidth:I

    invoke-static {v0, v2, v3, v1}, Lcom/xiaopeng/commonfunc/utils/QRCodeUtil;->createQRImage(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 268
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v1}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->sendMsg(Landroid/graphics/Bitmap;)V

    .line 269
    .end local v0    # "iccid":Ljava/lang/String;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWhat:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mData:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWidth:I

    iget v3, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->mWidth:I

    invoke-static {v0, v2, v3, v1}, Lcom/xiaopeng/commonfunc/utils/QRCodeUtil;->createQRImage(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 271
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;->sendMsg(Landroid/graphics/Bitmap;)V

    .line 273
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_0
    return-void
.end method
