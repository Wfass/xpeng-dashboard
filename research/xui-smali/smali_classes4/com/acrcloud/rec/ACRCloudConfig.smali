.class public Lcom/acrcloud/rec/ACRCloudConfig;
.super Ljava/lang/Object;
.source "ACRCloudConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;,
        Lcom/acrcloud/rec/ACRCloudConfig$RadioType;,
        Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;,
        Lcom/acrcloud/rec/ACRCloudConfig$CreateFingerprintMode;,
        Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;,
        Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;,
        Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;
    }
.end annotation


# instance fields
.field public accessKey:Ljava/lang/String;

.field public accessKeyAuto:Ljava/lang/String;

.field public accessSecret:Ljava/lang/String;

.field public accessSecretAuto:Ljava/lang/String;

.field public acrcloudListener:Lcom/acrcloud/rec/IACRCloudListener;

.field public acrcloudPartnerDeviceInfo:Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;

.field public autoRecognizeIntervalMS:I

.field public context:Landroid/content/Context;

.field public createFingerprintMode:Lcom/acrcloud/rec/ACRCloudConfig$CreateFingerprintMode;

.field public host:Ljava/lang/String;

.field public hostAuto:Ljava/lang/String;

.field public imageHost:Ljava/lang/String;

.field public muteThreshold:I

.field public protocol:Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

.field public radioMetadataSearchHost:Ljava/lang/String;

.field public recMuteMaxTimeMS:I

.field public recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

.field public recorderType:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

.field public requestOnceTimeoutMS:I

.field public resampleType:Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;

.field public retryHttpRequestNum:I

.field public retryRecorderReadMaxNum:I

.field public sessionTotalTimeoutMS:I

.field public userRecorderEngine:Lcom/acrcloud/rec/record/IACRCloudRecorder;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudConfig;->host:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudConfig;->accessKey:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudConfig;->accessSecret:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudListener:Lcom/acrcloud/rec/IACRCloudListener;

    .line 18
    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudPartnerDeviceInfo:Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;

    .line 20
    const-string v1, ""

    iput-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->hostAuto:Ljava/lang/String;

    .line 21
    const-string v1, ""

    iput-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->accessKeyAuto:Ljava/lang/String;

    .line 22
    const-string v1, ""

    iput-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->accessSecretAuto:Ljava/lang/String;

    .line 24
    sget-object v1, Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;->HTTPS:Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    iput-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->protocol:Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    .line 26
    sget-object v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;->DEFAULT:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    iput-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->recorderType:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    .line 27
    new-instance v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    invoke-direct {v1, p0}, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;-><init>(Lcom/acrcloud/rec/ACRCloudConfig;)V

    iput-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    .line 28
    sget-object v1, Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;->SMALL:Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;

    iput-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->resampleType:Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;

    .line 30
    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudConfig;->context:Landroid/content/Context;

    .line 32
    const/16 v1, 0x1388

    iput v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->requestOnceTimeoutMS:I

    .line 33
    const/16 v1, 0x7530

    iput v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->sessionTotalTimeoutMS:I

    .line 34
    const/4 v1, 0x2

    iput v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->retryHttpRequestNum:I

    .line 35
    const/16 v1, 0x32

    iput v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->muteThreshold:I

    .line 36
    const/16 v1, 0x2710

    iput v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->recMuteMaxTimeMS:I

    .line 37
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->autoRecognizeIntervalMS:I

    .line 39
    const/16 v1, 0xf

    iput v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->retryRecorderReadMaxNum:I

    .line 41
    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudConfig;->userRecorderEngine:Lcom/acrcloud/rec/record/IACRCloudRecorder;

    .line 43
    sget-object v0, Lcom/acrcloud/rec/ACRCloudConfig$CreateFingerprintMode;->DEFAULT:Lcom/acrcloud/rec/ACRCloudConfig$CreateFingerprintMode;

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudConfig;->createFingerprintMode:Lcom/acrcloud/rec/ACRCloudConfig$CreateFingerprintMode;

    .line 45
    const-string v0, "cn-api.acrcloud.com"

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudConfig;->imageHost:Ljava/lang/String;

    .line 46
    const-string v0, "cn-api.acrcloud.com"

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudConfig;->radioMetadataSearchHost:Ljava/lang/String;

    .line 90
    const-string v0, "u1.2.0"

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudConfig;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/acrcloud/rec/ACRCloudConfig;
    .locals 2

    .line 93
    new-instance v0, Lcom/acrcloud/rec/ACRCloudConfig;

    invoke-direct {v0}, Lcom/acrcloud/rec/ACRCloudConfig;-><init>()V

    .line 94
    .local v0, "ret":Lcom/acrcloud/rec/ACRCloudConfig;
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->host:Ljava/lang/String;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->host:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->accessKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->accessKey:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->accessSecret:Ljava/lang/String;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->accessSecret:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudListener:Lcom/acrcloud/rec/IACRCloudListener;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudListener:Lcom/acrcloud/rec/IACRCloudListener;

    .line 99
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->hostAuto:Ljava/lang/String;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->hostAuto:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->accessKeyAuto:Ljava/lang/String;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->accessKeyAuto:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->accessSecretAuto:Ljava/lang/String;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->accessSecretAuto:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->protocol:Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->protocol:Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    .line 105
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->userRecorderEngine:Lcom/acrcloud/rec/record/IACRCloudRecorder;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->userRecorderEngine:Lcom/acrcloud/rec/record/IACRCloudRecorder;

    .line 107
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->recorderType:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->recorderType:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    .line 108
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    .line 109
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->resampleType:Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->resampleType:Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;

    .line 111
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->context:Landroid/content/Context;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->context:Landroid/content/Context;

    .line 113
    iget v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->requestOnceTimeoutMS:I

    iput v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->requestOnceTimeoutMS:I

    .line 114
    iget v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->sessionTotalTimeoutMS:I

    iput v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->sessionTotalTimeoutMS:I

    .line 115
    iget v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->retryHttpRequestNum:I

    iput v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->retryHttpRequestNum:I

    .line 116
    iget v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->muteThreshold:I

    iput v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->muteThreshold:I

    .line 117
    iget v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->recMuteMaxTimeMS:I

    iput v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->recMuteMaxTimeMS:I

    .line 118
    iget v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->autoRecognizeIntervalMS:I

    iput v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->autoRecognizeIntervalMS:I

    .line 119
    iget v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->retryRecorderReadMaxNum:I

    iput v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->retryRecorderReadMaxNum:I

    .line 121
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->imageHost:Ljava/lang/String;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->imageHost:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->radioMetadataSearchHost:Ljava/lang/String;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->radioMetadataSearchHost:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudPartnerDeviceInfo:Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudPartnerDeviceInfo:Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;

    .line 126
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->createFingerprintMode:Lcom/acrcloud/rec/ACRCloudConfig$CreateFingerprintMode;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->createFingerprintMode:Lcom/acrcloud/rec/ACRCloudConfig$CreateFingerprintMode;

    .line 128
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudConfig;->version:Ljava/lang/String;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudConfig;->version:Ljava/lang/String;

    .line 130
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/acrcloud/rec/ACRCloudConfig;->clone()Lcom/acrcloud/rec/ACRCloudConfig;

    move-result-object v0

    return-object v0
.end method
