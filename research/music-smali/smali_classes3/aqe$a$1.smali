.class Laqe$a$1;
.super Lapz$a;
.source "QrCodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqe$a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lapz$a<",
        "Laqg<",
        "Laqf;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Laqe$a;


# direct methods
.method constructor <init>(Laqe$a;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 264
    iput-object p1, p0, Laqe$a$1;->a:Laqe$a;

    invoke-direct {p0, p2}, Lapz$a;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Z)V
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAuthCode:onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Laqe$a$1;->a:Laqe$a;

    invoke-static {p2}, Laqe$a;->c(Laqe$a;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "QrCodePresenter"

    invoke-static {p3, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object p2, p0, Laqe$a$1;->a:Laqe$a;

    iget-object p2, p2, Laqe$a;->a:Laqe;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Laqe;->c(Laqe;Z)Z

    const p2, 0x730d210

    if-eq p1, p2, :cond_1

    const p2, 0x730d211

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    iget-object p1, p0, Laqe$a$1;->a:Laqe$a;

    iget-object p1, p1, Laqe$a;->a:Laqe;

    invoke-virtual {p1}, Laqe;->g()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 290
    iget-object p1, p0, Laqe$a$1;->a:Laqe$a;

    iget-object p1, p1, Laqe$a;->a:Laqe;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Laqe;->b(Laqe;Z)V

    goto :goto_1

    .line 287
    :cond_1
    :goto_0
    iget-object p1, p0, Laqe$a$1;->a:Laqe$a;

    invoke-static {p1}, Laqe$a;->d(Laqe$a;)V

    .line 288
    iget-object p1, p0, Laqe$a$1;->a:Laqe$a;

    iget-object p1, p1, Laqe$a;->a:Laqe;

    iget-object p2, p0, Laqe$a$1;->a:Laqe$a;

    invoke-static {p2}, Laqe$a;->c(Laqe$a;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Laqe;->a(Laqe;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Laqg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqg<",
            "Laqf;",
            ">;)V"
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAuthCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laqe$a$1;->a:Laqe$a;

    invoke-static {v1}, Laqe$a;->c(Laqe$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Laqe$a$1;->a:Laqe$a;

    iget-object v0, v0, Laqe$a;->a:Laqe;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laqe;->c(Laqe;Z)Z

    .line 269
    iget-object p1, p1, Laqg;->b:Ljava/lang/Object;

    check-cast p1, Laqf;

    if-eqz p1, :cond_0

    .line 271
    iget-object v0, p1, Laqf;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Laqe$a$1;->a:Laqe$a;

    invoke-static {v0}, Laqe$a;->d(Laqe$a;)V

    .line 273
    iget-object v0, p0, Laqe$a$1;->a:Laqe$a;

    invoke-static {v0}, Laqe$a;->c(Laqe$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laqf;->a(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Laqe$a$1;->a:Laqe$a;

    iget-object v0, v0, Laqe$a;->a:Laqe;

    invoke-virtual {v0, p1}, Laqe;->a(Laqf;)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 276
    iget-object p1, p0, Laqe$a$1;->a:Laqe$a;

    iget-object p1, p1, Laqe$a;->a:Laqe;

    invoke-virtual {p1}, Laqe;->g()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 264
    check-cast p1, Laqg;

    invoke-virtual {p0, p1}, Laqe$a$1;->a(Laqg;)V

    return-void
.end method
