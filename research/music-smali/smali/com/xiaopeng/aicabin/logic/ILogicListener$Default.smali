.class public Lcom/xiaopeng/aicabin/logic/ILogicListener$Default;
.super Ljava/lang/Object;
.source "ILogicListener.java"

# interfaces
.implements Lcom/xiaopeng/aicabin/logic/ILogicListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aicabin/logic/ILogicListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onResult(Lcom/xiaopeng/aicabin/DataResp;)V
    .locals 0

    return-void
.end method
