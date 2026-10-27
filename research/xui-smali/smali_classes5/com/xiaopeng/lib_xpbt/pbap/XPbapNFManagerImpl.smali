.class public Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;
.super Lcom/xiaopeng/lib_xpbt/BaseManager;
.source "XPbapNFManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/pbap/XPbapManager;


# instance fields
.field mBtBoxesUtil:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

.field private mCurrentStorage:I

.field private mHfpConnectedAddress:Ljava/lang/String;

.field private final mPBAPControl:Lcom/xiaopeng/btservice/pbap/PBAPControl;

.field private final mProperty:I

.field private final timeoutRunnable:Ljava/lang/Runnable;

.field xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xPbapListener"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/BaseManager;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mCurrentStorage:I

    .line 24
    const v0, 0x101a7

    iput v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mProperty:I

    .line 190
    new-instance v0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$2;-><init>(Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;)V

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->timeoutRunnable:Ljava/lang/Runnable;

    .line 34
    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    .line 35
    invoke-static {p1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mBtBoxesUtil:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mBtBoxesUtil:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    new-instance v1, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$1;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$1;-><init>(Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getPBAPControl(Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;)Lcom/xiaopeng/btservice/pbap/PBAPControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mPBAPControl:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mBtBoxesUtil:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mPBAPControl:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->registerCallback(Lcom/xiaopeng/btservice/base/AbsControl;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

    .line 17
    iget v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mCurrentStorage:I

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->reqDownload()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mHfpConnectedAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mHfpConnectedAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;)Lcom/xiaopeng/btservice/pbap/PBAPControl;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mPBAPControl:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    return-object v0
.end method

.method private coverState(I)I
    .locals 3
    .param p1, "nfState"    # I

    .line 112
    const/16 v0, 0x6e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x78

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8c

    if-eq p1, v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "state":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coverState error state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v0    # "state":I
    :cond_0
    const/4 v0, 0x2

    .line 115
    .restart local v0    # "state":I
    goto :goto_0

    .line 123
    .end local v0    # "state":I
    :cond_1
    const/4 v0, 0x3

    .line 124
    .restart local v0    # "state":I
    goto :goto_0

    .line 117
    .end local v0    # "state":I
    :cond_2
    const/4 v0, 0x1

    .line 118
    .restart local v0    # "state":I
    goto :goto_0

    .line 120
    .end local v0    # "state":I
    :cond_3
    const/4 v0, 0x0

    .line 121
    .restart local v0    # "state":I
    nop

    .line 130
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coverState nfState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 131
    return v0
.end method

.method private reqDownload()Z
    .locals 5

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mPBAPControl:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->setPbapDownloadNotify(I)Z

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "result":Z
    iget v2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mCurrentStorage:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mCurrentStorage:I

    .line 138
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mPBAPControl:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-virtual {v1}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->getPbapConnectionState()I

    move-result v1

    .line 139
    .local v1, "state":I
    const/16 v2, 0x6e

    if-ne v1, v2, :cond_0

    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, "storage":I
    iget v3, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mCurrentStorage:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 155
    :pswitch_0
    const/4 v2, 0x1

    .line 156
    goto :goto_0

    .line 152
    :pswitch_1
    const/4 v2, 0x2

    .line 153
    goto :goto_0

    .line 149
    :pswitch_2
    const/4 v2, 0x7

    .line 150
    goto :goto_0

    .line 146
    :pswitch_3
    const/4 v2, 0x6

    .line 147
    goto :goto_0

    .line 143
    :pswitch_4
    const/4 v2, 0x5

    .line 144
    nop

    .line 160
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentStorage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mCurrentStorage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, v2}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->reqPbapDownload(I)Z

    move-result v0

    .line 162
    .end local v2    # "storage":I
    goto :goto_1

    .line 164
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloading, reset timeout state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;->startTimeOut(Ljava/lang/Runnable;)V

    .line 167
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private reqPbapDownload(I)Z
    .locals 6
    .param p1, "storage"    # I

    .line 171
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 172
    const-string v2, "storage = 0"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 173
    const-string v2, ""

    iput-object v2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mHfpConnectedAddress:Ljava/lang/String;

    .line 174
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mPBAPControl:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    const-string v4, "lib_xpbt"

    invoke-virtual {v3, v4}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->getHfpConnectedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;->onPbapSyncFinish(Ljava/lang/String;II)V

    .line 175
    return v1

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mPBAPControl:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mPBAPControl:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    const-string v4, "lib_xpbt"

    invoke-virtual {v3, v4}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->getHfpConnectedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x101a7

    invoke-virtual {v2, v3, p1, v4}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->reqPbapDownload(Ljava/lang/String;II)Z

    move-result v2

    .line 178
    .local v2, "result":Z
    if-eqz v2, :cond_1

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;->startTimeOut(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 183
    :cond_1
    const-string v3, ""

    iput-object v3, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mHfpConnectedAddress:Ljava/lang/String;

    .line 184
    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    iget-object v4, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mPBAPControl:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    const-string v5, "lib_xpbt"

    invoke-virtual {v4, v5}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->getHfpConnectedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, v1}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;->onPbapSyncFinish(Ljava/lang/String;II)V

    .line 186
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 187
    return v2
.end method


# virtual methods
.method public getPbapConnectionState()I
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mPBAPControl:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->getPbapConnectionState()I

    move-result v0

    .line 105
    .local v0, "state":I
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->coverState(I)I

    move-result v1

    .line 106
    .local v1, "coverState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " coverState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 107
    return v1
.end method

.method public reqPbapDownload(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->getPbapConnectionState()I

    move-result v0

    .line 90
    .local v0, "state":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 91
    iput v1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mCurrentStorage:I

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mHfpConnectedAddress:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->reqDownload()Z

    move-result v1

    .local v1, "result":Z
    goto :goto_0

    .line 95
    .end local v1    # "result":Z
    :cond_0
    const-string v2, ""

    iput-object v2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->mHfpConnectedAddress:Ljava/lang/String;

    .line 96
    nop

    .line 98
    .restart local v1    # "result":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 99
    return v1
.end method
