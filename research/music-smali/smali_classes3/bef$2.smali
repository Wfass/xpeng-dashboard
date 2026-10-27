.class Lbef$2;
.super Ljava/lang/Object;
.source "AuthModelImpl.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbef;->b(Lbdm$b;)V
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
.field final synthetic a:Lbdm$b;

.field final synthetic b:Lbef;


# direct methods
.method constructor <init>(Lbef;Lbdm$b;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lbef$2;->b:Lbef;

    iput-object p2, p0, Lbef$2;->a:Lbdm$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 1

    .line 252
    iget-object p1, p0, Lbef$2;->b:Lbef;

    iget-object v0, p0, Lbef$2;->a:Lbdm$b;

    invoke-virtual {p1, v0}, Lbef;->a(Lbdm$b;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 249
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lbef$2;->a(Ljava/lang/Long;)V

    return-void
.end method
