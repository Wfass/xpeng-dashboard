.class Lbsz$5;
.super Ljava/lang/Object;
.source "UserVipModelBase.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsz;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbsz;


# direct methods
.method constructor <init>(Lbsz;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lbsz$5;->a:Lbsz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 1

    .line 375
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 376
    iget-object p1, p0, Lbsz$5;->a:Lbsz;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lbsz;->b(I)V

    .line 377
    iget-object p1, p0, Lbsz$5;->a:Lbsz;

    invoke-virtual {p1}, Lbsz;->d()Lbef;

    move-result-object p1

    invoke-virtual {p1}, Lbef;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbsz$5;->a:Lbsz;

    invoke-virtual {p1}, Lbsz;->c()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 378
    iget-object p1, p0, Lbsz$5;->a:Lbsz;

    invoke-virtual {p1}, Lbsz;->o()V

    :cond_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 372
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lbsz$5;->a(Ljava/lang/Long;)V

    return-void
.end method
