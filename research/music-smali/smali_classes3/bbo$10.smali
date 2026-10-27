.class Lbbo$10;
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
.field final synthetic a:Lbbo;


# direct methods
.method constructor <init>(Lbbo;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lbbo$10;->a:Lbbo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lbbo$10;->a:Lbbo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbbo;->b(Lbbo;Z)Z

    const-string v0, "PreloadPageHandler"

    const-string v1, "accept: "

    .line 137
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 133
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lbbo$10;->a(Ljava/lang/Throwable;)V

    return-void
.end method
