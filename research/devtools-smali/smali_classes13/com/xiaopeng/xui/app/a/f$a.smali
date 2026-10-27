.class Lcom/xiaopeng/xui/app/a/f$a;
.super Lcom/xiaopeng/xui/app/a/f;
.source "XActivityDismissCauseGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private aaB:Lcom/xiaopeng/xui/app/a/e$d;

.field private aaE:Lcom/xiaopeng/xui/app/a/e$e;

.field private aaF:Lcom/xiaopeng/xui/app/a/e$i;

.field private aaG:Lcom/xiaopeng/xui/app/a/e$g;

.field private aaH:Lcom/xiaopeng/xui/app/a/e$a;

.field private aaz:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xui/app/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/a/e$d;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/a/f;-><init>()V

    .line 54
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaz:Landroid/util/ArraySet;

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/xui/app/a/f$a;->mActivity:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaB:Lcom/xiaopeng/xui/app/a/e$d;

    .line 61
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaH:Lcom/xiaopeng/xui/app/a/e$a;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaH:Lcom/xiaopeng/xui/app/a/e$a;

    invoke-interface {v0}, Lcom/xiaopeng/xui/app/a/e$a;->onBackPressed()V

    .line 154
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaz:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/a/h;

    .line 103
    invoke-interface {v1, p1}, Lcom/xiaopeng/xui/app/a/h;->onCreate(Landroid/os/Bundle;)V

    .line 104
    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaz:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/a/h;

    .line 145
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/a/h;->onDestroy()V

    .line 146
    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaz:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/a/h;

    .line 131
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/a/h;->onPause()V

    .line 132
    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaz:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/a/h;

    .line 117
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/a/h;->onResume()V

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaz:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/a/h;

    .line 110
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/a/h;->onStart()V

    .line 111
    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaz:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/a/h;

    .line 138
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/a/h;->onStop()V

    .line 139
    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaG:Lcom/xiaopeng/xui/app/a/e$g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaG:Lcom/xiaopeng/xui/app/a/e$g;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/app/a/e$g;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public qA()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaE:Lcom/xiaopeng/xui/app/a/e$e;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaE:Lcom/xiaopeng/xui/app/a/e$e;

    invoke-interface {v0}, Lcom/xiaopeng/xui/app/a/e$e;->qA()V

    .line 161
    :cond_0
    return-void
.end method

.method public qB()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaF:Lcom/xiaopeng/xui/app/a/e$i;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaF:Lcom/xiaopeng/xui/app/a/e$i;

    invoke-interface {v0}, Lcom/xiaopeng/xui/app/a/e$i;->qB()V

    .line 180
    :cond_0
    return-void
.end method

.method public qC()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaB:Lcom/xiaopeng/xui/app/a/e$d;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/a/e;->b(Landroid/app/Activity;Lcom/xiaopeng/xui/app/a/e$d;)Lcom/xiaopeng/xui/app/a/e$e;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaE:Lcom/xiaopeng/xui/app/a/e$e;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaz:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaE:Lcom/xiaopeng/xui/app/a/e$e;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public qD()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaB:Lcom/xiaopeng/xui/app/a/e$d;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/a/e;->c(Landroid/app/Activity;Lcom/xiaopeng/xui/app/a/e$d;)Lcom/xiaopeng/xui/app/a/e$i;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaF:Lcom/xiaopeng/xui/app/a/e$i;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaz:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaF:Lcom/xiaopeng/xui/app/a/e$i;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public qE()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaB:Lcom/xiaopeng/xui/app/a/e$d;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/a/e;->d(Landroid/app/Activity;Lcom/xiaopeng/xui/app/a/e$d;)Lcom/xiaopeng/xui/app/a/e$g;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaG:Lcom/xiaopeng/xui/app/a/e$g;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaz:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaG:Lcom/xiaopeng/xui/app/a/e$g;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public qF()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaB:Lcom/xiaopeng/xui/app/a/e$d;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/a/e;->a(Landroid/app/Activity;Lcom/xiaopeng/xui/app/a/e$d;)Lcom/xiaopeng/xui/app/a/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaH:Lcom/xiaopeng/xui/app/a/e$a;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaz:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaH:Lcom/xiaopeng/xui/app/a/e$a;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public qG()Lcom/xiaopeng/xui/app/a/e$e;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaE:Lcom/xiaopeng/xui/app/a/e$e;

    return-object v0
.end method

.method public qy()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaz:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/a/h;

    .line 124
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/a/h;->qy()V

    .line 125
    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ mBackSceneInspect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaH:Lcom/xiaopeng/xui/app/a/e$a;

    if-eqz v1, :cond_0

    const-string v1, "has"

    goto :goto_0

    :cond_0
    const-string v1, "no"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOnPauseSceneInspect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaE:Lcom/xiaopeng/xui/app/a/e$e;

    if-eqz v1, :cond_1

    const-string v1, "has"

    goto :goto_1

    :cond_1
    const-string v1, "no"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOutSideSceneInspect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaG:Lcom/xiaopeng/xui/app/a/e$g;

    if-eqz v1, :cond_2

    const-string v1, "has"

    goto :goto_2

    :cond_2
    const-string v1, "no"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSpeedTimeOutSceneInspect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/f$a;->aaF:Lcom/xiaopeng/xui/app/a/e$i;

    if-eqz v1, :cond_3

    const-string v1, "has"

    goto :goto_3

    :cond_3
    const-string v1, "no"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
