.class Lbbo$5;
.super Ljava/lang/Object;
.source "PreloadPageHandler.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbo;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;IIIIZLbbo$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbbo$a;

.field final synthetic b:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lbbo$a;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lbbo$5;->b:Lbbo;

    iput-object p2, p0, Lbbo$5;->a:Lbbo$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "PreloadPageHandler"

    const-string v1, "doOnError====accept: "

    .line 54
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    iget-object p1, p0, Lbbo$5;->a:Lbbo$a;

    invoke-interface {p1}, Lbbo$a;->a()V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lbbo$5;->a(Ljava/lang/Throwable;)V

    return-void
.end method
