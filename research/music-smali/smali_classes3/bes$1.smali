.class Lbes$1;
.super Ljava/lang/Object;
.source "RxConcentrationModel.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbes;->a(Lber;Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lbes$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lber;

.field final synthetic b:Lbes;


# direct methods
.method constructor <init>(Lbes;Lber;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lbes$1;->b:Lbes;

    iput-object p2, p0, Lbes$1;->a:Lber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbes$a;)V
    .locals 8

    if-eqz p1, :cond_0

    const-string v0, "RxConcentrationModel"

    const-string v1, "setQQConcentration success"

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v2, p0, Lbes$1;->a:Lber;

    iget-object v3, p1, Lbes$a;->a:Ljava/util/List;

    iget-object v4, p1, Lbes$a;->b:Ljava/util/List;

    iget-object v5, p1, Lbes$a;->c:Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    iget-object v6, p1, Lbes$a;->d:Ljava/util/List;

    iget-object v7, p1, Lbes$a;->e:Ljava/util/List;

    invoke-interface/range {v2 .. v7}, Lber;->a(Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lbes$1;->a:Lber;

    invoke-interface {p1}, Lber;->a()V

    :goto_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p1, Lbes$a;

    invoke-virtual {p0, p1}, Lbes$1;->a(Lbes$a;)V

    return-void
.end method
