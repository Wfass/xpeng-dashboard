.class public Lcom/xiaopeng/btservice/phone/PhoneControl;
.super Lcom/xiaopeng/btservice/base/AbsControl;
.source "PhoneControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneControl"


# instance fields
.field private mCallback:Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

.field private mCallbackHfp:Lcom/nforetek/bt/aidl/UiCallbackHfp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/btservice/base/AbsControl;-><init>()V

    .line 48
    new-instance v0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/btservice/phone/PhoneControl$1;-><init>(Lcom/xiaopeng/btservice/phone/PhoneControl;)V

    iput-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->mCallbackHfp:Lcom/nforetek/bt/aidl/UiCallbackHfp;

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->mCallback:Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/btservice/phone/PhoneControl;

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->mCallback:Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    return-object v0
.end method


# virtual methods
.method public dialNumber(Ljava/lang/String;)Z
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .line 155
    const-string v0, "PhoneControl"

    const-string v1, "dialNumber"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 160
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isHfpRemoteTelecomServiceOn()Z

    move-result v1

    .line 161
    .local v1, "isRemoteTelecomServiceOn":Z
    const-string v2, "yfl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRemoteTelecomServiceOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v2, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v2, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqHfpDialCall(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 165
    .end local v1    # "isRemoteTelecomServiceOn":Z
    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 166
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getAudioConnectionState()I
    .locals 2

    .line 385
    const-string v0, "PhoneControl"

    const-string v1, "getAudioConnectionState"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->getHfpAudioConnectionState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v0, 0x64

    return v0
.end method

.method public getCallList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nforetek/bt/aidl/NfHfpClientCall;",
            ">;"
        }
    .end annotation

    .line 373
    const-string v0, "PhoneControl"

    const-string v1, "getCallList"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->getHfpCallList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHfpConnectionState()I
    .locals 3

    .line 129
    const-string v0, "PhoneControl"

    const-string v1, "getHfpConnectionState"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, -0x1

    .line 131
    .local v0, "state":I
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 133
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->getHfpConnectionState()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getHfpRemoteBatteryIndicator()I
    .locals 3

    .line 361
    const-string v0, "PhoneControl"

    const-string v1, "getHfpRemoteBatteryIndicator"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v0, -0x1

    .line 363
    .local v0, "batteryLevel":I
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 365
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->getHfpRemoteBatteryIndicator()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 368
    goto :goto_0

    .line 366
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 369
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getHfpRemoteNetworkOperator()Ljava/lang/String;
    .locals 3

    .line 302
    const-string v0, "PhoneControl"

    const-string v1, "getHfpRemoteNetworkOperator"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, "operator":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return-object v0

    .line 306
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->getHfpRemoteNetworkOperator()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 309
    goto :goto_0

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 310
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getHfpRemoteSubscriberNumber()Ljava/lang/String;
    .locals 3

    .line 290
    const-string v0, "PhoneControl"

    const-string v1, "getHfpRemoteSubscriberNumber"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "localNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return-object v0

    .line 294
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->getHfpRemoteSubscriberNumber()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 297
    goto :goto_0

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 298
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public isCurrentInCall(Lcom/xiaopeng/btservice/phone/OnCurrentInCallListener;)Z
    .locals 11
    .param p1, "callListener"    # Lcom/xiaopeng/btservice/phone/OnCurrentInCallListener;

    .line 314
    const-string v0, "PhoneControl"

    const-string v1, "isCurrentInCall"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 317
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->getHfpCallList()Ljava/util/List;

    move-result-object v0

    .line 318
    .local v0, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/NfHfpClientCall;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 319
    if-eqz p1, :cond_1

    .line 320
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nforetek/bt/aidl/NfHfpClientCall;

    .line 321
    .local v2, "call":Lcom/nforetek/bt/aidl/NfHfpClientCall;
    const-string v3, "PhoneControl"

    invoke-virtual {p0, v3}, Lcom/xiaopeng/btservice/phone/PhoneControl;->getHfpConnectedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 322
    .local v5, "address":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/nforetek/bt/aidl/NfHfpClientCall;->getId()I

    move-result v6

    invoke-virtual {v2}, Lcom/nforetek/bt/aidl/NfHfpClientCall;->getState()I

    move-result v7

    invoke-virtual {v2}, Lcom/nforetek/bt/aidl/NfHfpClientCall;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/nforetek/bt/aidl/NfHfpClientCall;->isMultiParty()Z

    move-result v9

    invoke-virtual {v2}, Lcom/nforetek/bt/aidl/NfHfpClientCall;->isOutgoing()Z

    move-result v10

    move-object v4, p1

    invoke-interface/range {v4 .. v10}, Lcom/xiaopeng/btservice/phone/OnCurrentInCallListener;->onHfpCallChanged(Ljava/lang/String;IILjava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v2    # "call":Lcom/nforetek/bt/aidl/NfHfpClientCall;
    .end local v5    # "address":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 328
    .end local v0    # "callList":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/NfHfpClientCall;>;"
    :cond_2
    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PhoneControl"

    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method public isHas2ndCall()Z
    .locals 4

    .line 334
    const-string v0, "PhoneControl"

    const-string v1, "isHas2ndCall"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 337
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->getHfpCallList()Ljava/util/List;

    move-result-object v0

    .line 338
    .local v0, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/NfHfpClientCall;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 339
    return v3

    .line 343
    .end local v0    # "callList":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/NfHfpClientCall;>;"
    :cond_1
    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PhoneControl"

    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 344
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method public isHfpConnected()Z
    .locals 3

    .line 141
    const-string v0, "PhoneControl"

    const-string v1, "isHfpConnected"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "isConnected":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 145
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isHfpConnected()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 149
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isHfpInBandRingtoneSupport()Z
    .locals 3

    .line 348
    const-string v0, "PhoneControl"

    const-string v1, "isHfpInBandRingtoneSupport"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 352
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isHfpInBandRingtoneSupport()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 355
    goto :goto_0

    .line 353
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 356
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method protected registerCallback(Lcom/nforetek/bt/aidl/UiCommand;)V
    .locals 2
    .param p1, "btService"    # Lcom/nforetek/bt/aidl/UiCommand;

    .line 30
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->mCallbackHfp:Lcom/nforetek/bt/aidl/UiCallbackHfp;

    invoke-interface {p1, v0}, Lcom/nforetek/bt/aidl/UiCommand;->registerHfpCallback(Lcom/nforetek/bt/aidl/UiCallbackHfp;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PhoneControl"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 35
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected release()V
    .locals 2

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->mCallbackHfp:Lcom/nforetek/bt/aidl/UiCallbackHfp;

    invoke-interface {v0, v1}, Lcom/nforetek/bt/aidl/UiCommand;->unregisterHfpCallback(Lcom/nforetek/bt/aidl/UiCallbackHfp;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public reqHfpAnswerCall(I)Z
    .locals 3
    .param p1, "flag"    # I

    .line 222
    const-string v0, "PhoneControl"

    const-string v1, "reqHfpAnswerCall"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 226
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqHfpAnswerCall(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 229
    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 230
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public reqHfpAudioTransferToCarkit()Z
    .locals 3

    .line 235
    const-string v0, "PhoneControl"

    const-string v1, "reqHfpAudioTransferToCarkit"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 239
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->reqHfpAudioTransferToCarkit()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 242
    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 243
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public reqHfpAudioTransferToPhone()Z
    .locals 3

    .line 248
    const-string v0, "PhoneControl"

    const-string v1, "reqHfpAudioTransferToPhone"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 252
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->reqHfpAudioTransferToPhone()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 255
    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 256
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public reqHfpReDial()Z
    .locals 3

    .line 171
    const-string v0, "PhoneControl"

    const-string v1, "reqHfpReDial"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 175
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->reqHfpReDial()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 179
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public reqHfpRejectIncomingCall()Z
    .locals 3

    .line 184
    const-string v0, "PhoneControl"

    const-string v1, "reqHfpRejectIncomingCall"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 188
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->reqHfpRejectIncomingCall()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 191
    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 192
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public reqHfpSendDtmf(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 278
    const-string v0, "PhoneControl"

    const-string v1, "reqHfpSendDtmf"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 282
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqHfpSendDtmf(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 285
    goto :goto_0

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 286
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public reqHfpTerminateCurrentCall()Z
    .locals 3

    .line 197
    const-string v0, "PhoneControl"

    const-string v1, "reqHfpTerminateCurrentCall"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 201
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->reqHfpTerminateCurrentCall()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 204
    goto :goto_0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 205
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public reqHfpVoiceDial(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .line 266
    const-string v0, "PhoneControl"

    const-string v1, "reqHfpVoiceDial"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 270
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqHfpVoiceDial(Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 273
    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 274
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
