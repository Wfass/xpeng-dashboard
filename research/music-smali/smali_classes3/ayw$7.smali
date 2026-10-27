.class Layw$7;
.super Ljava/lang/Object;
.source "PreloadAllPageAction.java"

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layw;->a(Ljava/util/List;ILayw$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiConsumer<",
        "Ljava/util/List<",
        "TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Layw;


# direct methods
.method constructor <init>(Layw;)V
    .locals 0

    .line 117
    iput-object p1, p0, Layw$7;->a:Layw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 120
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Layw$7;->a(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method
