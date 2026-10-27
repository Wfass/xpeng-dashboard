.class Lask$e$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AudioFocusModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lask$e;->b(Lask$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lask$e;


# direct methods
.method constructor <init>(Lask$e;)V
    .locals 0

    .line 920
    iput-object p1, p0, Lask$e$4;->a:Lask$e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 923
    iget-object p1, p0, Lask$e$4;->a:Lask$e;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lask$e;->a(Lask$e;F)F

    return-void
.end method
