.class public Lcom/xiaopeng/xuiservice/operation/db/SelectTime;
.super Ljava/lang/Object;
.source "SelectTime.java"


# annotations
.annotation build Landroidx/room/Entity;
    primaryKeys = {
        "resourceType"
    }
.end annotation


# instance fields
.field public lastSelectTime:J

.field public resourceType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
