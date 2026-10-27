.class Lask$e$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AudioFocusModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lask$e;->a(Lask$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lask$e;


# direct methods
.method constructor <init>(Lask$e;F)V
    .locals 0

    .line 879
    iput-object p1, p0, Lask$e$2;->b:Lask$e;

    iput p2, p0, Lask$e$2;->a:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 882
    iget-object p1, p0, Lask$e$2;->b:Lask$e;

    iget v0, p0, Lask$e$2;->a:F

    invoke-static {p1, v0}, Lask$e;->a(Lask$e;F)F

    return-void
.end method
