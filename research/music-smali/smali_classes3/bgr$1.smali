.class Lbgr$1;
.super Ljava/lang/Object;
.source "DolbyDataModel.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgr;->a(Lbgr$a;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/xiaopeng/musicradio/bean/music/DolbyResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbgr$a;

.field final synthetic b:Lbgr;


# direct methods
.method constructor <init>(Lbgr;Lbgr$a;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lbgr$1;->b:Lbgr;

    iput-object p2, p0, Lbgr$1;->a:Lbgr$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/music/DolbyResult;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "DolbyDataModel"

    const-string v1, "getDolbyData success"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lbgr$1;->a:Lbgr$a;

    invoke-interface {v0, p1}, Lbgr$a;->a(Lcom/xiaopeng/musicradio/bean/music/DolbyResult;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lbgr$1;->a:Lbgr$a;

    invoke-interface {p1}, Lbgr$a;->a()V

    :goto_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/DolbyResult;

    invoke-virtual {p0, p1}, Lbgr$1;->a(Lcom/xiaopeng/musicradio/bean/music/DolbyResult;)V

    return-void
.end method
