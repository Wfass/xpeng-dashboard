.class Lask$6;
.super Ljava/lang/Object;
.source "AudioFocusModel.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lask;->onVolumeChanged(Lcom/xiaopeng/musicradio/event/common/CommonEvent$h;)V
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

.field final synthetic b:Lask;


# direct methods
.method constructor <init>(Lask;I)V
    .locals 0

    .line 650
    iput-object p1, p0, Lask$6;->b:Lask;

    iput p2, p0, Lask$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 5

    .line 653
    invoke-static {}, Laqq;->a()Laqq;

    move-result-object p1

    invoke-virtual {p1}, Laqq;->c()Laqs;

    move-result-object p1

    const-string v0, " isSilence = "

    const-string v1, ", driverJoyMode:"

    const-string v2, "onVolumeChanged, isInCall:"

    const-string v3, "AudioFocusModel"

    if-eqz p1, :cond_0

    .line 655
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lask$6;->b:Lask;

    invoke-static {v2}, Lask;->n(Lask;)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Layg;->a()Layg;

    move-result-object v1

    invoke-virtual {v1}, Layg;->d()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->c()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " focusChange = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Laqs;->e()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-static {v3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 658
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lask$6;->b:Lask;

    invoke-static {v2}, Lask;->n(Lask;)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Layg;->a()Layg;

    move-result-object v1

    invoke-virtual {v1}, Layg;->d()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->c()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-static {v3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    :goto_0
    iget-object v0, p0, Lask$6;->b:Lask;

    invoke-static {v0}, Lask;->n(Lask;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Laqs;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 662
    :cond_2
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 663
    iget-object p1, p0, Lask$6;->b:Lask;

    invoke-static {p1}, Lask;->o(Lask;)V

    goto :goto_1

    .line 665
    :cond_3
    iget-object p1, p0, Lask$6;->b:Lask;

    invoke-virtual {p1}, Lask;->e()Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lask$6;->a:I

    if-nez p1, :cond_4

    const-string p1, "onVolumeChanged notifyPlayMusic"

    .line 667
    invoke-static {v3, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    iget-object p1, p0, Lask$6;->b:Lask;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lask;->a(Lask;I)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 650
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lask$6;->a(Ljava/lang/Long;)V

    return-void
.end method
