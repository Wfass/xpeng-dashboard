.class public Lcom/xiaopeng/appstart/AppStartUp;
.super Ljava/lang/Object;
.source "AppStartUp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstart/AppStartUp$Holder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/appstart/AppStartUp;
    .locals 1

    .line 15
    invoke-static {}, Lcom/xiaopeng/appstart/AppStartUp$Holder;->access$000()Lcom/xiaopeng/appstart/AppStartUp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public startUp()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->create()Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->setShowLog(Z)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->start()Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    return-void
.end method
