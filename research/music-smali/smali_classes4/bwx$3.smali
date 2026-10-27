.class Lbwx$3;
.super Ljava/lang/Object;
.source "QueryInjectorProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwx;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;
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
        "Lcom/xiaopeng/speech/common/bean/Value;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbwx;


# direct methods
.method constructor <init>(Lbwx;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lbwx$3;->c:Lbwx;

    iput-object p2, p0, Lbwx$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lbwx$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbuk;)Lcom/xiaopeng/speech/common/bean/Value;
    .locals 2

    .line 74
    :try_start_0
    iget-object v0, p0, Lbwx$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lbwx$3;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lbuk;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    sget-object p1, Lcom/xiaopeng/speech/common/bean/Value;->VOID:Lcom/xiaopeng/speech/common/bean/Value;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    check-cast p1, Lbuk;

    invoke-virtual {p0, p1}, Lbwx$3;->a(Lbuk;)Lcom/xiaopeng/speech/common/bean/Value;

    move-result-object p1

    return-object p1
.end method
