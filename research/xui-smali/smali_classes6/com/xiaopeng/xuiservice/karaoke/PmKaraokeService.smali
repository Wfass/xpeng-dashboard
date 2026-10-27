.class public Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;
.super Ljava/lang/Object;
.source "PmKaraokeService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;
    }
.end annotation


# static fields
.field private static final ACTION_ASR_CONFIRMED:Ljava/lang/String; = "com.xiaopeng.intent.action.ASR_CONFIRMED"

.field private static final ACTION_LOOSTONE_KEY:Ljava/lang/String; = "com.loostone.puremic.dongle_key_changed"

.field public static final DBG:Z = true

.field private static final EXTRA_LOOSTONE_VOICEKEY:Ljava/lang/String; = "xiaopeng.keyAction.loostone.extra"

.field private static final KARAOKE_EVENT:I = 0x1

.field private static final REC_MODE_MIC:I = 0x1

.field private static final REC_MODE_MIX:I = 0x2

.field private static RecMode:I = 0x0

.field private static RecOpenFlag:I = 0x0

.field public static final TAG:Ljava/lang/String; = "PmKaraokeService"

.field private static created:Z

.field private static key_on:Z

.field private static mickey_use_type:I

.field private static pmHandler:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;

.field private static volatile pmKaraokeService:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

.field private static final supportMicKey:Z


# instance fields
.field private final LOOSTONE_VOICEKEY_ACTIOIN:Ljava/lang/String;

.field private final SURROUND_EFFECT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private deviceSerialNumber:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

.field private mDonglelistener:Lcom/loostone/puremic/controller/audio/listener/IDongleListener;

.field private mMicSDKCallBack:Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final trackAvailSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const-string v0, "persist.audio.record.mickey.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->supportMicKey:Z

    .line 66
    const/4 v0, 0x1

    sput v0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->RecMode:I

    .line 67
    sput-boolean v1, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->key_on:Z

    .line 68
    const/4 v0, 0x2

    sput v0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mickey_use_type:I

    .line 69
    sput v1, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->RecOpenFlag:I

    .line 70
    sput-boolean v1, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->created:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string/jumbo v0, "xiaopeng.keyAction.loostone_Voice"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->LOOSTONE_VOICEKEY_ACTIOIN:Ljava/lang/String;

    .line 64
    const/16 v0, 0x4b00

    iput v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->trackAvailSize:I

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->deviceSerialNumber:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->SURROUND_EFFECT:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$1;-><init>(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    const-string v0, "PmKaraokeService"

    const-string v1, "PmKaraokeService init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-direct {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    sget-boolean v1, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->supportMicKey:Z

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "com.loostone.puremic.dongle_key_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "com.xiaopeng.intent.action.ASR_CONFIRMED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->sendLoostoneKey(ZZ)V

    .line 90
    new-instance v1, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;-><init>(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->pmHandler:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;

    .line 91
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->supportMicKey:Z

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 44
    sget v0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mickey_use_type:I

    return v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mMicSDKCallBack:Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;
    .param p1, "x1"    # Z

    .line 44
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->sendLoostoneKey(Z)V

    return-void
.end method

.method static synthetic access$400()Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;
    .locals 1

    .line 44
    sget-object v0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->pmHandler:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->checkLoostoneUsbIn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->created:Z

    return v0
.end method

.method private checkLoostoneUsbIn()Z
    .locals 8

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mContext:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 198
    .local v0, "usbManager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    .line 199
    .local v1, "deviceList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 200
    .local v2, "deviceIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/usb/UsbDevice;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 202
    .local v3, "device":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "name":Ljava/lang/String;
    const-string v5, "PmKaraokeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDeviceList: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    if-eqz v4, :cond_0

    const-string v5, "Loostone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->deviceSerialNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    const/4 v5, 0x1

    return v5

    .line 208
    .end local v3    # "device":Landroid/hardware/usb/UsbDevice;
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 211
    .end local v0    # "usbManager":Landroid/hardware/usb/UsbManager;
    .end local v1    # "deviceList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    .end local v2    # "deviceIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/usb/UsbDevice;>;"
    :cond_1
    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PmKaraokeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLoostoneUsbIn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;
    .locals 2

    .line 94
    sget-object v0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->pmKaraokeService:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    if-nez v0, :cond_1

    .line 95
    const-class v0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->pmKaraokeService:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->pmKaraokeService:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    .line 99
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 101
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->pmKaraokeService:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    return-object v0
.end method

.method public static synthetic lambda$create$0(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)V
    .locals 5

    .line 249
    :try_start_0
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mController:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->init(Landroid/content/Context;)I

    .line 251
    const-string v0, "PmKaraokeService"

    const-string v1, "init finished"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->getToken()I

    move-result v0

    .line 253
    .local v0, "mUnSignedToken":I
    const-string v1, "PmKaraokeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after GetToken : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAJ9FN1w8gfXSBP1/\rfWtC4gicvB7t+XZ20Qn3eBOaMT1zYf6QtUQ1aAQKIlVDmyidA1/BOgwp07Rvc6V/\rimAEp4tOGtrP8vedgliVuqMcLeNONSdlzSW66alcayjHrb4+5IYGV9vzMk7qGLHg\rZX++HJBUKkb1piqATvPJNFlhf1vJAgMBAAECgYA736xhG0oL3EkN9yhx8zG/5RP/\rWJzoQOByq7pTPCr4m/Ch30qVerJAmoKvpPumN+h1zdEBk5PHiAJkm96sG/PTndEf\rkZrAJ2hwSBqptcABYk6ED70gRTQ1S53tyQXIOSjRBcugY/21qeswS3nMyq3xDEPK\rXpdyKPeaTyuK86AEkQJBAM1M7p1lfzEKjNw17SDMLnca/8pBcA0EEcyvtaQpRvaL\rn61eQQnnPdpvHamkRBcOvgCAkfwa1uboru0QdXii/gUCQQDGmkP+KJPX9JVCrbRt\r7wKyIemyNM+J6y1ZBZ2bVCf9jacCQaSkIWnIR1S9UM+1CFE30So2CA0CfCDmQy+y\r7A31AkB8cGFB7j+GTkrLP7SX6KtRboAU7E0q1oijdO24r3xf/Imw4Cy0AAIx4KAu\rL29GOp1YWJYkJXCVTfyZnRxXHxSxAkEAvO0zkSv4uI8rDmtAIPQllF8+eRBT/deD\rJBR7ga/k+wctwK/Bd4Fxp9xzeETP0l8/I+IOTagK+Dos8d8oGQUFoQJBAI4Nwpfo\rMFaLJXGY9ok45wXrcqkJgM+SN6i8hQeujXESVHYatAIL/1DgLi+u46EFD69fw0w+\rc7o0HLlMsYPAzJw=\r"

    invoke-static {v1, v2}, Lcom/loostone/puremic/RSAUtils;->SignData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->setSignedToken(Ljava/lang/String;)I

    move-result v1

    .line 255
    .local v1, "ret":I
    const-string v2, "PmKaraokeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSignToken:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mDonglelistener:Lcom/loostone/puremic/controller/audio/listener/IDongleListener;

    invoke-virtual {v2, v3}, Lcom/loostone/puremic/controller/audio/PMAudioController;->setDongleListener(Lcom/loostone/puremic/controller/audio/listener/IDongleListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v0    # "mUnSignedToken":I
    .end local v1    # "ret":I
    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PmKaraokeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WMM_Create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private sendLoostoneKey(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->sendLoostoneKey(ZZ)V

    .line 183
    return-void
.end method

.method private sendLoostoneKey(ZZ)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "forceAction"    # Z

    .line 186
    sget-boolean v0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->supportMicKey:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->key_on:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_2

    .line 187
    :cond_0
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendLoostoneKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "xiaopeng.keyAction.loostone_Voice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "LoostoneKey":Landroid/content/Intent;
    const-string/jumbo v1, "xiaopeng.keyAction.loostone.extra"

    if-eqz p1, :cond_1

    const-string v2, "start"

    goto :goto_0

    :cond_1
    const-string v2, "stop"

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 191
    sput-boolean p1, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->key_on:Z

    .line 193
    .end local v0    # "LoostoneKey":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private setBypassStatus(Z)I
    .locals 3
    .param p1, "status"    # Z

    .line 557
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBypassStatus() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, "ret":I
    xor-int/lit8 v1, p1, 0x1

    .line 560
    .local v1, "cmd":I
    const/4 v2, 0x5

    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->setVolume(II)I

    move-result v0

    .line 561
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->setDolbyAtomsSwitchStatus(I)V

    .line 562
    return v0
.end method

.method private setDolbyAtomsSwitchStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .line 511
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDolbyAtomsSwitchStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 514
    .local v0, "cmd":I
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AfMethod=triggerPlayMusic;uid=999;channelConfig=185919;cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "parameters":Ljava/lang/String;
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v0    # "cmd":I
    .end local v1    # "parameters":Ljava/lang/String;
    goto :goto_1

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PmKaraokeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDolbyAtomsSwitchStatus exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private switchVocalRemove(Z)V
    .locals 3
    .param p1, "remove"    # Z

    .line 583
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchVocalRemove remove="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0, p1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->switchVocalRemove(Z)V

    .line 585
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;ILjava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "midware"    # Ljava/lang/String;

    .line 217
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create() pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " midware="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->created:Z

    .line 219
    new-instance v0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$2;-><init>(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mDonglelistener:Lcom/loostone/puremic/controller/audio/listener/IDongleListener;

    .line 247
    new-instance v0, Lcom/xiaopeng/xuiservice/karaoke/-$$Lambda$PmKaraokeService$P85IuSenY51LedSVLze5oAHroXY;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/karaoke/-$$Lambda$PmKaraokeService$P85IuSenY51LedSVLze5oAHroXY;-><init>(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()I
    .locals 2

    .line 267
    const-string v0, "PmKaraokeService"

    const-string v1, "destroy() "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->created:Z

    .line 269
    return v0
.end method

.method public enableCarMicrophone(ZI)I
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "position"    # I

    .line 588
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCarMicrophone enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const/4 v0, 0x0

    .line 591
    .local v0, "ret":I
    return v0
.end method

.method public enableVocalRemove(ZI)I
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "level"    # I

    .line 609
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableVocalRemove enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const/4 v0, 0x0

    .line 612
    .local v0, "ret":I
    return v0
.end method

.method public enableVocalRemoveDynamic(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 630
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableVocalRemoveDynamic enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method public getBgmVolume()I
    .locals 2

    .line 647
    const-string v0, "PmKaraokeService"

    const-string v1, "getBgmVolume"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const/4 v0, 0x0

    .line 650
    .local v0, "ret":I
    return v0
.end method

.method public getCarMicrophonePosition()I
    .locals 2

    .line 602
    const-string v0, "PmKaraokeService"

    const-string v1, "getCarMicrophonePosition"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const/4 v0, 0x0

    .line 605
    .local v0, "ret":I
    return v0
.end method

.method public getEcho()I
    .locals 2

    .line 340
    const-string v0, "PmKaraokeService"

    const-string v1, "getEcho()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->getVolume(I)I

    move-result v0

    return v0
.end method

.method public getHandShakeStatus()I
    .locals 2

    .line 299
    const-string v0, "PmKaraokeService"

    const-string v1, "getHandShakeStatus "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->getHandShakeStatus()I

    move-result v0

    return v0
.end method

.method public getMicPowerStatus()I
    .locals 2

    .line 311
    const-string v0, "PmKaraokeService"

    const-string v1, "getMicPowerStatus() "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->getMicPowerStatus()I

    move-result v0

    return v0
.end method

.method public getMicStatus()I
    .locals 2

    .line 305
    const-string v0, "PmKaraokeService"

    const-string v1, "getMicStatus() "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->getMicStatus()I

    move-result v0

    return v0
.end method

.method public getToken()I
    .locals 2

    .line 287
    const-string v0, "PmKaraokeService"

    const-string v1, "getToken()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->getToken()I

    move-result v0

    return v0
.end method

.method public getVocalRemoveLevel()I
    .locals 2

    .line 623
    const-string v0, "PmKaraokeService"

    const-string v1, "getVocalRemoveLevel"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const/4 v0, 0x0

    .line 626
    .local v0, "ret":I
    return v0
.end method

.method public getVolume(I)I
    .locals 3
    .param p1, "type"    # I

    .line 330
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVolume() type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0, p1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->getVolume(I)I

    move-result v0

    return v0
.end method

.method public isCarMicrophoneEnable()Z
    .locals 2

    .line 595
    const-string v0, "PmKaraokeService"

    const-string v1, "isCarMicrophoneEnable"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const/4 v0, 0x0

    .line 598
    .local v0, "ret":Z
    return v0
.end method

.method public isVocalRemoveDynamicEnable()Z
    .locals 2

    .line 635
    const-string v0, "PmKaraokeService"

    const-string v1, "isVocalRemoveDynamicEnable"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const/4 v0, 0x0

    .line 638
    .local v0, "ret":Z
    return v0
.end method

.method public isVocalRemoveEnable()Z
    .locals 2

    .line 616
    const-string v0, "PmKaraokeService"

    const-string v1, "isVocalRemoveEnable"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const/4 v0, 0x0

    .line 619
    .local v0, "ret":Z
    return v0
.end method

.method public micCreate(III)I
    .locals 3
    .param p1, "sampleRate"    # I
    .param p2, "channel"    # I
    .param p3, "bufSize"    # I

    .line 483
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "micCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/loostone/puremic/controller/audio/PMAudioController;->micCreate(III)I

    move-result v0

    return v0
.end method

.method public micDestroy()I
    .locals 2

    .line 494
    const-string v0, "PmKaraokeService"

    const-string v1, "micDestroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->micDestroy()I

    move-result v0

    return v0
.end method

.method public micGetAvail()I
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->getMicDataAvail()I

    move-result v0

    return v0
.end method

.method public micGetMinBuf(II)I
    .locals 3
    .param p1, "sampleRate"    # I
    .param p2, "channel"    # I

    .line 477
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "micGetMinBuf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0, p1, p2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->recGetMinBuf(II)I

    move-result v0

    return v0
.end method

.method public micRead([BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .line 489
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0, p1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->readMic([B)I

    move-result v0

    return v0
.end method

.method public pause()I
    .locals 2

    .line 380
    const-string v0, "PmKaraokeService"

    const-string v1, "pause()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->setDolbyAtomsSwitchStatus(I)V

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->pause()I

    move-result v0

    return v0
.end method

.method public pausePlay()I
    .locals 2

    .line 412
    const-string v0, "PmKaraokeService"

    const-string v1, "pausePlay()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->setDolbyAtomsSwitchStatus(I)V

    .line 414
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->pausePlay()I

    move-result v0

    return v0
.end method

.method public read([BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0, p1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->readRec([B)I

    move-result v0

    return v0
.end method

.method public recCreate(III)I
    .locals 3
    .param p1, "sampleRate"    # I
    .param p2, "channel"    # I
    .param p3, "bufSize"    # I

    .line 438
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recCreate() sampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bufSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/loostone/puremic/controller/audio/PMAudioController;->recCreate(III)I

    move-result v0

    return v0
.end method

.method public recDestroy()I
    .locals 2

    .line 463
    const-string v0, "PmKaraokeService"

    const-string v1, "recDestroy()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->setDolbyAtomsSwitchStatus(I)V

    .line 465
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->recDestroy()I

    .line 466
    return v0
.end method

.method public recGetAvail()I
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->getRecDataAvail()I

    move-result v0

    return v0
.end method

.method public recGetMinBuf(II)I
    .locals 3
    .param p1, "sampleRate"    # I
    .param p2, "channel"    # I

    .line 432
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recGetMinBuf() sampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0, p1, p2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->recGetMinBuf(II)I

    move-result v0

    return v0
.end method

.method public recStart()I
    .locals 2

    .line 393
    const-string v0, "PmKaraokeService"

    const-string v1, "recStart()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public recStop()I
    .locals 2

    .line 387
    const-string v0, "PmKaraokeService"

    const-string v1, "recStop()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public registCallback(Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)I
    .locals 2
    .param p1, "callBackFunc"    # Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    .line 274
    const-string v0, "PmKaraokeService"

    const-string v1, "registCallback()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mMicSDKCallBack:Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public releaseKaraokeResource(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 575
    const-string v0, "PmKaraokeService"

    const-string v1, "releaseKaraokeResource() "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, "ret":I
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->switchVocalRemove(Z)V

    .line 578
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->setBypassStatus(Z)I

    .line 579
    return v0
.end method

.method public requestKaraokeResource(Ljava/lang/String;Z)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isAudioStackEmpty"    # Z

    .line 566
    const-string v0, "PmKaraokeService"

    const-string v1, "requestKaraokeResource() "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "ret":I
    if-nez p2, :cond_0

    .line 569
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->setBypassStatus(Z)I

    .line 571
    :cond_0
    return v0
.end method

.method public resume()I
    .locals 2

    .line 399
    const-string v0, "PmKaraokeService"

    const-string v1, "resume()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    sget v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->KARAOKE_MIC_RESTRICTION:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->switchVocalRemove(Z)V

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->resume()I

    move-result v0

    return v0
.end method

.method public resumePlay()I
    .locals 2

    .line 406
    const-string v0, "PmKaraokeService"

    const-string v1, "resumePlay()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->resumePlay()I

    move-result v0

    return v0
.end method

.method public saveRec(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "mode"    # I
    .param p2, "micPath"    # Ljava/lang/String;
    .param p3, "mixPath"    # Ljava/lang/String;

    .line 419
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveRec() mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " micPath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mixPath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public setBgmVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .line 642
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBgmVolume volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    return-void
.end method

.method public setBypassFilter(IZZZ)I
    .locals 4
    .param p1, "audioSatus"    # I
    .param p2, "isKaraokeApp"    # Z
    .param p3, "isResumed"    # Z
    .param p4, "isAudioStackEmpty"    # Z

    .line 539
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBypassFilter() audioSatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isKaraokeApp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isResumed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isAudioStackEmpty:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",soundeffect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->getVolume(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->SURROUND_EFFECT:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->getVolume(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 543
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 544
    xor-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->setBypassStatus(Z)I

    goto :goto_0

    .line 546
    :cond_0
    if-nez p3, :cond_1

    .line 547
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->setBypassStatus(Z)I

    goto :goto_0

    .line 548
    :cond_1
    if-nez p2, :cond_2

    if-eqz p4, :cond_3

    .line 549
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->setBypassStatus(Z)I

    .line 553
    :cond_3
    :goto_0
    return v0
.end method

.method public setCommonData(ILjava/lang/String;)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 505
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCommonData() type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0, p1, p2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->setCommonData(ILjava/lang/String;)I

    move-result v0

    .line 507
    .local v0, "ret":I
    return v0
.end method

.method public setEcho(I)I
    .locals 3
    .param p1, "echo"    # I

    .line 335
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEcho() echo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->setVolume(II)I

    move-result v0

    return v0
.end method

.method public setOutPutPath(ZLjava/lang/String;)V
    .locals 3
    .param p1, "inCar"    # Z
    .param p2, "productId"    # Ljava/lang/String;

    .line 500
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WMM_SetOutPutPath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0, p1, p2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->switchPcmCardDevice(ZLjava/lang/String;)V

    .line 502
    return-void
.end method

.method public setRecMode(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 451
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecMode() mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    sput p1, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->RecMode:I

    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public setSignedToken(Ljava/lang/String;)I
    .locals 2
    .param p1, "sToken"    # Ljava/lang/String;

    .line 293
    const-string v0, "PmKaraokeService"

    const-string v1, "setSignedToken()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0, p1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->setSignedToken(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setVolume(II)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "vol"    # I

    .line 317
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setVolume() type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " vol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->SURROUND_EFFECT:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->setBypassStatus(Z)I

    goto :goto_0

    .line 322
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->setBypassStatus(Z)I

    .line 325
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0, p1, p2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->setVolume(II)I

    move-result v0

    return v0
.end method

.method public stopSaveRec()I
    .locals 2

    .line 425
    const-string v0, "PmKaraokeService"

    const-string v1, "stopSaveRec()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->RecOpenFlag:I

    .line 427
    sget v0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->RecOpenFlag:I

    return v0
.end method

.method public trackCreate(III)I
    .locals 3
    .param p1, "sampleRate"    # I
    .param p2, "channel"    # I
    .param p3, "bufSize"    # I

    .line 352
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackCreate() sampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bufSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackCreate(III)I

    move-result v0

    return v0
.end method

.method public trackDestroy()I
    .locals 2

    .line 373
    const-string v0, "PmKaraokeService"

    const-string v1, "trackDestroy()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->setDolbyAtomsSwitchStatus(I)V

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackDestroy()I

    move-result v0

    return v0
.end method

.method public trackGetAvail()I
    .locals 1

    .line 368
    const/16 v0, 0x4b00

    return v0
.end method

.method public trackGetLatency()I
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackGetLatency()I

    move-result v0

    return v0
.end method

.method public trackGetMinBuf(II)I
    .locals 3
    .param p1, "sampleRate"    # I
    .param p2, "channel"    # I

    .line 346
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackGetMinBuf() sampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0, p1, p2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackGetMinBuf(II)I

    move-result v0

    return v0
.end method

.method public unRegistCallback()I
    .locals 2

    .line 281
    const-string v0, "PmKaraokeService"

    const-string v1, "unRegistCallback()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public write([BII)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "size"    # I

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->mController:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/loostone/puremic/controller/audio/PMAudioController;->write([BII)I

    move-result v0

    return v0
.end method
