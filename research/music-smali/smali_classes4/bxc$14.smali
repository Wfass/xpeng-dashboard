.class Lbxc$14;
.super Ljava/lang/Object;
.source "TTSEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxc;->a(ZLandroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbvs;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Z

.field final synthetic c:Lbxc;


# direct methods
.method constructor <init>(Lbxc;Landroid/os/IBinder;Z)V
    .locals 0

    .line 423
    iput-object p1, p0, Lbxc$14;->c:Lbxc;

    iput-object p2, p0, Lbxc$14;->a:Landroid/os/IBinder;

    iput-boolean p3, p0, Lbxc$14;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvs;)Ljava/lang/Object;
    .locals 2

    .line 427
    :try_start_0
    iget-object v0, p0, Lbxc$14;->a:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 428
    iget-boolean v0, p0, Lbxc$14;->b:Z

    invoke-interface {p1}, Lbvs;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lbvs;->a(ZLandroid/os/IBinder;)V

    goto :goto_0

    .line 430
    :cond_0
    iget-boolean v0, p0, Lbxc$14;->b:Z

    iget-object v1, p0, Lbxc$14;->a:Landroid/os/IBinder;

    invoke-interface {p1, v0, v1}, Lbvs;->a(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPC Excption:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 423
    check-cast p1, Lbvs;

    invoke-virtual {p0, p1}, Lbxc$14;->a(Lbvs;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
