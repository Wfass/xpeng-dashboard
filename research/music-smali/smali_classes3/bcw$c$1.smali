.class Lbcw$c$1;
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
        "Ljava/util/ArrayList<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

.field final synthetic b:Lbcw$c;


# direct methods
.method constructor <init>(Lbcw$c;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lbcw$c$1;->b:Lbcw$c;

    iput-object p2, p0, Lbcw$c$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;)V"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lbcw$c$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setProgramInfos(Ljava/util/List;)V

    .line 349
    iget-object p1, p0, Lbcw$c$1;->b:Lbcw$c;

    iget-boolean p1, p1, Lbcw$c;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lbcw$c$1;->b:Lbcw$c;

    iget-object p1, p1, Lbcw$c;->b:Lbcw$b;

    if-eqz p1, :cond_0

    .line 350
    iget-object p1, p0, Lbcw$c$1;->b:Lbcw$c;

    iget-object p1, p1, Lbcw$c;->b:Lbcw$b;

    iget-object v0, p0, Lbcw$c$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-interface {p1, v0}, Lbcw$b;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    :cond_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 345
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lbcw$c$1;->a(Ljava/util/ArrayList;)V

    return-void
.end method
