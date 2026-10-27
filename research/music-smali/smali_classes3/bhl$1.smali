.class Lbhl$1;
.super Landroid/os/CountDownTimer;
.source "SongQualityGuidePopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhl;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbhl;


# direct methods
.method constructor <init>(Lbhl;JJ)V
    .locals 0

    .line 60
    iput-object p1, p0, Lbhl$1;->a:Lbhl;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 67
    iget-object v0, p0, Lbhl$1;->a:Lbhl;

    invoke-virtual {v0}, Lbhl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lbhl$1;->a:Lbhl;

    invoke-virtual {v0}, Lbhl;->dismiss()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
