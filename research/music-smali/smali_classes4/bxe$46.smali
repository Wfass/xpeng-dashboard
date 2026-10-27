.class Lbxe$46;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxe;->a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lbxe;


# direct methods
.method constructor <init>(Lbxe;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 683
    iput-object p1, p0, Lbxe$46;->e:Lbxe;

    iput-object p2, p0, Lbxe$46;->a:Landroid/os/IBinder;

    iput-object p3, p0, Lbxe$46;->b:Ljava/lang/String;

    iput-object p4, p0, Lbxe$46;->c:Ljava/lang/String;

    iput p5, p0, Lbxe$46;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvu;)Ljava/lang/Object;
    .locals 7

    .line 687
    :try_start_0
    iget-object v0, p0, Lbxe$46;->a:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 688
    invoke-interface {p1}, Lbvu;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lbxe$46;->b:Ljava/lang/String;

    iget-object v2, p0, Lbxe$46;->c:Ljava/lang/String;

    iget v3, p0, Lbxe$46;->d:I

    invoke-interface {p1, v0, v1, v2, v3}, Lbvu;->a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 690
    :cond_0
    iget-object v0, p0, Lbxe$46;->a:Landroid/os/IBinder;

    iget-object v1, p0, Lbxe$46;->b:Ljava/lang/String;

    iget-object v2, p0, Lbxe$46;->c:Ljava/lang/String;

    iget v3, p0, Lbxe$46;->d:I

    invoke-interface {p1, v0, v1, v2, v3}, Lbvu;->a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 693
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 695
    :goto_0
    iget-object v1, p0, Lbxe$46;->e:Lbxe;

    iget-object v0, p0, Lbxe$46;->a:Landroid/os/IBinder;

    if-nez v0, :cond_1

    invoke-interface {p1}, Lbvu;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    move-object v2, p1

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    const/4 v3, -0x1

    iget-object v4, p0, Lbxe$46;->b:Ljava/lang/String;

    iget-object v5, p0, Lbxe$46;->c:Ljava/lang/String;

    iget v6, p0, Lbxe$46;->d:I

    invoke-static/range {v1 .. v6}, Lbxe;->a(Lbxe;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 683
    check-cast p1, Lbvu;

    invoke-virtual {p0, p1}, Lbxe$46;->a(Lbvu;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
