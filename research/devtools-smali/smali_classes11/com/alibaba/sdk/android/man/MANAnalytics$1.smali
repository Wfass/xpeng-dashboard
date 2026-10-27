.class Lcom/alibaba/sdk/android/man/MANAnalytics$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/utils/crashdefend/SDKMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/man/MANAnalytics;->init(Landroid/app/Application;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/sdk/android/man/MANAnalytics;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/man/MANAnalytics;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/MANAnalytics$1;->this$0:Lcom/alibaba/sdk/android/man/MANAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public crashDefendMessage(II)V
    .locals 0

    .line 114
    if-le p1, p2, :cond_0

    .line 115
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/MANAnalytics$1;->this$0:Lcom/alibaba/sdk/android/man/MANAnalytics;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/man/MANAnalytics;->access$102(Lcom/alibaba/sdk/android/man/MANAnalytics;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 116
    const-string p1, "MAN_MANAnalytics"

    const-string p2, "MAN init success."

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/man/util/MANLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/MANAnalytics$1;->this$0:Lcom/alibaba/sdk/android/man/MANAnalytics;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/man/MANAnalytics;->access$102(Lcom/alibaba/sdk/android/man/MANAnalytics;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 119
    const-string p1, "MAN_MANAnalytics"

    const-string p2, "MAN init failed,cause crashCount > limitCount!"

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    invoke-static {}, Lcom/alibaba/sdk/android/man/MANTracker;->getInstance()Lcom/alibaba/sdk/android/man/MANTracker;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/sdk/android/man/MANAnalytics$1;->this$0:Lcom/alibaba/sdk/android/man/MANAnalytics;

    invoke-static {p2}, Lcom/alibaba/sdk/android/man/MANAnalytics;->access$100(Lcom/alibaba/sdk/android/man/MANAnalytics;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/man/MANTracker;->setEnableStatus(Z)V

    .line 122
    invoke-static {}, Lcom/alibaba/sdk/android/man/MANPageHitHelper;->getInstance()Lcom/alibaba/sdk/android/man/MANPageHitHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/sdk/android/man/MANAnalytics$1;->this$0:Lcom/alibaba/sdk/android/man/MANAnalytics;

    invoke-static {p2}, Lcom/alibaba/sdk/android/man/MANAnalytics;->access$100(Lcom/alibaba/sdk/android/man/MANAnalytics;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/man/MANPageHitHelper;->setEnableStatus(Z)V

    .line 123
    return-void
.end method
