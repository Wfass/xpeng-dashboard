.class public Lcom/xiaopeng/screen/ScreenTaskCallback;
.super Lcom/xiaopeng/screen/IScreenTaskCallback$Stub;
.source "ScreenTaskCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/xiaopeng/screen/IScreenTaskCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResizeCompleted(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onResizeError(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
