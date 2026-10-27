.class public Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
.super Ljava/lang/Object;
.source "OperationKeyValue.java"


# annotations
.annotation build Landroidx/room/Entity;
    indices = {
        .subannotation Landroidx/room/Index;
            value = {
                "key"
            }
        .end subannotation
    }
.end annotation


# static fields
.field public static final STATUS_CREATE:I = 0x0

.field public static final STATUS_REPORTED:I = 0x9

.field public static final STATUS_UPDATE:I = 0x1


# instance fields
.field public id:J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field public key:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "key"
    .end annotation
.end field

.field public status:I

.field public time:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->status:I

    return-void
.end method
