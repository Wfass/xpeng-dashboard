.class Lask$e$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AudioFocusModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lask$e;->b(Lask$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lask$d;

.field final synthetic b:Lask$e;


# direct methods
.method constructor <init>(Lask$e;Lask$d;)V
    .locals 0

    .line 1070
    iput-object p1, p0, Lask$e$8;->b:Lask$e;

    iput-object p2, p0, Lask$e$8;->a:Lask$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1080
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fvp aend:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lask$e$8;->b:Lask$e;

    iget-object v0, v0, Lask$e;->a:Lask;

    invoke-virtual {v0}, Lask;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioFocusModel"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object p1, p0, Lask$e$8;->b:Lask$e;

    iget-object p1, p1, Lask$e;->a:Lask;

    invoke-virtual {p1}, Lask;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1082
    iget-object p1, p0, Lask$e$8;->b:Lask$e;

    invoke-static {p1}, Lask$e;->a(Lask$e;)F

    move-result v0

    invoke-static {p1, v0}, Lask$e;->b(Lask$e;F)F

    .line 1083
    iget-object p1, p0, Lask$e$8;->a:Lask$d;

    iget-object v0, p0, Lask$e$8;->b:Lask$e;

    invoke-static {v0}, Lask$e;->c(Lask$e;)F

    move-result v0

    invoke-interface {p1, v0}, Lask$d;->updateSoundVolume(F)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "AudioFocusModel"

    const-string v0, "fvp astart"

    .line 1073
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget-object p1, p0, Lask$e$8;->a:Lask$d;

    invoke-interface {p1}, Lask$d;->changeState()V

    return-void
.end method
