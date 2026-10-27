.class Lbtd$5;
.super Ljava/lang/Object;
.source "XmlyVipModel.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtd;->k()V
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
.field final synthetic a:Lbtd;


# direct methods
.method constructor <init>(Lbtd;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lbtd$5;->a:Lbtd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 1

    .line 271
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 272
    iget-object p1, p0, Lbtd$5;->a:Lbtd;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lbtd;->a(I)V

    :cond_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 268
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lbtd$5;->a(Ljava/lang/Long;)V

    return-void
.end method
