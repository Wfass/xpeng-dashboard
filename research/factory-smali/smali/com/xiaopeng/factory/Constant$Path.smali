.class public Lcom/xiaopeng/factory/Constant$Path;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Path"
.end annotation


# static fields
.field public static final PATH_AUDIO_EXTERNAL_PA:Ljava/lang/String; = "/sys/audio/tda75610_diag"

.field public static final PATH_DSP_VOLUME:Ljava/lang/String; = "/sys/devices/virtual/nxpradio/nxpradio/volumeprimary"

.field public static final PATH_MEM_INFO:Ljava/lang/String; = "/proc/meminfo"

.field public static final PATH_PCBA_SERIALNO:Ljava/lang/String; = "/mnt/vendor/private/factory/pcba_serialno"

.field public static final PATH_ROM_DISK_MODEL:Ljava/lang/String; = "/sys/class/scsi_disk/0:0:0:0/device/model"

.field public static final PATH_ROM_DISK_SIZE:Ljava/lang/String; = "/sys/class/scsi_disk/0:0:0:0/device/block/sda/size"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
