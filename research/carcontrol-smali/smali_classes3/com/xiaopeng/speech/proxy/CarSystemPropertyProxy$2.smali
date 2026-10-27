.class Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy$2;
.super Ljava/lang/Object;
.source "CarSystemPropertyProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;->getOverseasCarType()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc<",
        "Lcom/xiaopeng/speech/ICarSystemProperty;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy$2;->this$0:Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    check-cast p1, Lcom/xiaopeng/speech/ICarSystemProperty;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/CarSystemPropertyProxy$2;->run(Lcom/xiaopeng/speech/ICarSystemProperty;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/xiaopeng/speech/ICarSystemProperty;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    invoke-interface {p1}, Lcom/xiaopeng/speech/ICarSystemProperty;->getOverseasCarType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
