.class Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;
.super Ljava/lang/Object;
.source "XAppExitManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExitCheckResult"
.end annotation


# instance fields
.field result:I

.field scenarioName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->access$000()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;->result:I

    .line 30
    const-string v0, "normal_mode"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;->scenarioName:Ljava/lang/String;

    .line 32
    return-void
.end method
