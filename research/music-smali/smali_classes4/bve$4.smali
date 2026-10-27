.class Lbve$4;
.super Ljava/lang/Object;
.source "Recognizer.java"

# interfaces
.implements Lbuf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbve;


# direct methods
.method constructor <init>(Lbve;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lbve$4;->a:Lbve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 320
    iget-object v0, p0, Lbve$4;->a:Lbve;

    invoke-static {v0}, Lbve;->a(Lbve;)Lcom/xiaopeng/speech/common/util/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lbve$4;->a:Lbve;

    invoke-static {v0, v1}, Lbve;->a(Lbve;Lbvc;)Lbvc;

    return-void
.end method

.method public a(Lbun;)V
    .locals 2

    const-string v0, "Recognizer"

    const-string v1, "on connect"

    .line 308
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    :try_start_0
    invoke-interface {p1}, Lbun;->m()Lbvc;

    move-result-object p1

    .line 311
    iget-object v1, p0, Lbve$4;->a:Lbve;

    invoke-static {v1}, Lbve;->a(Lbve;)Lcom/xiaopeng/speech/common/util/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    .line 312
    iget-object v1, p0, Lbve$4;->a:Lbve;

    invoke-static {v1, p1}, Lbve;->a(Lbve;Lbvc;)Lbvc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "on connect error"

    .line 314
    invoke-static {v0, p1}, Lcom/xiaopeng/speech/common/util/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
