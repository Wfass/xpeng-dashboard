.class Lbhi$a$1;
.super Ljava/lang/Object;
.source "NeteaseDown.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhi$a;->g()V
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
.field final synthetic a:Lbhi$a;


# direct methods
.method constructor <init>(Lbhi$a;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lbhi$a$1;->a:Lbhi$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 1

    .line 393
    iget-object p1, p0, Lbhi$a$1;->a:Lbhi$a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbhi$a;->a(Lbhi$a;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    .line 394
    iget-object p1, p0, Lbhi$a$1;->a:Lbhi$a;

    invoke-static {p1}, Lbhi$a;->e(Lbhi$a;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 390
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lbhi$a$1;->a(Ljava/lang/Long;)V

    return-void
.end method
