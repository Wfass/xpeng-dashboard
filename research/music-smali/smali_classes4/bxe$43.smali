.class Lbxe$43;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxe;->b(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
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

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lbxe;


# direct methods
.method constructor <init>(Lbxe;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 642
    iput-object p1, p0, Lbxe$43;->f:Lbxe;

    iput-object p2, p0, Lbxe$43;->a:Landroid/os/IBinder;

    iput p3, p0, Lbxe$43;->b:I

    iput-object p4, p0, Lbxe$43;->c:Ljava/lang/String;

    iput-object p5, p0, Lbxe$43;->d:Ljava/lang/String;

    iput p6, p0, Lbxe$43;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvu;)Ljava/lang/Object;
    .locals 7

    .line 646
    :try_start_0
    iget-object v0, p0, Lbxe$43;->a:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 647
    invoke-interface {p1}, Lbvu;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Lbxe$43;->b:I

    iget-object v4, p0, Lbxe$43;->c:Ljava/lang/String;

    iget-object v5, p0, Lbxe$43;->d:Ljava/lang/String;

    iget v6, p0, Lbxe$43;->e:I

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lbvu;->b(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 649
    :cond_0
    iget-object v2, p0, Lbxe$43;->a:Landroid/os/IBinder;

    iget v3, p0, Lbxe$43;->b:I

    iget-object v4, p0, Lbxe$43;->c:Ljava/lang/String;

    iget-object v5, p0, Lbxe$43;->d:Ljava/lang/String;

    iget v6, p0, Lbxe$43;->e:I

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lbvu;->b(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 652
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 655
    :goto_0
    iget-object v1, p0, Lbxe$43;->f:Lbxe;

    iget-object v0, p0, Lbxe$43;->a:Landroid/os/IBinder;

    if-nez v0, :cond_1

    invoke-interface {p1}, Lbvu;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    move-object v2, p1

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    iget v3, p0, Lbxe$43;->b:I

    iget-object v4, p0, Lbxe$43;->c:Ljava/lang/String;

    iget-object v5, p0, Lbxe$43;->d:Ljava/lang/String;

    iget v6, p0, Lbxe$43;->e:I

    invoke-static/range {v1 .. v6}, Lbxe;->a(Lbxe;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 642
    check-cast p1, Lbvu;

    invoke-virtual {p0, p1}, Lbxe$43;->a(Lbvu;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
