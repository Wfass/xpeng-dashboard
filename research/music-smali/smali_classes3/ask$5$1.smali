.class Lask$5$1;
.super Ljava/lang/Object;
.source "AudioFocusModel.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lask$5;->onAudioFocusChange(I)V
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
.field final synthetic a:I

.field final synthetic b:Lask$5;


# direct methods
.method constructor <init>(Lask$5;I)V
    .locals 0

    .line 370
    iput-object p1, p0, Lask$5$1;->b:Lask$5;

    iput p2, p0, Lask$5$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 3

    .line 373
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->e()I

    move-result p1

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lask$5$1;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lask$5$1;->b:Lask$5;

    iget-object v2, v2, Lask$5;->a:Lask;

    invoke-static {v2}, Lask;->j(Lask;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFocusModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lask$5$1;->b:Lask$5;

    iget-object v0, v0, Lask$5;->a:Lask;

    iget v1, p0, Lask$5$1;->a:I

    invoke-static {v0, v1}, Lask;->c(Lask;I)I

    .line 376
    iget-object v0, p0, Lask$5$1;->b:Lask$5;

    iget-object v0, v0, Lask$5;->a:Lask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lask;->d(Lask;Z)Z

    .line 377
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v1, v2

    .line 378
    :cond_0
    iget p1, p0, Lask$5$1;->a:I

    const/4 v0, -0x3

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 380
    :cond_1
    iget-object p1, p0, Lask$5$1;->b:Lask$5;

    iget-object p1, p1, Lask$5;->a:Lask;

    invoke-static {p1}, Lask;->k(Lask;)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_4

    .line 385
    iget-object p1, p0, Lask$5$1;->b:Lask$5;

    iget-object p1, p1, Lask$5;->a:Lask;

    invoke-static {p1}, Lask;->l(Lask;)V

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 390
    iget-object p1, p0, Lask$5$1;->b:Lask$5;

    iget-object p1, p1, Lask$5;->a:Lask;

    invoke-static {p1}, Lask;->m(Lask;)V

    .line 394
    :cond_4
    :goto_0
    iget-object p1, p0, Lask$5$1;->b:Lask$5;

    iget-object p1, p1, Lask$5;->a:Lask;

    iget v0, p0, Lask$5$1;->a:I

    invoke-static {p1, v0}, Lask;->d(Lask;I)I

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 370
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lask$5$1;->a(Ljava/lang/Long;)V

    return-void
.end method
