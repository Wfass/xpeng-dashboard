.class Lbjq$2;
.super Ljava/lang/Object;
.source "ConMainModel.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbjq;->a(Lbjq$b;Ljava/lang/String;IIII)V
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
.field final synthetic a:Lbjq$b;

.field final synthetic b:Lbjq;


# direct methods
.method constructor <init>(Lbjq;Lbjq$b;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lbjq$2;->b:Lbjq;

    iput-object p2, p0, Lbjq$2;->a:Lbjq$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "ConMainModel"

    const-string v0, "accept: getConMain error"

    .line 70
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p1, p0, Lbjq$2;->a:Lbjq$b;

    invoke-interface {p1}, Lbjq$b;->a()V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lbjq$2;->a(Ljava/lang/Throwable;)V

    return-void
.end method
