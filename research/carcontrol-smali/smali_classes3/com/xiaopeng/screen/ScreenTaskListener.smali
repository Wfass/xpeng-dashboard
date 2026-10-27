.class public Lcom/xiaopeng/screen/ScreenTaskListener;
.super Lcom/xiaopeng/screen/IScreenTaskListener$Stub;
.source "ScreenTaskListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/xiaopeng/screen/IScreenTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityChanged(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onEventChanged(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
