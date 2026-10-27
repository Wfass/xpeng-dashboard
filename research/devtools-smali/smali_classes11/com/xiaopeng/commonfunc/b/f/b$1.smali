.class Lcom/xiaopeng/commonfunc/b/f/b$1;
.super Ljava/lang/Object;
.source "CertVerifyModel.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/commonfunc/b/f/b;->a(Lcom/xiaopeng/lib/http/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oo:Lcom/xiaopeng/lib/http/c;

.field final synthetic oq:Lcom/xiaopeng/commonfunc/b/f/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/b/f/b;Lcom/xiaopeng/lib/http/c;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/f/b$1;->oq:Lcom/xiaopeng/commonfunc/b/f/b;

    iput-object p2, p0, Lcom/xiaopeng/commonfunc/b/f/b$1;->oo:Lcom/xiaopeng/lib/http/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 218
    const-string p1, "CertVerifyModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/f/b$1;->oo:Lcom/xiaopeng/lib/http/c;

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/f/b$1;->oo:Lcom/xiaopeng/lib/http/c;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/xiaopeng/lib/http/c;->j(Ljava/lang/Object;)V

    .line 222
    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    const-string p1, "CertVerifyModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/f/b$1;->oo:Lcom/xiaopeng/lib/http/c;

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/f/b$1;->oo:Lcom/xiaopeng/lib/http/c;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/lib/http/c;->onSuccess(Ljava/lang/Object;)V

    .line 230
    :cond_0
    return-void
.end method
