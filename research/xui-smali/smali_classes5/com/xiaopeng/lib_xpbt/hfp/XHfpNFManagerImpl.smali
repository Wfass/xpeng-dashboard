.class public Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;
.super Lcom/xiaopeng/lib_xpbt/BaseManager;
.source "XHfpNFManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/hfp/XHfpManager;


# instance fields
.field isNFConnectionReady:Z

.field isNFReady:Z

.field private final mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

.field private final mBoxes:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

.field private final mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

.field private final mPhoneControlCallback:Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

.field xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xHfpListener"    # Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/BaseManager;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->isNFReady:Z

    .line 34
    iput-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->isNFConnectionReady:Z

    .line 249
    new-instance v0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl$1;-><init>(Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;)V

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControlCallback:Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    .line 38
    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    .line 39
    invoke-static {}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getInstance()Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mBoxes:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mBoxes:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getBluetoothControl(Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;)Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mBoxes:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->registerCallback(Lcom/xiaopeng/btservice/base/AbsControl;)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mBoxes:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControlCallback:Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getPhoneControl(Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;)Lcom/xiaopeng/btservice/phone/PhoneControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

    iget-object v0, v0, Lcom/xiaopeng/btservice/phone/PhoneControl;->mConnection:Lcom/xiaopeng/btservice/base/AbstractConnection;

    new-instance v1, Lcom/xiaopeng/lib_xpbt/hfp/-$$Lambda$XHfpNFManagerImpl$jn5ay3mirZPZzH4u-jCc1Xz9P_Q;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib_xpbt/hfp/-$$Lambda$XHfpNFManagerImpl$jn5ay3mirZPZzH4u-jCc1Xz9P_Q;-><init>(Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/base/AbstractConnection;->registerConnecteCompletedCallback(Lcom/xiaopeng/btservice/base/AbstractConnection$ConnecteCompletedCallback;)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mBoxes:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->registerCallback(Lcom/xiaopeng/btservice/base/AbsControl;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->onReady()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;
    .param p1, "x1"    # I

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->coverState(I)I

    move-result v0

    return v0
.end method

.method private coverState(I)I
    .locals 3
    .param p1, "nfState"    # I

    .line 196
    const/16 v0, 0x6e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x78

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8c

    if-eq p1, v0, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 211
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

    .line 198
    .end local v0    # "state":I
    :cond_0
    const/4 v0, 0x2

    .line 199
    .restart local v0    # "state":I
    goto :goto_0

    .line 207
    .end local v0    # "state":I
    :cond_1
    const/4 v0, 0x3

    .line 208
    .restart local v0    # "state":I
    goto :goto_0

    .line 201
    .end local v0    # "state":I
    :cond_2
    const/4 v0, 0x1

    .line 202
    .restart local v0    # "state":I
    goto :goto_0

    .line 204
    .end local v0    # "state":I
    :cond_3
    const/4 v0, 0x0

    .line 205
    .restart local v0    # "state":I
    nop

    .line 214
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

    .line 215
    return v0
.end method

.method private formatSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 220
    const-string v0, ""

    .line 221
    .local v0, "dest":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->removeSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    :cond_0
    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;)V
    .locals 1

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->isNFConnectionReady:Z

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->onReady()V

    .line 47
    return-void
.end method

.method private onReady()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    if-nez v0, :cond_0

    .line 241
    const-string v0, "xa2dpSinkListener is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 242
    return-void

    .line 244
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->isNFReady:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->isNFConnectionReady:Z

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;->onReady()V

    .line 247
    :cond_1
    return-void
.end method

.method private removeSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 230
    const-string v0, ""

    .line 231
    .local v0, "dest":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    const-string v1, "\\s*|\t|\r|\n"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 233
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 234
    .local v2, "m":Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public acceptCall()Z
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->reqHfpAnswerCall(I)Z

    move-result v0

    .line 117
    .local v0, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->v(Ljava/lang/String;)V

    .line 118
    return v0
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 53
    if-nez p1, :cond_0

    .line 54
    const-string v0, "address is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    return v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->reqHfpConnect(Ljava/lang/String;)Z

    move-result v0

    .line 58
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 59
    return v0
.end method

.method public dialNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "number is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->formatSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "formatNumber":Ljava/lang/String;
    const-string v1, "formatNumber finish"

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->dialNumber(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 64
    if-nez p1, :cond_0

    .line 65
    const-string v0, "address is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->reqHfpDisconnect(Ljava/lang/String;)Z

    move-result v0

    .line 69
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 70
    return v0
.end method

.method public getAudioSource()I
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->getAudioConnectionState()I

    move-result v0

    .line 77
    .local v0, "state":I
    const/16 v1, 0x8c

    if-ne v0, v1, :cond_0

    .line 78
    const/4 v1, 0x3

    .local v1, "mAudioState":I
    goto :goto_0

    .line 80
    .end local v1    # "mAudioState":I
    :cond_0
    const/4 v1, 0x4

    .line 82
    .restart local v1    # "mAudioState":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAudioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 83
    return v1
.end method

.method public getHfpConnectedAddress()Ljava/lang/String;
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

    const-string v1, "lib_xpbt"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->getHfpConnectedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "address":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 175
    return-object v0
.end method

.method public getHfpConnectionState()I
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->getHfpConnectionState()I

    move-result v0

    .line 181
    .local v0, "state":I
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->coverState(I)I

    move-result v1

    .line 182
    .local v1, "coveredState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " coveredState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 183
    return v1
.end method

.method public getHfpConnectionState(Ljava/lang/String;)I
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->getHfpConnectionState()I

    move-result v0

    .line 189
    .local v0, "state":I
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->coverState(I)I

    move-result v1

    .line 190
    .local v1, "coveredState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " coveredState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 191
    return v1
.end method

.method public getRemotePhoneBattery()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->getHfpRemoteBatteryIndicator()I

    move-result v0

    return v0
.end method

.method public getRemotePhoneNumber()Ljava/lang/String;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->getHfpRemoteSubscriberNumber()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "remoteNumber":Ljava/lang/String;
    const-string v1, "finish"

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 158
    return-object v0
.end method

.method public isHfpInBandRingtoneSupport()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->isHfpInBandRingtoneSupport()Z

    move-result v0

    return v0
.end method

.method public reqHfpSendDtmf(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "key is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->reqHfpSendDtmf(Ljava/lang/String;)Z

    move-result v0

    .line 149
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reqHfpSendDtmf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 150
    return v0
.end method

.method public setAudioSource(I)Z
    .locals 2
    .param p1, "audioSource"    # I

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

    if-nez v0, :cond_0

    .line 89
    const-string v0, "mPhoneControl is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->v(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    return v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 93
    .local v0, "result":Z
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-virtual {v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->reqHfpAudioTransferToCarkit()Z

    move-result v0

    goto :goto_0

    .line 95
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-virtual {v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->reqHfpAudioTransferToPhone()Z

    move-result v0

    goto :goto_0

    .line 98
    :cond_2
    const-string v1, "audioSource is error"

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 100
    :goto_0
    return v0
.end method

.method public terminateCall(I)Z
    .locals 3
    .param p1, "callState"    # I

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "result":Z
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 125
    const-string v1, "reqHfpRejectIncomingCall"

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->v(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-virtual {v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->reqHfpRejectIncomingCall()Z

    move-result v0

    goto :goto_1

    .line 128
    :cond_0
    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callState is error. callState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_2
    :goto_0
    const-string v1, "reqHfpTerminateCurrentCall"

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->v(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->mPhoneControl:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-virtual {v1}, Lcom/xiaopeng/btservice/phone/PhoneControl;->reqHfpTerminateCurrentCall()Z

    move-result v0

    .line 138
    :goto_1
    return v0
.end method
