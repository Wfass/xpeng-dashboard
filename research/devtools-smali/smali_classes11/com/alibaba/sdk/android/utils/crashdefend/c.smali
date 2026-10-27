.class public Lcom/alibaba/sdk/android/utils/crashdefend/c;
.super Ljava/lang/Object;
.source "CrashDefendSDKInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:J

.field public a:Lcom/alibaba/sdk/android/utils/crashdefend/SDKMessageCallback;

.field public b:I

.field public b:J

.field public c:I

.field public c:Ljava/lang/String;

.field public crashCount:I

.field public d:I

.field public d:Ljava/lang/String;

.field public volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/utils/crashdefend/c;->d:I

    .line 28
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/utils/crashdefend/c;->d:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/utils/crashdefend/c;->a:Lcom/alibaba/sdk/android/utils/crashdefend/SDKMessageCallback;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 38
    nop

    .line 40
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/utils/crashdefend/c;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const-string v1, "CrashSDK"

    const-string v2, "clone fail:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
