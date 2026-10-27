.class Lbxe$18;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxe;->b(Landroid/os/IBinder;)V
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

.field final synthetic b:Lbxe;


# direct methods
.method constructor <init>(Lbxe;Landroid/os/IBinder;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lbxe$18;->b:Lbxe;

    iput-object p2, p0, Lbxe$18;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvu;)Ljava/lang/Object;
    .locals 1

    .line 336
    iget-object v0, p0, Lbxe$18;->a:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 337
    invoke-interface {p1}, Lbvu;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Lbvu;->b(Landroid/os/IBinder;)V

    goto :goto_0

    .line 339
    :cond_0
    invoke-interface {p1, v0}, Lbvu;->b(Landroid/os/IBinder;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 333
    check-cast p1, Lbvu;

    invoke-virtual {p0, p1}, Lbxe$18;->a(Lbvu;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
