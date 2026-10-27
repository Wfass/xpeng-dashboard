.class public Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadStatus;
.super Ljava/lang/Object;
.source "ResourceDownloadStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadStatus$Status;
    }
.end annotation


# static fields
.field public static final RM_DOWNLOADING:I = 0x3

.field public static final RM_DOWNLOAD_CANCEL:I = 0x4

.field public static final RM_DOWNLOAD_FAILED:I = 0x7

.field public static final RM_DOWNLOAD_FINISHED:I = 0x6

.field public static final RM_DOWNLOAD_PAUSED:I = 0x5

.field public static final RM_DOWNLOAD_WAITING:I = 0x2

.field public static final RM_INSTALL_COMPLETE:I = 0x8

.field public static final RM_INSTALL_FAILED:I = 0x9

.field public static final RM_NOT_DOWNLOAD:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
