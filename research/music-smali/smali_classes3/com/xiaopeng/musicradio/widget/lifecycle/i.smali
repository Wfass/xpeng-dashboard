.class public Lcom/xiaopeng/musicradio/widget/lifecycle/i;
.super Ljava/lang/Object;
.source "ViewLifecycleDelegate.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/e;
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/f;
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/g;


# instance fields
.field protected a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/widget/lifecycle/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->a:Z

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V
    .locals 3

    .line 82
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onCreate()V

    .line 83
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onCreateView()V

    .line 84
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onStart()V

    .line 85
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onResume()V

    .line 86
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 87
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bz;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onSupportVisible()V

    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onSupportInvisible()V

    .line 92
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 93
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 94
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bz;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onSupportInvisible()V

    .line 97
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onPause()V

    .line 98
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onStop()V

    .line 103
    :cond_1
    instance-of v0, p1, Lcom/xiaopeng/musicradio/widget/lifecycle/g;

    if-eqz v0, :cond_2

    .line 104
    check-cast p1, Lcom/xiaopeng/musicradio/widget/lifecycle/g;

    .line 105
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/g;->hasRegist()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/g;->register()V

    :cond_2
    return-void
.end method

.method private b(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V
    .locals 1

    .line 112
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onSupportInvisible()V

    .line 113
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onPause()V

    .line 114
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onStop()V

    .line 115
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onDestroyView()V

    .line 116
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onDestroy()V

    .line 118
    instance-of v0, p1, Lcom/xiaopeng/musicradio/widget/lifecycle/g;

    if-eqz v0, :cond_0

    .line 119
    check-cast p1, Lcom/xiaopeng/musicradio/widget/lifecycle/g;

    .line 120
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/g;->unregister()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 2

    .line 42
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->a:Z

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    if-nez v0, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 48
    instance-of v1, p1, Lcom/xiaopeng/musicradio/widget/lifecycle/f;

    if-eqz v1, :cond_1

    .line 49
    check-cast p1, Lcom/xiaopeng/musicradio/widget/lifecycle/f;

    .line 50
    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/f;->registerSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V

    .line 53
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->a(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V

    return-void

    .line 56
    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    .line 58
    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->a(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 2

    .line 62
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->a:Z

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    if-nez v0, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 68
    instance-of v1, p1, Lcom/xiaopeng/musicradio/widget/lifecycle/f;

    if-eqz v1, :cond_1

    .line 69
    check-cast p1, Lcom/xiaopeng/musicradio/widget/lifecycle/f;

    .line 70
    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/f;->unregisterSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V

    .line 73
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V

    return-void

    .line 76
    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    .line 78
    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public hasRegist()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->a:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    .line 241
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    .line 166
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onCreate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateView()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    .line 173
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onCreateView()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    .line 234
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    .line 227
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onDestroyView()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    .line 159
    invoke-interface {v1, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onParentAnimationEnd()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    .line 293
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onParentAnimationEnd()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onParentAnimationStart()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    .line 286
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onParentAnimationStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    .line 207
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 208
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bz;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onPause()V

    goto :goto_0

    .line 212
    :cond_1
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onPause()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    .line 194
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 195
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bz;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onResume()V

    goto :goto_0

    .line 199
    :cond_1
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onResume()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    .line 187
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    .line 220
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSupportInvisible()V
    .locals 3

    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->c:Z

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    .line 272
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 273
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bz;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onSupportInvisible()V

    goto :goto_0

    .line 278
    :cond_1
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onSupportInvisible()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSupportVisible()V
    .locals 7

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->c:Z

    .line 248
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    .line 249
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 250
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bz;->a(Landroid/view/View;)Z

    move-result v4

    .line 251
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 253
    instance-of v6, v5, Landroid/app/Activity;

    if-eqz v6, :cond_1

    .line 254
    invoke-static {v5}, Lcom/xiaopeng/musicradio/utils/b;->a(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 255
    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bz;->b(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    .line 260
    invoke-interface {v2}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onSupportVisible()V

    goto :goto_0

    .line 263
    :cond_2
    invoke-interface {v2}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onSupportVisible()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    .line 180
    invoke-interface {v1, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/e;->onWindowFocusChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public register()V
    .locals 1

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->a:Z

    return-void
.end method

.method public registerSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V
    .locals 3

    .line 126
    instance-of v0, p1, Lcom/xiaopeng/musicradio/widget/lifecycle/g;

    if-eqz v0, :cond_0

    .line 127
    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/lifecycle/g;

    .line 128
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/widget/lifecycle/g;->hasRegist()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    if-ne v2, p1, :cond_1

    return-void

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    .line 141
    check-cast p1, Lcom/xiaopeng/musicradio/widget/lifecycle/g;

    .line 142
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/g;->register()V

    :cond_3
    return-void
.end method

.method public unregister()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->a:Z

    return-void
.end method

.method public unregisterSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 150
    instance-of v0, p1, Lcom/xiaopeng/musicradio/widget/lifecycle/g;

    if-eqz v0, :cond_0

    .line 151
    check-cast p1, Lcom/xiaopeng/musicradio/widget/lifecycle/g;

    .line 152
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/g;->unregister()V

    :cond_0
    return-void
.end method
