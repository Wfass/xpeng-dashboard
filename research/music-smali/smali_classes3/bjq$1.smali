.class Lbjq$1;
.super Ljava/lang/Object;
.source "ConMainModel.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbjq;->a(Lbjq$b;Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/xiaopeng/musicradio/bean/music/ConResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbjq$b;

.field final synthetic b:Lbjq;


# direct methods
.method constructor <init>(Lbjq;Lbjq$b;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lbjq$1;->b:Lbjq;

    iput-object p2, p0, Lbjq$1;->a:Lbjq$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V
    .locals 2

    const-string v0, "ConMainModel"

    const-string v1, "getConMain accept"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v1, "getConMain success"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->setResultJson(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lbjq$1;->a:Lbjq$b;

    invoke-interface {v0, p1}, Lbjq$b;->a(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lbjq$1;->a:Lbjq$b;

    invoke-interface {p1}, Lbjq$b;->a()V

    :goto_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/ConResult;

    invoke-virtual {p0, p1}, Lbjq$1;->a(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V

    return-void
.end method
