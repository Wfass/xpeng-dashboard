.class Lbes$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lber;

.field final synthetic b:Lbes;


# direct methods
.method constructor <init>(Lbes;Lber;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lbes$2;->b:Lbes;

    iput-object p2, p0, Lbes$2;->a:Lber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lbes$2;->a:Lber;

    invoke-interface {p1}, Lber;->a()V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lbes$2;->a(Ljava/lang/Throwable;)V

    return-void
.end method
