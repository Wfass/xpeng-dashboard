.class Lbbx$1;
.super Ljava/lang/Object;
.source "IcmTransferModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbx;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lbbx;


# direct methods
.method constructor <init>(Lbbx;Z)V
    .locals 0

    .line 77
    iput-object p1, p0, Lbbx$1;->b:Lbbx;

    iput-boolean p2, p0, Lbbx$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 80
    iget-object v0, p0, Lbbx$1;->b:Lbbx;

    invoke-static {v0}, Lbbx;->a(Lbbx;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    new-instance v0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean;-><init>()V

    const-string v1, "1"

    .line 82
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean;->setEnable(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean;->setMsgtype(Ljava/lang/String;)V

    .line 84
    new-instance v2, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;

    invoke-direct {v2}, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;-><init>()V

    .line 85
    iget-boolean v3, p0, Lbbx$1;->a:Z

    if-eqz v3, :cond_0

    .line 86
    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->setBluetoothMusic(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "0"

    .line 88
    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->setBluetoothMusic(Ljava/lang/String;)V

    :goto_0
    const-string v1, "3"

    .line 90
    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->setMsgIndex(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean;->setNotify(Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;)V

    .line 92
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->d()Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;

    move-result-object v1

    const-string v2, "IcmTransferModel"

    if-eqz v1, :cond_1

    .line 97
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->d()Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;->sendSpeechStateInfo([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transferBTConnect: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "scu\u670d\u52a1\u521d\u59cb\u5316\u5931\u8d25"

    .line 103
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
