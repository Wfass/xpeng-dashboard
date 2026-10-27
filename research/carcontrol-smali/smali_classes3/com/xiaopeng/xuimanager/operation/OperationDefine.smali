.class public Lcom/xiaopeng/xuimanager/operation/OperationDefine;
.super Ljava/lang/Object;
.source "OperationDefine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/operation/OperationDefine$SourceStatus;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_ERROR_DISK_NO_SPACE:I = 0x2

.field public static final DOWNLOAD_ERROR_NETWORK:I = 0x1

.field public static final DOWNLOAD_ERROR_NOT_ZIP:I = 0x3

.field public static final QUERY_ERROR_NETWORK:I = 0x1

.field public static final QUERY_ERROR_SERVER_ERROR:I = 0x2

.field public static final SOURCE_STATUS_FORBIDDEN:I = 0x1

.field public static final SOURCE_STATUS_NORMAL:I = 0x0

.field public static final SOURCE_STATUS_REMOVE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
