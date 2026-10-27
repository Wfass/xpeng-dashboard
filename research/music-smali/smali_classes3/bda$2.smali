.class Lbda$2;
.super Ljava/lang/Object;
.source "NetRadioOperation.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbda;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/s<",
        "Ljava/util/List<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/r;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbda;


# direct methods
.method constructor <init>(Lbda;Landroidx/lifecycle/r;Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lbda$2;->c:Lbda;

    iput-object p2, p0, Lbda$2;->a:Landroidx/lifecycle/r;

    iput-object p3, p0, Lbda$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lbda$2;->a:Landroidx/lifecycle/r;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/r;->b(Landroidx/lifecycle/s;)V

    .line 108
    iget-object v0, p0, Lbda$2;->c:Lbda;

    iget-object v1, p0, Lbda$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lbda;->a(Lbda;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 104
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lbda$2;->a(Ljava/util/List;)V

    return-void
.end method
