.class public Lcom/xiaopeng/devtools/model/a/d;
.super Ljava/lang/Object;
.source "TboxModel.java"


# static fields
.field private static rP:Lcom/xiaopeng/devtools/model/a/d;


# instance fields
.field private rQ:Landroid/car/hardware/tbox/CarTboxManager;

.field private rR:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/xiaopeng/devtools/model/a/d$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/a/d$1;-><init>(Lcom/xiaopeng/devtools/model/a/d;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rR:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/a/d;->fu()V

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/model/a/d;->fv()V

    .line 44
    return-void
.end method

.method private fu()V
    .locals 2

    .line 55
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eo()Landroid/car/Car;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eo()Landroid/car/Car;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/Car;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eo()Landroid/car/Car;

    move-result-object v0

    const-string v1, "xp_tbox"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    goto :goto_0

    .line 58
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "Car is not connected yet"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    goto :goto_1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 63
    :goto_1
    return-void
.end method

.method public static fy()Lcom/xiaopeng/devtools/model/a/d;
    .locals 1

    .line 47
    sget-object v0, Lcom/xiaopeng/devtools/model/a/d;->rP:Lcom/xiaopeng/devtools/model/a/d;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/xiaopeng/devtools/model/a/d;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/a/d;-><init>()V

    sput-object v0, Lcom/xiaopeng/devtools/model/a/d;->rP:Lcom/xiaopeng/devtools/model/a/d;

    .line 50
    :cond_0
    sget-object v0, Lcom/xiaopeng/devtools/model/a/d;->rP:Lcom/xiaopeng/devtools/model/a/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/bean/car/TboxCanControlIPMsg;)V
    .locals 3

    .line 184
    const-string v0, "TboxModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTboxCanControlMsg msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxCanControlIPMsg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setTboxCanControlMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_0
    const-string p1, "TboxModel"

    const-string v0, "setTboxCanControlMsg mCarTboxManager == null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    goto :goto_1

    .line 191
    :catch_0
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    :goto_1
    return-void
.end method

.method public a(Lcom/xiaopeng/devtools/bean/car/TboxCanControlMsg;)V
    .locals 3

    .line 171
    const-string v0, "TboxModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTboxCanControlMsg msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxCanControlMsg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setTboxCanControlMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_0
    const-string p1, "TboxModel"

    const-string v0, "setTboxCanControlMsg mCarTboxManager == null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    goto :goto_1

    .line 178
    :catch_0
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    :goto_1
    return-void
.end method

.method public a(Lcom/xiaopeng/devtools/bean/car/TboxModemBand;)V
    .locals 3

    .line 158
    const-string v0, "TboxModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTBoxBandModem bands:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setTboxBandModem(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    const-string p1, "TboxModel"

    const-string v0, "setTBoxBandModem mCarTboxManager == null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    goto :goto_1

    .line 165
    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    :goto_1
    return-void
.end method

.method public fv()V
    .locals 2

    .line 66
    const-string v0, "TboxModel"

    const-string v1, "registerCallback"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/d;->rR:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->registerCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    goto :goto_0

    .line 71
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "registerCallback mCarTboxManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 76
    :goto_1
    return-void
.end method

.method public getDvTempMsg()Ljava/lang/String;
    .locals 4

    .line 290
    nop

    .line 292
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v1}, Landroid/car/hardware/tbox/CarTboxManager;->getDvTempMsg()Ljava/lang/String;

    move-result-object v1

    .line 299
    move-object v0, v1

    goto :goto_0

    .line 295
    :cond_0
    const-string v1, "TboxModel"

    const-string v2, "getDvTempMsg mCarTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    goto :goto_1

    .line 297
    :catch_0
    move-exception v1

    .line 298
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    :goto_1
    const-string v1, "TboxModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDvTempMsg res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    return-object v0
.end method

.method public getSimStatusAsync()V
    .locals 2

    .line 119
    const-string v0, "TboxModel"

    const-string v1, "getSimStatusAsync"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->getSimStatusAsync()V

    goto :goto_0

    .line 124
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "getSimStatusAsync mCarTboxManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    goto :goto_1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    :goto_1
    return-void
.end method

.method public requestTBoxBandModemStatus()V
    .locals 2

    .line 145
    const-string v0, "TboxModel"

    const-string v1, "requestTBoxBandModemStatus"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->requestTboxBandModemStatus()V

    goto :goto_0

    .line 150
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "requestTBoxBandModemStatus mCarTboxManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    goto :goto_1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    :goto_1
    return-void
.end method

.method public requestTBoxModemStatus()V
    .locals 2

    .line 132
    const-string v0, "TboxModel"

    const-string v1, "requestTBoxModemStatus"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->requestTboxModemStatus()V

    goto :goto_0

    .line 137
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "requestTBoxModemStatus mCarTboxManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    goto :goto_1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    :goto_1
    return-void
.end method

.method public sendMultiBleRenewalRequest(Ljava/lang/String;)V
    .locals 3

    .line 331
    const-string v0, "TboxModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMultiBleRenewalRequest msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->sendMultiBleRenewalRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_0
    const-string p1, "TboxModel"

    const-string v0, "sendMultiBleRenewalRequest mCarTboxManager == null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    goto :goto_1

    .line 338
    :catch_0
    move-exception p1

    .line 339
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 341
    :goto_1
    return-void
.end method

.method public sendRenewalPartsRequest(Ljava/lang/String;)V
    .locals 3

    .line 318
    const-string v0, "TboxModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRenewalPartsRequest msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->sendRenewalPartsRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_0
    const-string p1, "TboxModel"

    const-string v0, "sendRenewalPartsRequest mCarTboxManager == null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    goto :goto_1

    .line 325
    :catch_0
    move-exception p1

    .line 326
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    :goto_1
    return-void
.end method

.method public sendUpgradingTboxByUdiskReq(Ljava/lang/String;)V
    .locals 3

    .line 305
    const-string v0, "TboxModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUpgradingTboxByUdiskReq msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->sendUpgradingTboxByUdiskReq(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_0
    const-string p1, "TboxModel"

    const-string v0, "sendUpgradingTboxByUdiskReq mCarTboxManager == null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    goto :goto_1

    .line 312
    :catch_0
    move-exception p1

    .line 313
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 315
    :goto_1
    return-void
.end method

.method public setDvTestReq(I)V
    .locals 3

    .line 264
    const-string v0, "TboxModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDvTestReq req:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setDvTestReq(I)V

    goto :goto_0

    .line 269
    :cond_0
    const-string p1, "TboxModel"

    const-string v0, "setDvTestReq mCarTboxManager == null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    goto :goto_1

    .line 271
    :catch_0
    move-exception p1

    .line 272
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    :goto_1
    return-void
.end method

.method public setGpsReset(I)V
    .locals 3

    .line 91
    const-string v0, "TboxModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGpsReset type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/d;->rQ:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setGpsReset(I)V

    goto :goto_0

    .line 96
    :cond_0
    const-string v0, "TboxModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGpsReset mCarTboxManager == null type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    goto :goto_1

    .line 98
    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    :goto_1
    return-void
.end method
