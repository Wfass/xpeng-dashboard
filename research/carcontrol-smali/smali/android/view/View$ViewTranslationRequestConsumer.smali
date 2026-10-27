.class Landroid/view/View$ViewTranslationRequestConsumer;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewTranslationRequestConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/view/translation/ViewTranslationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private mCalled:Z

.field private final mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)V"
        }
    .end annotation

    .line 31327
    iput-object p1, p0, Landroid/view/View$ViewTranslationRequestConsumer;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31328
    iput-object p2, p0, Landroid/view/View$ViewTranslationRequestConsumer;->mRequests:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Landroid/view/translation/ViewTranslationRequest;)V
    .locals 3

    .line 31333
    iget-boolean v0, p0, Landroid/view/View$ViewTranslationRequestConsumer;->mCalled:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 31336
    iput-boolean v0, p0, Landroid/view/View$ViewTranslationRequestConsumer;->mCalled:Z

    if-eqz p1, :cond_1

    .line 31337
    invoke-virtual {p1}, Landroid/view/translation/ViewTranslationRequest;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 31338
    iget-object v1, p0, Landroid/view/View$ViewTranslationRequestConsumer;->mRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    const-string v1, "View.ContentCapture"

    .line 31339
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31340
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling setHasTransientState(true) for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/view/View$ViewTranslationRequestConsumer;->this$0:Landroid/view/View;

    .line 31341
    invoke-virtual {v2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31340
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31343
    :cond_0
    iget-object p1, p0, Landroid/view/View$ViewTranslationRequestConsumer;->this$0:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setHasTransientState(Z)V

    .line 31344
    iget-object p1, p0, Landroid/view/View$ViewTranslationRequestConsumer;->this$0:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setHasTranslationTransientState(Z)V

    :cond_1
    return-void

    .line 31334
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The translation Consumer is not reusable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 31323
    check-cast p1, Landroid/view/translation/ViewTranslationRequest;

    invoke-virtual {p0, p1}, Landroid/view/View$ViewTranslationRequestConsumer;->accept(Landroid/view/translation/ViewTranslationRequest;)V

    return-void
.end method
