.class public Lcom/xiaopeng/musicradio/commonui/navigation/a;
.super Landroidx/navigation/fragment/b;
.source "FixFragmentNavigator.java"


# annotations
.annotation runtime Landroidx/navigation/p$b;
    a = "ignore"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/fragment/app/FragmentManager;

.field private final c:I

.field private d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/fragment/b;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->a:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->b:Landroidx/fragment/app/FragmentManager;

    .line 42
    iput p3, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->c:I

    .line 45
    :try_start_0
    const-class p1, Landroidx/navigation/fragment/b;

    const-string p2, "d"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayDeque;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->d:Ljava/util/ArrayDeque;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(II)Ljava/lang/String;
    .locals 1

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroidx/navigation/fragment/b$a;Landroid/os/Bundle;Landroidx/navigation/m;Landroidx/navigation/p$a;)Landroidx/navigation/i;
    .locals 9

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "FragmentNavigator"

    const-string p2, "Ignoring navigate() call: FragmentManager has already saved its state"

    .line 58
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroidx/navigation/fragment/b$a;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz p3, :cond_2

    .line 67
    invoke-virtual {p3}, Landroidx/navigation/m;->d()I

    move-result v5

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    if-eqz p3, :cond_3

    .line 68
    invoke-virtual {p3}, Landroidx/navigation/m;->e()I

    move-result v6

    goto :goto_1

    :cond_3
    move v6, v4

    :goto_1
    if-eqz p3, :cond_4

    .line 69
    invoke-virtual {p3}, Landroidx/navigation/m;->f()I

    move-result v7

    goto :goto_2

    :cond_4
    move v7, v4

    :goto_2
    if-eqz p3, :cond_5

    .line 70
    invoke-virtual {p3}, Landroidx/navigation/m;->g()I

    move-result v8

    goto :goto_3

    :cond_5
    move v8, v4

    :goto_3
    if-ne v5, v4, :cond_6

    if-ne v6, v4, :cond_6

    if-ne v7, v4, :cond_6

    if-eq v8, v4, :cond_b

    :cond_6
    if-eq v5, v4, :cond_7

    goto :goto_4

    :cond_7
    move v5, v2

    :goto_4
    if-eq v6, v4, :cond_8

    goto :goto_5

    :cond_8
    move v6, v2

    :goto_5
    if-eq v7, v4, :cond_9

    goto :goto_6

    :cond_9
    move v7, v2

    :goto_6
    if-eq v8, v4, :cond_a

    goto :goto_7

    :cond_a
    move v8, v2

    .line 76
    :goto_7
    invoke-virtual {v3, v5, v6, v7, v8}, Landroidx/fragment/app/p;->a(IIII)Landroidx/fragment/app/p;

    :cond_b
    const/4 v4, 0x1

    if-eqz p3, :cond_c

    .line 79
    invoke-virtual {p3}, Landroidx/navigation/m;->c()Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v4

    goto :goto_8

    :cond_c
    move v5, v2

    :goto_8
    if-eqz v5, :cond_d

    .line 82
    iget-object v5, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    goto :goto_9

    :cond_d
    move-object v5, v1

    :goto_9
    if-nez v5, :cond_e

    .line 85
    iget-object v5, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0, v5, v6, v0, p2}, Lcom/xiaopeng/musicradio/commonui/navigation/a;->a(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    .line 87
    :cond_e
    invoke-virtual {v5, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 91
    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_10

    .line 92
    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p2

    iget-object v6, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    .line 93
    invoke-virtual {v3, p2}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    .line 94
    sget-object v6, Landroidx/lifecycle/j$b;->STARTED:Landroidx/lifecycle/j$b;

    invoke-virtual {v3, p2, v6}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/j$b;)Landroidx/fragment/app/p;

    .line 95
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 96
    invoke-virtual {v3, v5}, Landroidx/fragment/app/p;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    goto :goto_a

    .line 98
    :cond_f
    iget p2, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->c:I

    invoke-virtual {v3, p2, v5, v0}, Landroidx/fragment/app/p;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    goto :goto_a

    .line 101
    :cond_10
    iget p2, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->c:I

    invoke-virtual {v3, p2, v5, v0}, Landroidx/fragment/app/p;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 104
    :goto_a
    invoke-virtual {v3, v5}, Landroidx/fragment/app/p;->e(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    .line 105
    invoke-virtual {p1}, Landroidx/navigation/fragment/b$a;->getId()I

    move-result p2

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz p3, :cond_11

    if-nez v0, :cond_11

    .line 107
    invoke-virtual {p3}, Landroidx/navigation/m;->a()Z

    move-result p3

    if-eqz p3, :cond_11

    iget-object p3, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, p2, :cond_11

    move p3, v4

    goto :goto_b

    :cond_11
    move p3, v2

    :goto_b
    if-eqz v0, :cond_12

    :goto_c
    move v2, v4

    goto :goto_d

    :cond_12
    if-eqz p3, :cond_13

    .line 112
    iget-object p3, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->size()I

    move-result p3

    if-le p3, v4, :cond_14

    .line 113
    iget-object p3, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->b:Landroidx/fragment/app/FragmentManager;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget-object v5, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v0, v5}, Lcom/xiaopeng/musicradio/commonui/navigation/a;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v4}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 114
    iget-object p3, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->size()I

    move-result p3

    invoke-direct {p0, p3, p2}, Lcom/xiaopeng/musicradio/commonui/navigation/a;->a(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroidx/fragment/app/p;->a(Ljava/lang/String;)Landroidx/fragment/app/p;

    goto :goto_d

    .line 119
    :cond_13
    iget-object p3, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->size()I

    move-result p3

    add-int/2addr p3, v4

    invoke-direct {p0, p3, p2}, Lcom/xiaopeng/musicradio/commonui/navigation/a;->a(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroidx/fragment/app/p;->a(Ljava/lang/String;)Landroidx/fragment/app/p;

    goto :goto_c

    .line 123
    :cond_14
    :goto_d
    instance-of p3, p4, Landroidx/navigation/fragment/b$b;

    if-eqz p3, :cond_15

    .line 124
    check-cast p4, Landroidx/navigation/fragment/b$b;

    .line 125
    invoke-virtual {p4}, Landroidx/navigation/fragment/b$b;->a()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 127
    :goto_e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_15

    .line 128
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {v3, v0, p4}, Landroidx/fragment/app/p;->a(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/p;

    goto :goto_e

    .line 133
    :cond_15
    invoke-virtual {v3, v4}, Landroidx/fragment/app/p;->c(Z)Landroidx/fragment/app/p;

    .line 134
    invoke-virtual {v3}, Landroidx/fragment/app/p;->b()I

    if-eqz v2, :cond_16

    .line 136
    iget-object p3, p0, Lcom/xiaopeng/musicradio/commonui/navigation/a;->d:Ljava/util/ArrayDeque;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_16
    return-object v1
.end method

.method public bridge synthetic a(Landroidx/navigation/i;Landroid/os/Bundle;Landroidx/navigation/m;Landroidx/navigation/p$a;)Landroidx/navigation/i;
    .locals 0

    .line 27
    check-cast p1, Landroidx/navigation/fragment/b$a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/commonui/navigation/a;->a(Landroidx/navigation/fragment/b$a;Landroid/os/Bundle;Landroidx/navigation/m;Landroidx/navigation/p$a;)Landroidx/navigation/i;

    move-result-object p1

    return-object p1
.end method
