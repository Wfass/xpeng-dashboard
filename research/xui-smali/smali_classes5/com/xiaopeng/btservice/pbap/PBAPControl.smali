.class public Lcom/xiaopeng/btservice/pbap/PBAPControl;
.super Lcom/xiaopeng/btservice/base/AbsControl;
.source "PBAPControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PBAPControl"


# instance fields
.field private mCallback:Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

.field private mCallbackPbap:Lcom/nforetek/bt/aidl/UiCallbackPbap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/btservice/base/AbsControl;-><init>()V

    .line 46
    new-instance v0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;-><init>(Lcom/xiaopeng/btservice/pbap/PBAPControl;)V

    iput-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->mCallbackPbap:Lcom/nforetek/bt/aidl/UiCallbackPbap;

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->mCallback:Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/btservice/pbap/PBAPControl;

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->mCallback:Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    return-object v0
.end method


# virtual methods
.method public getPbapConnectionState()I
    .locals 2

    .line 134
    const-string v0, "PBAPControl"

    const-string v1, "getPbapConnectionState"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->getPbapConnectionState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isPbapDownloading()Z
    .locals 2

    .line 174
    const-string v0, "PBAPControl"

    const-string v1, "isPbapDownloading"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->isPbapDownloading()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected registerCallback(Lcom/nforetek/bt/aidl/UiCommand;)V
    .locals 2
    .param p1, "btService"    # Lcom/nforetek/bt/aidl/UiCommand;

    .line 27
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->mCallbackPbap:Lcom/nforetek/bt/aidl/UiCallbackPbap;

    invoke-interface {p1, v0}, Lcom/nforetek/bt/aidl/UiCommand;->registerPbapCallback(Lcom/nforetek/bt/aidl/UiCallbackPbap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PBAPControl"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected release()V
    .locals 2

    .line 36
    const-string v0, "PBAPControl"

    const-string v1, "release"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget-object v1, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->mCallbackPbap:Lcom/nforetek/bt/aidl/UiCallbackPbap;

    invoke-interface {v0, v1}, Lcom/nforetek/bt/aidl/UiCommand;->unregisterPbapCallback(Lcom/nforetek/bt/aidl/UiCallbackPbap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public reqPbapDownload(Ljava/lang/String;II)Z
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "storage"    # I
    .param p3, "property"    # I

    .line 146
    const-string v0, "PBAPControl"

    const-string v1, "reqPbapDownload"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_1

    .line 149
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1, p2, p3}, Lcom/nforetek/bt/aidl/UiCommand;->reqPbapDownload(Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    const/4 v5, 0x0

    const/16 v6, 0x32

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/nforetek/bt/aidl/UiCommand;->reqPbapDownloadRange(Ljava/lang/String;IIII)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 154
    :goto_0
    nop

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public reqPbapDownloadInterrupt(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 162
    const-string v0, "PBAPControl"

    const-string v1, "reqPbapDownloadInterrupt"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqPbapDownloadInterrupt(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPbapDownloadNotify(I)Z
    .locals 3
    .param p1, "frequency"    # I

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 122
    const-string v0, "PBAPControl"

    const-string v2, "nForeService == null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v1

    .line 126
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->setPbapDownloadNotify(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method
