.class Lbxc$17;
.super Ljava/lang/Object;
.source "TTSEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxc;->g()V
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
.field final synthetic a:Lbxc;


# direct methods
.method constructor <init>(Lbxc;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lbxc$17;->a:Lbxc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvs;)Ljava/lang/Object;
    .locals 2

    .line 479
    :try_start_0
    iget-object v0, p0, Lbxc$17;->a:Lbxc;

    invoke-static {v0}, Lbxc;->c(Lbxc;)Lbvr;

    move-result-object v0

    invoke-interface {p1, v0}, Lbvs;->a(Lbvr;)V

    .line 480
    iget-object p1, p0, Lbxc$17;->a:Lbxc;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lbxc;->a(Lbxc;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 482
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

    .line 475
    check-cast p1, Lbvs;

    invoke-virtual {p0, p1}, Lbxc$17;->a(Lbvs;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
