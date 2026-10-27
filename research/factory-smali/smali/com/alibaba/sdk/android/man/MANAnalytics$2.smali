.class Lcom/alibaba/sdk/android/man/MANAnalytics$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ut/mini/IUTApplication;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/man/MANAnalytics;->innerInit(Landroid/app/Application;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/sdk/android/man/MANAnalytics;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$appSecret:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/man/MANAnalytics;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/MANAnalytics$2;->this$0:Lcom/alibaba/sdk/android/man/MANAnalytics;

    iput-object p2, p0, Lcom/alibaba/sdk/android/man/MANAnalytics$2;->val$appKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/man/MANAnalytics$2;->val$appSecret:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUTAppVersion()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics$2;->this$0:Lcom/alibaba/sdk/android/man/MANAnalytics;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/MANAnalytics;->access$200(Lcom/alibaba/sdk/android/man/MANAnalytics;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUTChannel()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics$2;->this$0:Lcom/alibaba/sdk/android/man/MANAnalytics;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/MANAnalytics;->access$300(Lcom/alibaba/sdk/android/man/MANAnalytics;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUTCrashCraughtListener()Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;
    .locals 1

    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUTRequestAuthInstance()Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    .locals 4

    .line 157
    new-instance v0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    iget-object v1, p0, Lcom/alibaba/sdk/android/man/MANAnalytics$2;->val$appKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/man/MANAnalytics$2;->val$appSecret:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public isAliyunOsSystem()Z
    .locals 1

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public isUTCrashHandlerDisable()Z
    .locals 1

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public isUTLogEnable()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/MANAnalytics$2;->this$0:Lcom/alibaba/sdk/android/man/MANAnalytics;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/MANAnalytics;->access$400(Lcom/alibaba/sdk/android/man/MANAnalytics;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
