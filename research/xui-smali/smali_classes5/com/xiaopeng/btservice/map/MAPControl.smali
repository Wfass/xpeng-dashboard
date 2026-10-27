.class public Lcom/xiaopeng/btservice/map/MAPControl;
.super Lcom/xiaopeng/btservice/base/AbsControl;
.source "MAPControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PBAPControl"


# instance fields
.field private mCallback:Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

.field private mCallbackMap:Lcom/nforetek/bt/aidl/UiCallbackMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/btservice/base/AbsControl;-><init>()V

    .line 43
    new-instance v0, Lcom/xiaopeng/btservice/map/MAPControl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/btservice/map/MAPControl$1;-><init>(Lcom/xiaopeng/btservice/map/MAPControl;)V

    iput-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl;->mCallbackMap:Lcom/nforetek/bt/aidl/UiCallbackMap;

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/btservice/map/MAPControl;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/xiaopeng/btservice/map/MAPControl;->mCallback:Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/btservice/map/MAPControl;

    .line 11
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl;->mCallback:Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    return-object v0
.end method


# virtual methods
.method protected registerCallback(Lcom/nforetek/bt/aidl/UiCommand;)V
    .locals 2
    .param p1, "btService"    # Lcom/nforetek/bt/aidl/UiCommand;

    .line 25
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/btservice/map/MAPControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl;->mCallbackMap:Lcom/nforetek/bt/aidl/UiCallbackMap;

    invoke-interface {p1, v0}, Lcom/nforetek/bt/aidl/UiCommand;->registerMapCallback(Lcom/nforetek/bt/aidl/UiCallbackMap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PBAPControl"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/btservice/map/MAPControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 30
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected release()V
    .locals 2

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget-object v1, p0, Lcom/xiaopeng/btservice/map/MAPControl;->mCallbackMap:Lcom/nforetek/bt/aidl/UiCallbackMap;

    invoke-interface {v0, v1}, Lcom/nforetek/bt/aidl/UiCommand;->unregisterMapCallback(Lcom/nforetek/bt/aidl/UiCallbackMap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
