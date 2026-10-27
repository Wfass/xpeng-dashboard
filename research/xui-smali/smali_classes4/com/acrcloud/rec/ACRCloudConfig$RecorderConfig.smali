.class public Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;
.super Ljava/lang/Object;
.source "ACRCloudConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acrcloud/rec/ACRCloudConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecorderConfig"
.end annotation


# instance fields
.field public card:I

.field public channels:I

.field public device:I

.field public initMaxRetryNum:I

.field public isVolumeCallback:Z

.field public periodSize:I

.field public periods:I

.field public rate:I

.field public recordOnceMaxTimeMS:I

.field public reservedRecordBufferMS:I

.field public source:I

.field final synthetic this$0:Lcom/acrcloud/rec/ACRCloudConfig;

.field public volumeCallbackIntervalMS:I


# direct methods
.method public constructor <init>(Lcom/acrcloud/rec/ACRCloudConfig;)V
    .locals 2
    .param p1, "this$0"    # Lcom/acrcloud/rec/ACRCloudConfig;

    .line 72
    iput-object p1, p0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->this$0:Lcom/acrcloud/rec/ACRCloudConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->channels:I

    .line 75
    const/16 v1, 0x1f40

    iput v1, p0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    .line 76
    iput v0, p0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->source:I

    .line 77
    const/16 v1, 0x64

    iput v1, p0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->volumeCallbackIntervalMS:I

    .line 78
    iput-boolean v0, p0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->isVolumeCallback:Z

    .line 79
    const/4 v0, 0x5

    iput v0, p0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->initMaxRetryNum:I

    .line 80
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->reservedRecordBufferMS:I

    .line 81
    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->recordOnceMaxTimeMS:I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->card:I

    .line 85
    iput v0, p0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->device:I

    .line 86
    const/16 v0, 0x400

    iput v0, p0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->periodSize:I

    .line 87
    const/4 v0, 0x4

    iput v0, p0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->periods:I

    return-void
.end method
