.class Lbwx$2;
.super Ljava/lang/Object;
.source "QueryInjectorProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwx;->a([Ljava/lang/String;)V
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

.field final synthetic b:Lbwx;


# direct methods
.method constructor <init>(Lbwx;[Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lbwx$2;->b:Lbwx;

    iput-object p2, p0, Lbwx$2;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbuk;)Ljava/lang/Object;
    .locals 1

    .line 57
    :try_start_0
    iget-object v0, p0, Lbwx$2;->a:[Ljava/lang/String;

    invoke-interface {p1, v0}, Lbuk;->a([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, Lbuk;

    invoke-virtual {p0, p1}, Lbwx$2;->a(Lbuk;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
