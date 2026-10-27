.class Lcom/xiaopeng/commonfunc/b/f/e$1;
.super Ljava/lang/Object;
.source "SecurityModel.java"

# interfaces
.implements Lcom/xiaopeng/lib/http/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/commonfunc/b/f/e;->eg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/lib/http/c<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic oD:Lcom/xiaopeng/commonfunc/b/f/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/b/f/e;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/f/e$1;->oD:Lcom/xiaopeng/commonfunc/b/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic j(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/commonfunc/b/f/e$1;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/f/e$1;->oD:Lcom/xiaopeng/commonfunc/b/f/e;

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/commonfunc/b/f/e;->a(Lcom/xiaopeng/commonfunc/b/f/e;II)V

    .line 87
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/commonfunc/b/f/e$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 74
    nop

    .line 76
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 80
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/e$1;->oD:Lcom/xiaopeng/commonfunc/b/f/e;

    const/4 v1, 0x3

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_0

    .line 81
    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    .line 80
    :goto_1
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/commonfunc/b/f/e;->a(Lcom/xiaopeng/commonfunc/b/f/e;II)V

    .line 82
    return-void
.end method
