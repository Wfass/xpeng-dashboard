.class Lbwx$1;
.super Ljava/lang/Object;
.source "QueryInjectorProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwx;->a([Ljava/lang/String;Lbul;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbuk;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lbul;

.field final synthetic c:Lbwx;


# direct methods
.method constructor <init>(Lbwx;[Ljava/lang/String;Lbul;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lbwx$1;->c:Lbwx;

    iput-object p2, p0, Lbwx$1;->a:[Ljava/lang/String;

    iput-object p3, p0, Lbwx$1;->b:Lbul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbuk;)Ljava/lang/Object;
    .locals 2

    .line 42
    :try_start_0
    iget-object v0, p0, Lbwx$1;->a:[Ljava/lang/String;

    iget-object v1, p0, Lbwx$1;->b:Lbul;

    invoke-interface {p1, v0, v1}, Lbuk;->a([Ljava/lang/String;Lbul;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Lbuk;

    invoke-virtual {p0, p1}, Lbwx$1;->a(Lbuk;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
