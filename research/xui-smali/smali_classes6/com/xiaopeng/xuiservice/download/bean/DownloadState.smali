.class public Lcom/xiaopeng/xuiservice/download/bean/DownloadState;
.super Ljava/lang/Object;
.source "DownloadState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/download/bean/DownloadState$State;
    }
.end annotation


# static fields
.field public static final TYPE_CANCEL:I = 0x5

.field public static final TYPE_COMPLETED:I = 0x3

.field public static final TYPE_ERROR:I = 0x6

.field public static final TYPE_IN_PROGRESS:I = 0x2

.field public static final TYPE_PAUSE:I = 0x4

.field public static final TYPE_START:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
