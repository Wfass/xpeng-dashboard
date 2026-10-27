.class Lbxc$1;
.super Lbvr$a;
.source "TTSEngineProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbxc;


# direct methods
.method constructor <init>(Lbxc;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lbxc$1;->a:Lbxc;

    invoke-direct {p0}, Lbvr$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lbxc$1;->a:Lbxc;

    invoke-static {v0}, Lbxc;->b(Lbxc;)Lcom/xiaopeng/speech/common/util/f;

    move-result-object v0

    new-instance v1, Lbxc$1$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lbxc$1$3;-><init>(Lbxc$1;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lbxc$1;->a:Lbxc;

    invoke-static {v0}, Lbxc;->b(Lbxc;)Lcom/xiaopeng/speech/common/util/f;

    move-result-object v0

    new-instance v1, Lbxc$1$1;

    invoke-direct {v1, p0, p1, p2}, Lbxc$1$1;-><init>(Lbxc$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a([B)V
    .locals 2

    .line 46
    iget-object v0, p0, Lbxc$1;->a:Lbxc;

    invoke-static {v0}, Lbxc;->b(Lbxc;)Lcom/xiaopeng/speech/common/util/f;

    move-result-object v0

    new-instance v1, Lbxc$1$2;

    invoke-direct {v1, p0, p1}, Lbxc$1$2;-><init>(Lbxc$1;[B)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lbxc$1;->a:Lbxc;

    invoke-static {v0}, Lbxc;->b(Lbxc;)Lcom/xiaopeng/speech/common/util/f;

    move-result-object v0

    new-instance v1, Lbxc$1$4;

    invoke-direct {v1, p0, p1, p2}, Lbxc$1$4;-><init>(Lbxc$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method
