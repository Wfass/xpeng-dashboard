.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$6$upNP2oT74lobGTiXPdObg6GcUQ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$6$upNP2oT74lobGTiXPdObg6GcUQ4;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;

    iput-wide p2, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$6$upNP2oT74lobGTiXPdObg6GcUQ4;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$6$upNP2oT74lobGTiXPdObg6GcUQ4;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;

    iget-wide v1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$6$upNP2oT74lobGTiXPdObg6GcUQ4;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->lambda$onChangeEvent$0(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;J)V

    return-void
.end method
