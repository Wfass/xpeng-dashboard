.class Lask$e$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AudioFocusModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lask$e;->a(Lask$d;)V
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

    .line 1026
    iput-object p1, p0, Lask$e$6;->b:Lask$e;

    iput-object p2, p0, Lask$e$6;->a:Lask$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1034
    iget-object p1, p0, Lask$e$6;->a:Lask$d;

    invoke-interface {p1}, Lask$d;->changeState()V

    const-string p1, "AudioFocusModel"

    const-string v0, "fvd aend: "

    .line 1035
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "AudioFocusModel"

    const-string v0, "fvd astart: "

    .line 1029
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
