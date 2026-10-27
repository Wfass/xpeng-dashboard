.class Lbcw$c$2;
.super Ljava/lang/Object;
.source "LiveDataProvider.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcw$c;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
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
.field final synthetic a:Lbcw$c;


# direct methods
.method constructor <init>(Lbcw$c;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lbcw$c$2;->a:Lbcw$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "LiveDataProvider"

    const-string v1, "accept: "

    .line 356
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    iget-object v0, p0, Lbcw$c$2;->a:Lbcw$c;

    iget-boolean v0, v0, Lbcw$c;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lbcw$c$2;->a:Lbcw$c;

    iget-object v0, v0, Lbcw$c;->b:Lbcw$b;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 358
    instance-of v0, p1, Lbkp;

    if-eqz v0, :cond_0

    .line 359
    check-cast p1, Lbkp;

    .line 360
    iget-object v0, p0, Lbcw$c$2;->a:Lbcw$c;

    iget-object v0, v0, Lbcw$c;->b:Lbcw$b;

    invoke-virtual {p1}, Lbkp;->a()I

    move-result v1

    invoke-virtual {p1}, Lbkp;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lbcw$b;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object p1, p0, Lbcw$c$2;->a:Lbcw$c;

    iget-object p1, p1, Lbcw$c;->b:Lbcw$b;

    const/4 v0, -0x1

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lbcw$b;->a(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 353
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lbcw$c$2;->a(Ljava/lang/Throwable;)V

    return-void
.end method
