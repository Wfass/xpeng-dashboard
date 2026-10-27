.class public Lcom/xiaopeng/libconfig/ipc/event/OTA2ManyEvent;
.super Ljava/lang/Object;
.source "OTA2ManyEvent.java"


# static fields
.field public static final STATE_DOWNLOADING:I = 0x1

.field public static final STATE_DOWNLOAD_FAIL:I = 0x4

.field public static final STATE_DOWNLOAD_FINISHED:I = 0x2

.field public static final STATE_DOWNLOAD_STOP:I = 0x3

.field public static final STATE_FULL_CHECKING:I = 0x9

.field public static final STATE_FULL_CHECK_FAIL:I = 0x8

.field public static final STATE_HAS_NEW_VERSION:I = 0x5

.field public static final STATE_NEWEST:I = 0x0

.field public static final STATE_PRE_CHECKING:I = 0x6

.field public static final STATE_PRE_CHECK_FAIL:I = 0x7

.field public static final STATE_SERVER_CHECKING:I = 0xc

.field public static final STATE_UPGRADE_FAIL:I = 0xb

.field public static final STATE_UPGRADE_MCU_READY:I = 0xf

.field public static final STATE_UPGRADE_REBOOT:I = 0xa

.field public static final STATE_UPGRADE_REBOOT_CHECK_FAIL:I = 0xd

.field public static final STATE_UPGRADE_TIP:I = 0xe


# instance fields
.field private detail:Ljava/lang/String;

.field private progress:F

.field private show:Z

.field private state:I

.field private updateFlag:Z

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/event/OTA2ManyEvent;->state:I

    .line 57
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/event/OTA2ManyEvent;->state:I

    .line 61
    iput p2, p0, Lcom/xiaopeng/libconfig/ipc/event/OTA2ManyEvent;->progress:F

    .line 62
    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/event/OTA2ManyEvent;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/event/OTA2ManyEvent;->progress:F

    return v0
.end method

.method public getState()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/event/OTA2ManyEvent;->state:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/event/OTA2ManyEvent;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isShow()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/xiaopeng/libconfig/ipc/event/OTA2ManyEvent;->show:Z

    return v0
.end method

.method public isUpdateFlag()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/xiaopeng/libconfig/ipc/event/OTA2ManyEvent;->updateFlag:Z

    return v0
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/event/OTA2ManyEvent;->detail:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/event/OTA2ManyEvent;->progress:F

    .line 78
    return-void
.end method

.method public setShow(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/xiaopeng/libconfig/ipc/event/OTA2ManyEvent;->show:Z

    .line 94
    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/event/OTA2ManyEvent;->state:I

    .line 70
    return-void
.end method

.method public setUpdateFlag(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/xiaopeng/libconfig/ipc/event/OTA2ManyEvent;->updateFlag:Z

    .line 86
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/event/OTA2ManyEvent;->version:Ljava/lang/String;

    .line 102
    return-void
.end method
