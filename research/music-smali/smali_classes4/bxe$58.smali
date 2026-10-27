.class Lbxe$58;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxe;->x()Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbvu;",
        "Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbxe;


# direct methods
.method constructor <init>(Lbxe;)V
    .locals 0

    .line 1046
    iput-object p1, p0, Lbxe$58;->a:Lbxe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvu;)Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;
    .locals 0

    .line 1050
    :try_start_0
    invoke-interface {p1}, Lbvu;->x()Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1052
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1046
    check-cast p1, Lbvu;

    invoke-virtual {p0, p1}, Lbxe$58;->a(Lbvu;)Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;

    move-result-object p1

    return-object p1
.end method
