.class public Lcom/xiaopeng/musicradio/commonui/navigation/c;
.super Ljava/lang/Object;
.source "NavFragmentManager.java"


# instance fields
.field private a:Landroidx/navigation/e;

.field private b:Landroidx/navigation/fragment/b;

.field private c:Landroidx/navigation/NavGraph;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p2}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/e;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a:Landroidx/navigation/e;

    .line 41
    instance-of v0, p1, Lcom/xiaopeng/musicradio/commonui/base/b;

    if-eqz v0, :cond_0

    .line 42
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/base/b;->b()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Laqv$d;->tag_frag_nav_id:I

    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Laqv$d;->tag_frag_nav_id:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 46
    :goto_0
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/navigation/a;

    .line 47
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getId()I

    move-result p2

    invoke-direct {v0, p1, v1, p2}, Lcom/xiaopeng/musicradio/commonui/navigation/a;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->b:Landroidx/navigation/fragment/b;

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a:Landroidx/navigation/e;

    invoke-virtual {p1}, Landroidx/navigation/e;->a()Landroidx/navigation/q;

    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->b:Landroidx/navigation/fragment/b;

    invoke-virtual {p1, p2}, Landroidx/navigation/q;->a(Landroidx/navigation/p;)Landroidx/navigation/p;

    .line 53
    new-instance p2, Landroidx/navigation/NavGraph;

    new-instance v0, Landroidx/navigation/j;

    invoke-direct {v0, p1}, Landroidx/navigation/j;-><init>(Landroidx/navigation/q;)V

    invoke-direct {p2, v0}, Landroidx/navigation/NavGraph;-><init>(Landroidx/navigation/p;)V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->c:Landroidx/navigation/NavGraph;

    .line 55
    invoke-direct {p0, p3}, Lcom/xiaopeng/musicradio/commonui/navigation/c;->b(Ljava/lang/String;)Landroidx/navigation/fragment/b$a;

    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {p2, p1}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/i;)V

    .line 57
    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {p1}, Landroidx/navigation/fragment/b$a;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/navigation/NavGraph;->setStartDestination(I)V

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NavFragmentManager: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/navigation/fragment/b$a;->getId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " homePath = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NavFragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a:Landroidx/navigation/e;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {p1, p2}, Landroidx/navigation/e;->a(Landroidx/navigation/NavGraph;)V

    return-void
.end method

.method private a(Ljava/lang/Class;I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1

    .line 126
    :cond_0
    iget p1, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->d:I

    const p2, 0x7ffffff5

    if-ge p1, p2, :cond_1

    add-int/2addr p1, v0

    .line 127
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->d:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 129
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->d:I

    .line 131
    :goto_0
    iget p1, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->d:I

    return p1
.end method

.method private b(Ljava/lang/Class;I)Landroidx/navigation/fragment/b$a;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->b:Landroidx/navigation/fragment/b;

    invoke-virtual {v0}, Landroidx/navigation/fragment/b;->a()Landroidx/navigation/fragment/b$a;

    move-result-object v0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a(Ljava/lang/Class;I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/navigation/fragment/b$a;->setId(I)V

    .line 137
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/navigation/fragment/b$a;->a(Ljava/lang/String;)Landroidx/navigation/fragment/b$a;

    .line 138
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/navigation/fragment/b$a;->setLabel(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroidx/navigation/fragment/b$a;
    .locals 3

    .line 107
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 108
    invoke-static {p1}, Lpk;->a(Lcom/alibaba/android/arouter/facade/Postcard;)V

    .line 110
    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->getDestination()Ljava/lang/Class;

    move-result-object v0

    .line 111
    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->getExtra()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a(Ljava/lang/Class;I)I

    move-result v1

    .line 112
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v2, v1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/i;

    move-result-object v2

    if-nez v2, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->getExtra()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/musicradio/commonui/navigation/c;->b(Ljava/lang/Class;I)Landroidx/navigation/fragment/b$a;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/i;)V

    return-object p1

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {p1, v1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/i;

    move-result-object p1

    check-cast p1, Landroidx/navigation/fragment/b$a;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a:Landroidx/navigation/e;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result v0

    const-string v1, " getCurrentDestination = "

    const-string v2, "NavFragmentManager"

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pop shake: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a:Landroidx/navigation/e;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a:Landroidx/navigation/e;

    invoke-virtual {v1}, Landroidx/navigation/e;->d()Landroidx/navigation/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pop: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a:Landroidx/navigation/e;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a:Landroidx/navigation/e;

    invoke-virtual {v1}, Landroidx/navigation/e;->d()Landroidx/navigation/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a:Landroidx/navigation/e;

    invoke-virtual {v0}, Landroidx/navigation/e;->b()Z

    move-result v0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 2

    .line 64
    instance-of v0, p1, Lcom/xiaopeng/musicradio/commonui/base/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 65
    check-cast p1, Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/base/b;->b()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Laqv$d;->tag_frag_nav_id:I

    invoke-virtual {p1, p2, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget p2, Laqv$d;->tag_frag_nav_id:I

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 76
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/navigation/c;->b(Ljava/lang/String;)Landroidx/navigation/fragment/b$a;

    move-result-object v0

    .line 77
    new-instance v1, Landroidx/navigation/m$a;

    invoke-direct {v1}, Landroidx/navigation/m$a;-><init>()V

    .line 78
    invoke-virtual {v0}, Landroidx/navigation/fragment/b$a;->getId()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroidx/navigation/m$a;->a(IZ)Landroidx/navigation/m$a;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroidx/navigation/m$a;->a()Landroidx/navigation/m;

    move-result-object v0

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a(Ljava/lang/String;Landroid/os/Bundle;Landroidx/navigation/p$a;Landroidx/navigation/m;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Landroidx/navigation/p$a;Landroidx/navigation/m;)V
    .locals 5

    .line 97
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/navigation/c;->b(Ljava/lang/String;)Landroidx/navigation/fragment/b$a;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " destination = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mNavController.getCurrentDestination() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a:Landroidx/navigation/e;

    invoke-virtual {v3}, Landroidx/navigation/e;->d()Landroidx/navigation/i;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NavFragmentManager"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a:Landroidx/navigation/e;

    invoke-virtual {v1}, Landroidx/navigation/e;->d()Landroidx/navigation/i;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a:Landroidx/navigation/e;

    invoke-virtual {v1}, Landroidx/navigation/e;->d()Landroidx/navigation/i;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/i;->getId()I

    move-result v1

    invoke-virtual {v0}, Landroidx/navigation/fragment/b$a;->getId()I

    move-result v4

    if-eq v1, v4, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a:Landroidx/navigation/e;

    invoke-virtual {v0}, Landroidx/navigation/fragment/b$a;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p2, p4, p3}, Landroidx/navigation/e;->a(ILandroid/os/Bundle;Landroidx/navigation/m;Landroidx/navigation/p$a;)V

    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a(Ljava/lang/String;Landroid/os/Bundle;Landroidx/navigation/p$a;Landroidx/navigation/m;)V

    return-void
.end method
