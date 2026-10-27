.class public Lcom/xiaopeng/commonfunc/bean/event/CopyFileTestResult;
.super Ljava/lang/Object;
.source "CopyFileTestResult.java"


# instance fields
.field public mPass:Z

.field public mUsedTime:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "result"    # Z

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/xiaopeng/commonfunc/bean/event/CopyFileTestResult;->mUsedTime:J

    .line 10
    iput-boolean p3, p0, Lcom/xiaopeng/commonfunc/bean/event/CopyFileTestResult;->mPass:Z

    .line 11
    return-void
.end method
