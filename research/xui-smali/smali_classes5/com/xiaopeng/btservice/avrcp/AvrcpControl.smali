.class public Lcom/xiaopeng/btservice/avrcp/AvrcpControl;
.super Lcom/xiaopeng/btservice/base/AbsControl;
.source "AvrcpControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AvrcpControl"


# instance fields
.field private mCallback:Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

.field private mCallbackAvrcp:Lcom/nforetek/bt/aidl/UiCallbackAvrcp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mCallback"    # Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/btservice/base/AbsControl;-><init>()V

    .line 42
    new-instance v0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;-><init>(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)V

    iput-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->mCallbackAvrcp:Lcom/nforetek/bt/aidl/UiCallbackAvrcp;

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->mContext:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->mCallback:Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    .line 11
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->mCallback:Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    return-object v0
.end method


# virtual methods
.method public addToNowPlaying(BIJ)Z
    .locals 1
    .param p1, "scopeId"    # B
    .param p2, "uidCounter"    # I
    .param p3, "uid"    # J

    .line 666
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcp14AddToNowPlaying(BIJ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 673
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public backward()Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcpBackward()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public browsingChannelEstablished()Z
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->isAvrcp14BrowsingChannelEstablished()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 577
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public changePath(IJB)Z
    .locals 1
    .param p1, "uidCounter"    # I
    .param p2, "uid"    # J
    .param p4, "direction"    # B

    .line 618
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcp14ChangePath(IJB)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 625
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcpConnect(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 265
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcpDisconnect(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public forward()Z
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcpForward()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 353
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCapabilitiesSupportEvents()Z
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcp13GetCapabilitiesSupportEvent()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 445
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectedAddress()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->getAvrcpConnectedAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v0, "00:00:00:00:00:00"

    return-object v0
.end method

.method public getConnectionState(Ljava/lang/String;)I
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->getAvrcpConnectionState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v0, 0x64

    return v0
.end method

.method public getElementAttributesPlaying()Z
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcp13GetElementAttributesPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 505
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFolderItems(B)Z
    .locals 1
    .param p1, "scopeId"    # B

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcp14GetFolderItems(B)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 613
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemAttributes(BIJ)Z
    .locals 1
    .param p1, "scopeId"    # B
    .param p2, "uidCounter"    # I
    .param p3, "uid"    # J

    .line 630
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 632
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcp14GetItemAttributes(BIJ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 637
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayStatus()Z
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcp13GetPlayStatus()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 517
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayerSettingAttributesList()Z
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcp13GetPlayerSettingAttributesList()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 457
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayerSettingCurrentValues()Z
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcp13GetPlayerSettingCurrentValues()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 481
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayerSettingValuesList(B)Z
    .locals 1
    .param p1, "attributeId"    # B

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcp13GetPlayerSettingValuesList(B)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 469
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public is13Supported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->isAvrcp13Supported(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public is14Supported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->isAvrcp14Supported(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->isAvrcpConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->isAvrcpServiceReady()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextGroup()Z
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcp13NextGroup()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 553
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcpPause()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public play()Z
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcpPlay()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public previousGroup()Z
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcp13PreviousGroup()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected registerCallback(Lcom/nforetek/bt/aidl/UiCommand;)V
    .locals 2
    .param p1, "btService"    # Lcom/nforetek/bt/aidl/UiCommand;

    .line 24
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->mCallbackAvrcp:Lcom/nforetek/bt/aidl/UiCallbackAvrcp;

    invoke-interface {p1, v0}, Lcom/nforetek/bt/aidl/UiCommand;->registerAvrcpCallback(Lcom/nforetek/bt/aidl/UiCallbackAvrcp;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AvrcpControl"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 29
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public registerEventWatcher(BJ)Z
    .locals 1
    .param p1, "eventId"    # B
    .param p2, "interval"    # J

    .line 522
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1, p2, p3}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcpRegisterEventWatcher(BJ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 529
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected release()V
    .locals 2

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget-object v1, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->mCallbackAvrcp:Lcom/nforetek/bt/aidl/UiCallbackAvrcp;

    invoke-interface {v0, v1}, Lcom/nforetek/bt/aidl/UiCommand;->unregisterAvrcpCallback(Lcom/nforetek/bt/aidl/UiCallbackAvrcp;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public requestPlaySelectedItem(BIJ)Z
    .locals 1
    .param p1, "scopeId"    # B
    .param p2, "uidCounter"    # I
    .param p3, "uid"    # J

    .line 642
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcp14PlaySelectedItem(BIJ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 649
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public search(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 654
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcp14Search(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 661
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAbsoluteVolume(B)Z
    .locals 1
    .param p1, "volume"    # B

    .line 678
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcp14SetAbsoluteVolume(B)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 685
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAddressedPlayer(I)Z
    .locals 1
    .param p1, "playerId"    # I

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcp14SetAddressedPlayer(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 589
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setBrowsedPlayer(I)Z
    .locals 1
    .param p1, "playerId"    # I

    .line 594
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcp14SetBrowsedPlayer(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 601
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPlayerSettingValue(BB)Z
    .locals 1
    .param p1, "attributeId"    # B
    .param p2, "valueId"    # B

    .line 486
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1, p2}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcp13SetPlayerSettingValue(BB)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 493
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startFastForward()Z
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcpStartFastForward()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 397
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startRewind()Z
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcpStartRewind()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 421
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stop()Z
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcpStop()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopFastForward()Z
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcpStopFastForward()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 409
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopRewind()Z
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcpStopRewind()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 433
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterEventWatcher(B)Z
    .locals 1
    .param p1, "eventId"    # B

    .line 534
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcpUnregisterEventWatcher(B)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 541
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public volumeDown()Z
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcpVolumeDown()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public volumeUp()Z
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqAvrcpVolumeUp()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 375
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
