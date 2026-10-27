.class Lbxe$50;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxe;->a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZZ)V
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

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Lbxe;


# direct methods
.method constructor <init>(Lbxe;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0

    .line 844
    iput-object p1, p0, Lbxe$50;->g:Lbxe;

    iput-object p2, p0, Lbxe$50;->a:Landroid/os/IBinder;

    iput-object p3, p0, Lbxe$50;->b:Ljava/lang/String;

    iput-object p4, p0, Lbxe$50;->c:Ljava/lang/String;

    iput p5, p0, Lbxe$50;->d:I

    iput-boolean p6, p0, Lbxe$50;->e:Z

    iput-boolean p7, p0, Lbxe$50;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvu;)Ljava/lang/Object;
    .locals 7

    .line 848
    :try_start_0
    iget-object v0, p0, Lbxe$50;->a:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 849
    invoke-interface {p1}, Lbvu;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lbxe$50;->b:Ljava/lang/String;

    iget-object v4, p0, Lbxe$50;->c:Ljava/lang/String;

    iget v5, p0, Lbxe$50;->d:I

    iget-boolean v6, p0, Lbxe$50;->e:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lbvu;->a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 851
    :cond_0
    iget-object v2, p0, Lbxe$50;->a:Landroid/os/IBinder;

    iget-object v3, p0, Lbxe$50;->b:Ljava/lang/String;

    iget-object v4, p0, Lbxe$50;->c:Ljava/lang/String;

    iget v5, p0, Lbxe$50;->d:I

    iget-boolean v6, p0, Lbxe$50;->e:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lbvu;->a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 854
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 856
    :goto_0
    iget-boolean v0, p0, Lbxe$50;->f:Z

    if-eqz v0, :cond_2

    .line 857
    iget-object v1, p0, Lbxe$50;->g:Lbxe;

    iget-object v0, p0, Lbxe$50;->a:Landroid/os/IBinder;

    if-nez v0, :cond_1

    invoke-interface {p1}, Lbvu;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    move-object v2, p1

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    iget-object v3, p0, Lbxe$50;->b:Ljava/lang/String;

    iget-object v4, p0, Lbxe$50;->c:Ljava/lang/String;

    iget v5, p0, Lbxe$50;->d:I

    iget-boolean v6, p0, Lbxe$50;->e:Z

    invoke-static/range {v1 .. v6}, Lbxe;->a(Lbxe;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 844
    check-cast p1, Lbvu;

    invoke-virtual {p0, p1}, Lbxe$50;->a(Lbvu;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
