.class Lbgr$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbgr$a;

.field final synthetic b:Lbgr;


# direct methods
.method constructor <init>(Lbgr;Lbgr$a;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lbgr$2;->b:Lbgr;

    iput-object p2, p0, Lbgr$2;->a:Lbgr$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lbgr$2;->a:Lbgr$a;

    invoke-interface {p1}, Lbgr$a;->a()V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 116
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lbgr$2;->a(Ljava/lang/Throwable;)V

    return-void
.end method
