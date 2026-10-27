.class Layw$2;
.super Ljava/lang/Object;
.source "PreloadAllPageAction.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Layw;


# direct methods
.method constructor <init>(Layw;)V
    .locals 0

    .line 62
    iput-object p1, p0, Layw$2;->a:Layw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 65
    iget-object v0, p0, Layw$2;->a:Layw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Layw;->a(Layw;Ljava/util/List;)Ljava/util/List;

    .line 66
    iget-object v0, p0, Layw$2;->a:Layw;

    invoke-static {v0}, Layw;->a(Layw;)Layw$a;

    move-result-object v0

    invoke-interface {v0}, Layw$a;->a()V

    const-string v0, "PreloadAllPageAction"

    const-string v1, "doOnError====accept: "

    .line 67
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Layw$2;->a(Ljava/lang/Throwable;)V

    return-void
.end method
