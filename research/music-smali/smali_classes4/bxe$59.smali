.class Lbxe$59;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxe;->a(II)Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
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
        "Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lbxe;


# direct methods
.method constructor <init>(Lbxe;II)V
    .locals 0

    .line 1061
    iput-object p1, p0, Lbxe$59;->c:Lbxe;

    iput p2, p0, Lbxe$59;->a:I

    iput p3, p0, Lbxe$59;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvu;)Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
    .locals 2

    .line 1065
    :try_start_0
    iget v0, p0, Lbxe$59;->a:I

    iget v1, p0, Lbxe$59;->b:I

    invoke-interface {p1, v0, v1}, Lbvu;->a(II)Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1067
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1061
    check-cast p1, Lbvu;

    invoke-virtual {p0, p1}, Lbxe$59;->a(Lbvu;)Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    move-result-object p1

    return-object p1
.end method
