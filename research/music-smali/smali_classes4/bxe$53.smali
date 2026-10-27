.class Lbxe$53;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxe;->b(Landroid/os/IBinder;Ljava/lang/String;I)V
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

.field final synthetic c:I

.field final synthetic d:Lbxe;


# direct methods
.method constructor <init>(Lbxe;Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 0

    .line 952
    iput-object p1, p0, Lbxe$53;->d:Lbxe;

    iput-object p2, p0, Lbxe$53;->a:Landroid/os/IBinder;

    iput-object p3, p0, Lbxe$53;->b:Ljava/lang/String;

    iput p4, p0, Lbxe$53;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvu;)Ljava/lang/Object;
    .locals 3

    .line 956
    :try_start_0
    iget-object v0, p0, Lbxe$53;->a:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 957
    invoke-interface {p1}, Lbvu;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lbxe$53;->b:Ljava/lang/String;

    iget v2, p0, Lbxe$53;->c:I

    invoke-interface {p1, v0, v1, v2}, Lbvu;->b(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_0

    .line 959
    :cond_0
    iget-object v0, p0, Lbxe$53;->a:Landroid/os/IBinder;

    iget-object v1, p0, Lbxe$53;->b:Ljava/lang/String;

    iget v2, p0, Lbxe$53;->c:I

    invoke-interface {p1, v0, v1, v2}, Lbvu;->b(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 962
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 964
    :goto_0
    iget-object v0, p0, Lbxe$53;->d:Lbxe;

    iget-object v1, p0, Lbxe$53;->a:Landroid/os/IBinder;

    if-nez v1, :cond_1

    invoke-interface {p1}, Lbvu;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_1
    iget-object p1, p0, Lbxe$53;->b:Ljava/lang/String;

    iget v2, p0, Lbxe$53;->c:I

    invoke-static {v0, v1, p1, v2}, Lbxe;->a(Lbxe;Landroid/os/IBinder;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 952
    check-cast p1, Lbvu;

    invoke-virtual {p0, p1}, Lbxe$53;->a(Lbvu;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
