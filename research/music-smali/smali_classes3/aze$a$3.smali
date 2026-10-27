.class Laze$a$3;
.super Ljava/lang/Object;
.source "ProgramFetchModel.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laze$a;->a(ILjava/util/List;)V
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
.field final synthetic a:Laze$a;


# direct methods
.method constructor <init>(Laze$a;)V
    .locals 0

    .line 245
    iput-object p1, p0, Laze$a$3;->a:Laze$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 4

    .line 248
    invoke-static {}, Laze;->a()Laze;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accept Throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Laze$a$3;->a:Laze$a;

    invoke-static {v1}, Laze$a;->a(Laze$a;)J

    move-result-wide v1

    const/4 v3, -0x1

    invoke-static {v0, v3, p1, v1, v2}, Laze;->a(Laze;ILjava/lang/String;J)V

    .line 249
    iget-object p1, p0, Laze$a$3;->a:Laze$a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Laze$a;->a(Laze$a;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    .line 250
    iget-object p1, p0, Laze$a$3;->a:Laze$a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Laze$a;->a(Laze$a;Z)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 245
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Laze$a$3;->a(Ljava/lang/Throwable;)V

    return-void
.end method
