.class Laqe$1;
.super Lapz$a;
.source "QrCodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqe;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lapz$a<",
        "Laqg<",
        "Laqh;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Laqe;


# direct methods
.method constructor <init>(Laqe;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 82
    iput-object p1, p0, Laqe$1;->a:Laqe;

    invoke-direct {p0, p2}, Lapz$a;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Z)V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getQrCode:onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "QrCodePresenter"

    invoke-static {p3, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Laqe$1;->a:Laqe;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Laqe;->a(Laqe;Z)Z

    .line 98
    iget-object p2, p0, Laqe$1;->a:Laqe;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Laqe;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Laqg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqg<",
            "Laqh;",
            ">;)V"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getQrCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Laqe$1;->a:Laqe;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laqe;->a(Laqe;Z)Z

    .line 87
    iget-object v0, p1, Laqg;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Laqe$1;->a:Laqe;

    iget-object p1, p1, Laqg;->b:Ljava/lang/Object;

    check-cast p1, Laqh;

    iget-object p1, p1, Laqh;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Laqe;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Laqe$1;->a:Laqe;

    iget p1, p1, Laqg;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Laqe;->a(Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Laqg;

    invoke-virtual {p0, p1}, Laqe$1;->a(Laqg;)V

    return-void
.end method
