.class Lbxe$54;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxe;->a(Landroid/os/IBinder;Ljava/lang/String;IZ)V
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

.field final synthetic d:Z

.field final synthetic e:Lbxe;


# direct methods
.method constructor <init>(Lbxe;Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 0

    .line 997
    iput-object p1, p0, Lbxe$54;->e:Lbxe;

    iput-object p2, p0, Lbxe$54;->a:Landroid/os/IBinder;

    iput-object p3, p0, Lbxe$54;->b:Ljava/lang/String;

    iput p4, p0, Lbxe$54;->c:I

    iput-boolean p5, p0, Lbxe$54;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvu;)Ljava/lang/Object;
    .locals 4

    .line 1001
    :try_start_0
    iget-object v0, p0, Lbxe$54;->a:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 1002
    invoke-interface {p1}, Lbvu;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lbxe$54;->b:Ljava/lang/String;

    iget v2, p0, Lbxe$54;->c:I

    iget-boolean v3, p0, Lbxe$54;->d:Z

    invoke-interface {p1, v0, v1, v2, v3}, Lbvu;->a(Landroid/os/IBinder;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1004
    :cond_0
    iget-object v0, p0, Lbxe$54;->a:Landroid/os/IBinder;

    iget-object v1, p0, Lbxe$54;->b:Ljava/lang/String;

    iget v2, p0, Lbxe$54;->c:I

    iget-boolean v3, p0, Lbxe$54;->d:Z

    invoke-interface {p1, v0, v1, v2, v3}, Lbvu;->a(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1007
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1009
    :goto_0
    iget-object v0, p0, Lbxe$54;->e:Lbxe;

    iget-object v1, p0, Lbxe$54;->a:Landroid/os/IBinder;

    if-nez v1, :cond_1

    invoke-interface {p1}, Lbvu;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_1
    iget p1, p0, Lbxe$54;->c:I

    iget-object v2, p0, Lbxe$54;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lbxe$54;->d:Z

    invoke-static {v0, v1, p1, v2, v3}, Lbxe;->a(Lbxe;Landroid/os/IBinder;ILjava/lang/String;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 997
    check-cast p1, Lbvu;

    invoke-virtual {p0, p1}, Lbxe$54;->a(Lbvu;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
