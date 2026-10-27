.class public Landroidx/navigation/e;
.super Ljava/lang/Object;
.source "NavController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/e$a;
    }
.end annotation


# instance fields
.field a:Landroidx/navigation/NavGraph;

.field final b:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private d:Landroid/app/Activity;

.field private e:Landroidx/navigation/l;

.field private f:Landroid/os/Bundle;

.field private g:[Landroid/os/Parcelable;

.field private h:Z

.field private i:Landroidx/lifecycle/n;

.field private j:Landroidx/navigation/f;

.field private k:Landroidx/navigation/q;

.field private final l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/navigation/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroidx/lifecycle/m;

.field private final n:Landroidx/activity/b;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    .line 99
    new-instance v0, Landroidx/navigation/q;

    invoke-direct {v0}, Landroidx/navigation/q;-><init>()V

    iput-object v0, p0, Landroidx/navigation/e;->k:Landroidx/navigation/q;

    .line 101
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/navigation/e;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 104
    new-instance v0, Landroidx/navigation/NavController$1;

    invoke-direct {v0, p0}, Landroidx/navigation/NavController$1;-><init>(Landroidx/navigation/e;)V

    iput-object v0, p0, Landroidx/navigation/e;->m:Landroidx/lifecycle/m;

    .line 115
    new-instance v0, Landroidx/navigation/e$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/navigation/e$1;-><init>(Landroidx/navigation/e;Z)V

    iput-object v0, p0, Landroidx/navigation/e;->n:Landroidx/activity/b;

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Landroidx/navigation/e;->o:Z

    .line 161
    iput-object p1, p0, Landroidx/navigation/e;->c:Landroid/content/Context;

    .line 162
    :goto_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 163
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 164
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Landroidx/navigation/e;->d:Landroid/app/Activity;

    goto :goto_1

    .line 167
    :cond_0
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 169
    :cond_1
    :goto_1
    iget-object p1, p0, Landroidx/navigation/e;->k:Landroidx/navigation/q;

    new-instance v0, Landroidx/navigation/j;

    invoke-direct {v0, p1}, Landroidx/navigation/j;-><init>(Landroidx/navigation/q;)V

    invoke-virtual {p1, v0}, Landroidx/navigation/q;->a(Landroidx/navigation/p;)Landroidx/navigation/p;

    .line 170
    iget-object p1, p0, Landroidx/navigation/e;->k:Landroidx/navigation/q;

    new-instance v0, Landroidx/navigation/a;

    iget-object v1, p0, Landroidx/navigation/e;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/navigation/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/navigation/q;->a(Landroidx/navigation/p;)Landroidx/navigation/p;

    return-void
.end method

.method private a([I)Ljava/lang/String;
    .locals 5

    .line 779
    iget-object v0, p0, Landroidx/navigation/e;->a:Landroidx/navigation/NavGraph;

    const/4 v1, 0x0

    .line 780
    :goto_0
    array-length v2, p1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_5

    .line 781
    aget v2, p1, v1

    if-nez v1, :cond_0

    .line 783
    iget-object v4, p0, Landroidx/navigation/e;->a:Landroidx/navigation/NavGraph;

    invoke-virtual {v4}, Landroidx/navigation/NavGraph;->getId()I

    move-result v4

    if-ne v4, v2, :cond_1

    iget-object v3, p0, Landroidx/navigation/e;->a:Landroidx/navigation/NavGraph;

    goto :goto_1

    .line 784
    :cond_0
    invoke-virtual {v0, v2}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/i;

    move-result-object v3

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 786
    iget-object p1, p0, Landroidx/navigation/e;->c:Landroid/content/Context;

    invoke-static {p1, v2}, Landroidx/navigation/i;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 788
    :cond_2
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_4

    .line 790
    check-cast v3, Landroidx/navigation/NavGraph;

    .line 793
    :goto_2
    invoke-virtual {v3}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v0

    invoke-virtual {v3, v0}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/i;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_3

    .line 794
    invoke-virtual {v3}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v0

    invoke-virtual {v3, v0}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/i;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/navigation/NavGraph;

    goto :goto_2

    :cond_3
    move-object v0, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method private a(Landroidx/navigation/i;Landroid/os/Bundle;Landroidx/navigation/m;Landroidx/navigation/p$a;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1058
    invoke-virtual {p3}, Landroidx/navigation/m;->b()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1059
    invoke-virtual {p3}, Landroidx/navigation/m;->b()I

    move-result v1

    .line 1060
    invoke-virtual {p3}, Landroidx/navigation/m;->c()Z

    move-result v2

    .line 1059
    invoke-virtual {p0, v1, v2}, Landroidx/navigation/e;->b(IZ)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1063
    :goto_0
    iget-object v2, p0, Landroidx/navigation/e;->k:Landroidx/navigation/q;

    .line 1064
    invoke-virtual {p1}, Landroidx/navigation/i;->getNavigatorName()Ljava/lang/String;

    move-result-object v3

    .line 1063
    invoke-virtual {v2, v3}, Landroidx/navigation/q;->a(Ljava/lang/String;)Landroidx/navigation/p;

    move-result-object v2

    .line 1065
    invoke-virtual {p1, p2}, Landroidx/navigation/i;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 1066
    invoke-virtual {v2, p1, p2, p3, p4}, Landroidx/navigation/p;->a(Landroidx/navigation/i;Landroid/os/Bundle;Landroidx/navigation/m;Landroidx/navigation/p$a;)Landroidx/navigation/i;

    move-result-object p4

    const/4 v2, 0x1

    if-eqz p4, :cond_c

    .line 1069
    instance-of p3, p4, Landroidx/navigation/b;

    if-nez p3, :cond_1

    .line 1074
    :goto_1
    iget-object p3, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {p3}, Ljava/util/Deque;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    .line 1075
    invoke-interface {p3}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object p3

    instance-of p3, p3, Landroidx/navigation/b;

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    .line 1077
    invoke-interface {p3}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/navigation/i;->getId()I

    move-result p3

    .line 1076
    invoke-virtual {p0, p3, v2}, Landroidx/navigation/e;->b(IZ)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 1084
    :cond_1
    new-instance p3, Ljava/util/ArrayDeque;

    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    .line 1086
    instance-of v3, p1, Landroidx/navigation/NavGraph;

    if-eqz v3, :cond_4

    move-object v3, p4

    .line 1088
    :goto_2
    invoke-virtual {v3}, Landroidx/navigation/i;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1090
    new-instance v10, Landroidx/navigation/NavBackStackEntry;

    iget-object v4, p0, Landroidx/navigation/e;->c:Landroid/content/Context;

    iget-object v7, p0, Landroidx/navigation/e;->i:Landroidx/lifecycle/n;

    iget-object v8, p0, Landroidx/navigation/e;->j:Landroidx/navigation/f;

    move-object v3, v10

    move-object v5, v9

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroid/content/Context;Landroidx/navigation/i;Landroid/os/Bundle;Landroidx/lifecycle/n;Landroidx/navigation/f;)V

    .line 1092
    invoke-virtual {p3, v10}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1094
    iget-object v3, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    .line 1095
    invoke-interface {v3}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object v3

    if-ne v3, v9, :cond_2

    .line 1096
    invoke-virtual {v9}, Landroidx/navigation/NavGraph;->getId()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Landroidx/navigation/e;->b(IZ)Z

    :cond_2
    if-eqz v9, :cond_4

    if-ne v9, p1, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v9

    goto :goto_2

    .line 1105
    :cond_4
    :goto_3
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    move-object p1, p4

    goto :goto_4

    .line 1107
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object p1

    :cond_6
    :goto_4
    if-eqz p1, :cond_7

    .line 1108
    invoke-virtual {p1}, Landroidx/navigation/i;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/navigation/e;->b(I)Landroidx/navigation/i;

    move-result-object v3

    if-nez v3, :cond_7

    .line 1109
    invoke-virtual {p1}, Landroidx/navigation/i;->getParent()Landroidx/navigation/NavGraph;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1111
    new-instance v9, Landroidx/navigation/NavBackStackEntry;

    iget-object v4, p0, Landroidx/navigation/e;->c:Landroid/content/Context;

    iget-object v7, p0, Landroidx/navigation/e;->i:Landroidx/lifecycle/n;

    iget-object v8, p0, Landroidx/navigation/e;->j:Landroidx/navigation/f;

    move-object v3, v9

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroid/content/Context;Landroidx/navigation/i;Landroid/os/Bundle;Landroidx/lifecycle/n;Landroidx/navigation/f;)V

    .line 1113
    invoke-virtual {p3, v9}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_4

    .line 1117
    :cond_7
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    move-object p1, p4

    goto :goto_5

    .line 1119
    :cond_8
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object p1

    .line 1122
    :goto_5
    iget-object v3, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    .line 1123
    invoke-interface {v3}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object v3

    instance-of v3, v3, Landroidx/navigation/NavGraph;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    .line 1124
    invoke-interface {v3}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavGraph;

    .line 1125
    invoke-virtual {p1}, Landroidx/navigation/i;->getId()I

    move-result v4

    .line 1124
    invoke-virtual {v3, v4, v0}, Landroidx/navigation/NavGraph;->findNode(IZ)Landroidx/navigation/i;

    move-result-object v3

    if-nez v3, :cond_9

    iget-object v3, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    .line 1126
    invoke-interface {v3}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/navigation/i;->getId()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Landroidx/navigation/e;->b(IZ)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_5

    .line 1129
    :cond_9
    iget-object p1, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {p1, p3}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 1131
    iget-object p1, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object p1

    iget-object p3, p0, Landroidx/navigation/e;->a:Landroidx/navigation/NavGraph;

    if-eq p1, p3, :cond_b

    .line 1132
    :cond_a
    new-instance p1, Landroidx/navigation/NavBackStackEntry;

    iget-object v4, p0, Landroidx/navigation/e;->c:Landroid/content/Context;

    iget-object v5, p0, Landroidx/navigation/e;->a:Landroidx/navigation/NavGraph;

    iget-object v7, p0, Landroidx/navigation/e;->i:Landroidx/lifecycle/n;

    iget-object v8, p0, Landroidx/navigation/e;->j:Landroidx/navigation/f;

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroid/content/Context;Landroidx/navigation/i;Landroid/os/Bundle;Landroidx/lifecycle/n;Landroidx/navigation/f;)V

    .line 1134
    iget-object p3, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {p3, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 1137
    :cond_b
    new-instance p1, Landroidx/navigation/NavBackStackEntry;

    iget-object v4, p0, Landroidx/navigation/e;->c:Landroid/content/Context;

    .line 1138
    invoke-virtual {p4, p2}, Landroidx/navigation/i;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Landroidx/navigation/e;->i:Landroidx/lifecycle/n;

    iget-object v8, p0, Landroidx/navigation/e;->j:Landroidx/navigation/f;

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v3 .. v8}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroid/content/Context;Landroidx/navigation/i;Landroid/os/Bundle;Landroidx/lifecycle/n;Landroidx/navigation/f;)V

    .line 1139
    iget-object p2, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {p2, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    if-eqz p3, :cond_e

    .line 1140
    invoke-virtual {p3}, Landroidx/navigation/m;->a()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1142
    iget-object p1, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    if-eqz p1, :cond_d

    .line 1144
    invoke-virtual {p1, p2}, Landroidx/navigation/NavBackStackEntry;->replaceArguments(Landroid/os/Bundle;)V

    :cond_d
    move v0, v2

    .line 1147
    :cond_e
    :goto_6
    invoke-direct {p0}, Landroidx/navigation/e;->i()V

    if-nez v1, :cond_f

    if-nez p4, :cond_f

    if-eqz v0, :cond_10

    .line 1149
    :cond_f
    invoke-direct {p0}, Landroidx/navigation/e;->h()Z

    :cond_10
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    .line 596
    iget-object v1, v0, Landroidx/navigation/e;->f:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    const-string v2, "android-support-nav:controller:navigatorState:names"

    .line 597
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 600
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 601
    iget-object v3, v0, Landroidx/navigation/e;->k:Landroidx/navigation/q;

    invoke-virtual {v3, v2}, Landroidx/navigation/q;->a(Ljava/lang/String;)Landroidx/navigation/p;

    move-result-object v3

    .line 602
    iget-object v4, v0, Landroidx/navigation/e;->f:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 604
    invoke-virtual {v3, v2}, Landroidx/navigation/p;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 609
    :cond_1
    iget-object v1, v0, Landroidx/navigation/e;->g:[Landroid/os/Parcelable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 610
    array-length v4, v1

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v1, v5

    .line 611
    check-cast v6, Landroidx/navigation/NavBackStackEntryState;

    .line 612
    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntryState;->b()I

    move-result v7

    invoke-virtual {v0, v7}, Landroidx/navigation/e;->b(I)Landroidx/navigation/i;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 621
    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntryState;->c()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 623
    iget-object v7, v0, Landroidx/navigation/e;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 625
    :cond_2
    new-instance v7, Landroidx/navigation/NavBackStackEntry;

    iget-object v9, v0, Landroidx/navigation/e;->c:Landroid/content/Context;

    iget-object v12, v0, Landroidx/navigation/e;->i:Landroidx/lifecycle/n;

    iget-object v13, v0, Landroidx/navigation/e;->j:Landroidx/navigation/f;

    .line 627
    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntryState;->a()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntryState;->d()Landroid/os/Bundle;

    move-result-object v15

    move-object v8, v7

    invoke-direct/range {v8 .. v15}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroid/content/Context;Landroidx/navigation/i;Landroid/os/Bundle;Landroidx/lifecycle/n;Landroidx/navigation/f;Ljava/util/UUID;Landroid/os/Bundle;)V

    .line 628
    iget-object v6, v0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v6, v7}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 614
    :cond_3
    iget-object v1, v0, Landroidx/navigation/e;->c:Landroid/content/Context;

    .line 615
    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntryState;->b()I

    move-result v2

    .line 614
    invoke-static {v1, v2}, Landroidx/navigation/i;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 616
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring the Navigation back stack failed: destination "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be found from the current destination "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/e;->d()Landroidx/navigation/i;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 630
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/e;->i()V

    .line 631
    iput-object v3, v0, Landroidx/navigation/e;->g:[Landroid/os/Parcelable;

    .line 633
    :cond_5
    iget-object v1, v0, Landroidx/navigation/e;->a:Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_7

    iget-object v1, v0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 634
    iget-boolean v1, v0, Landroidx/navigation/e;->h:Z

    if-nez v1, :cond_6

    iget-object v1, v0, Landroidx/navigation/e;->d:Landroid/app/Activity;

    if-eqz v1, :cond_6

    .line 635
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/e;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    :cond_6
    if-nez v2, :cond_8

    .line 639
    iget-object v1, v0, Landroidx/navigation/e;->a:Landroidx/navigation/NavGraph;

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/navigation/e;->a(Landroidx/navigation/i;Landroid/os/Bundle;Landroidx/navigation/m;Landroidx/navigation/p$a;)V

    goto :goto_2

    .line 642
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/e;->h()Z

    :cond_8
    :goto_2
    return-void
.end method

.method private g()I
    .locals 3

    .line 412
    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 413
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object v2

    instance-of v2, v2, Landroidx/navigation/NavGraph;

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private h()Z
    .locals 10

    .line 430
    :goto_0
    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    .line 431
    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    .line 432
    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/i;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/e;->b(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 439
    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object v0

    const/4 v2, 0x0

    .line 441
    instance-of v3, v0, Landroidx/navigation/b;

    if-eqz v3, :cond_2

    .line 444
    iget-object v3, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 445
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 446
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object v4

    .line 447
    instance-of v5, v4, Landroidx/navigation/NavGraph;

    if-nez v5, :cond_1

    instance-of v5, v4, Landroidx/navigation/b;

    if-nez v5, :cond_1

    move-object v2, v4

    .line 458
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 459
    iget-object v4, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 460
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 461
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 462
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getMaxLifecycle()Landroidx/lifecycle/j$b;

    move-result-object v6

    .line 463
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object v7

    if-eqz v0, :cond_4

    .line 464
    invoke-virtual {v7}, Landroidx/navigation/i;->getId()I

    move-result v8

    invoke-virtual {v0}, Landroidx/navigation/i;->getId()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 467
    sget-object v7, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    if-eq v6, v7, :cond_3

    .line 468
    sget-object v6, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_3
    invoke-virtual {v0}, Landroidx/navigation/i;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_7

    .line 471
    invoke-virtual {v7}, Landroidx/navigation/i;->getId()I

    move-result v7

    invoke-virtual {v2}, Landroidx/navigation/i;->getId()I

    move-result v8

    if-ne v7, v8, :cond_7

    .line 472
    sget-object v7, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    if-ne v6, v7, :cond_5

    .line 475
    sget-object v6, Landroidx/lifecycle/j$b;->STARTED:Landroidx/lifecycle/j$b;

    invoke-virtual {v5, v6}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/j$b;)V

    goto :goto_2

    .line 476
    :cond_5
    sget-object v7, Landroidx/lifecycle/j$b;->STARTED:Landroidx/lifecycle/j$b;

    if-eq v6, v7, :cond_6

    .line 479
    sget-object v6, Landroidx/lifecycle/j$b;->STARTED:Landroidx/lifecycle/j$b;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :cond_6
    :goto_2
    invoke-virtual {v2}, Landroidx/navigation/i;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v2

    goto :goto_1

    .line 483
    :cond_7
    sget-object v6, Landroidx/lifecycle/j$b;->CREATED:Landroidx/lifecycle/j$b;

    invoke-virtual {v5, v6}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/j$b;)V

    goto :goto_1

    .line 488
    :cond_8
    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 489
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 490
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 491
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/j$b;

    if-eqz v4, :cond_9

    .line 493
    invoke-virtual {v2, v4}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/j$b;)V

    goto :goto_3

    .line 496
    :cond_9
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->updateState()V

    goto :goto_3

    .line 501
    :cond_a
    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 503
    iget-object v2, p0, Landroidx/navigation/e;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/e$a;

    .line 504
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object v4

    .line 505
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    .line 504
    invoke-interface {v3, p0, v4, v5}, Landroidx/navigation/e$a;->a(Landroidx/navigation/e;Landroidx/navigation/i;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_b
    return v1

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private i()V
    .locals 3

    .line 1294
    iget-object v0, p0, Landroidx/navigation/e;->n:Landroidx/activity/b;

    iget-boolean v1, p0, Landroidx/navigation/e;->o:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1295
    invoke-direct {p0}, Landroidx/navigation/e;->g()I

    move-result v1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1294
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/activity/b;->a(Z)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/navigation/q;
    .locals 1

    .line 202
    iget-object v0, p0, Landroidx/navigation/e;->k:Landroidx/navigation/q;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    .line 539
    invoke-virtual {p0, p1, v0}, Landroidx/navigation/e;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 1

    .line 557
    invoke-virtual {p0}, Landroidx/navigation/e;->c()Landroidx/navigation/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/navigation/l;->a(I)Landroidx/navigation/NavGraph;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/e;->a(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(ILandroid/os/Bundle;Landroidx/navigation/m;Landroidx/navigation/p$a;)V
    .locals 5

    .line 893
    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Landroidx/navigation/e;->a:Landroidx/navigation/NavGraph;

    goto :goto_0

    .line 895
    :cond_0
    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_a

    .line 900
    invoke-virtual {v0, p1}, Landroidx/navigation/i;->getAction(I)Landroidx/navigation/c;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez p3, :cond_1

    .line 904
    invoke-virtual {v1}, Landroidx/navigation/c;->b()Landroidx/navigation/m;

    move-result-object p3

    .line 906
    :cond_1
    invoke-virtual {v1}, Landroidx/navigation/c;->a()I

    move-result v3

    .line 907
    invoke-virtual {v1}, Landroidx/navigation/c;->c()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 909
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 910
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    move v3, p1

    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    if-nez v2, :cond_4

    .line 916
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 918
    :cond_4
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_5
    if-nez v3, :cond_6

    if-eqz p3, :cond_6

    .line 921
    invoke-virtual {p3}, Landroidx/navigation/m;->b()I

    move-result p2

    const/4 v4, -0x1

    if-eq p2, v4, :cond_6

    .line 922
    invoke-virtual {p3}, Landroidx/navigation/m;->b()I

    move-result p1

    invoke-virtual {p3}, Landroidx/navigation/m;->c()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/e;->a(IZ)Z

    return-void

    :cond_6
    if-eqz v3, :cond_9

    .line 931
    invoke-virtual {p0, v3}, Landroidx/navigation/e;->b(I)Landroidx/navigation/i;

    move-result-object p2

    if-nez p2, :cond_8

    .line 933
    iget-object p2, p0, Landroidx/navigation/e;->c:Landroid/content/Context;

    invoke-static {p2, v3}, Landroidx/navigation/i;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    const-string p3, " cannot be found from the current destination "

    if-eqz v1, :cond_7

    .line 935
    new-instance p4, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Navigation destination "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " referenced from action "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/navigation/e;->c:Landroid/content/Context;

    .line 937
    invoke-static {p2, p1}, Landroidx/navigation/i;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 940
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Navigation action/destination "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 944
    :cond_8
    invoke-direct {p0, p2, v2, p3, p4}, Landroidx/navigation/e;->a(Landroidx/navigation/i;Landroid/os/Bundle;Landroidx/navigation/m;Landroidx/navigation/p$a;)V

    return-void

    .line 927
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 897
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no current navigation node"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1257
    :cond_0
    iget-object v0, p0, Landroidx/navigation/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "android-support-nav:controller:navigatorState"

    .line 1259
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/e;->f:Landroid/os/Bundle;

    const-string v0, "android-support-nav:controller:backStack"

    .line 1260
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/e;->g:[Landroid/os/Parcelable;

    const-string v0, "android-support-nav:controller:deepLinkHandled"

    .line 1261
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/navigation/e;->h:Z

    return-void
.end method

.method a(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 2

    .line 1273
    iget-object v0, p0, Landroidx/navigation/e;->i:Landroidx/lifecycle/n;

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Landroidx/navigation/e;->n:Landroidx/activity/b;

    invoke-virtual {v0}, Landroidx/activity/b;->b()V

    .line 1280
    iget-object v0, p0, Landroidx/navigation/e;->i:Landroidx/lifecycle/n;

    iget-object v1, p0, Landroidx/navigation/e;->n:Landroidx/activity/b;

    invoke-virtual {p1, v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/n;Landroidx/activity/b;)V

    .line 1284
    iget-object p1, p0, Landroidx/navigation/e;->i:Landroidx/lifecycle/n;

    invoke-interface {p1}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p1

    iget-object v0, p0, Landroidx/navigation/e;->m:Landroidx/lifecycle/m;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/m;)V

    .line 1285
    iget-object p1, p0, Landroidx/navigation/e;->i:Landroidx/lifecycle/n;

    invoke-interface {p1}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p1

    iget-object v0, p0, Landroidx/navigation/e;->m:Landroidx/lifecycle/m;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/m;)V

    return-void

    .line 1274
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Landroidx/lifecycle/ac;)V
    .locals 2

    .line 1299
    iget-object v0, p0, Landroidx/navigation/e;->j:Landroidx/navigation/f;

    invoke-static {p1}, Landroidx/navigation/f;->a(Landroidx/lifecycle/ac;)Landroidx/navigation/f;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 1302
    :cond_0
    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1305
    invoke-static {p1}, Landroidx/navigation/f;->a(Landroidx/lifecycle/ac;)Landroidx/navigation/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/e;->j:Landroidx/navigation/f;

    return-void

    .line 1303
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewModelStore should be set before setGraph call"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Landroidx/lifecycle/n;)V
    .locals 1

    .line 1265
    iget-object v0, p0, Landroidx/navigation/e;->i:Landroidx/lifecycle/n;

    if-ne p1, v0, :cond_0

    return-void

    .line 1268
    :cond_0
    iput-object p1, p0, Landroidx/navigation/e;->i:Landroidx/lifecycle/n;

    .line 1269
    iget-object p1, p0, Landroidx/navigation/e;->i:Landroidx/lifecycle/n;

    invoke-interface {p1}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p1

    iget-object v0, p0, Landroidx/navigation/e;->m:Landroidx/lifecycle/m;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/m;)V

    return-void
.end method

.method public a(Landroidx/navigation/NavGraph;)V
    .locals 1

    const/4 v0, 0x0

    .line 572
    invoke-virtual {p0, p1, v0}, Landroidx/navigation/e;->a(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V
    .locals 2

    .line 587
    iget-object v0, p0, Landroidx/navigation/e;->a:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/e;->b(IZ)Z

    .line 591
    :cond_0
    iput-object p1, p0, Landroidx/navigation/e;->a:Landroidx/navigation/NavGraph;

    .line 592
    invoke-direct {p0, p2}, Landroidx/navigation/e;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method a(Z)V
    .locals 0

    .line 1289
    iput-boolean p1, p0, Landroidx/navigation/e;->o:Z

    .line 1290
    invoke-direct {p0}, Landroidx/navigation/e;->i()V

    return-void
.end method

.method public a(IZ)Z
    .locals 0

    .line 277
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/e;->b(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 280
    invoke-direct {p0}, Landroidx/navigation/e;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 671
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "android-support-nav:controller:deepLinkIds"

    .line 672
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 673
    :goto_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    if-eqz v1, :cond_2

    const-string v5, "android-support-nav:controller:deepLinkExtras"

    .line 674
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 676
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 678
    array-length v1, v3

    if-nez v1, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 679
    iget-object v1, p0, Landroidx/navigation/e;->a:Landroidx/navigation/NavGraph;

    new-instance v5, Landroidx/navigation/h;

    invoke-direct {v5, p1}, Landroidx/navigation/h;-><init>(Landroid/content/Intent;)V

    .line 680
    invoke-virtual {v1, v5}, Landroidx/navigation/NavGraph;->matchDeepLink(Landroidx/navigation/h;)Landroidx/navigation/i$a;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 682
    invoke-virtual {v1}, Landroidx/navigation/i$a;->a()Landroidx/navigation/i;

    move-result-object v3

    .line 683
    invoke-virtual {v3}, Landroidx/navigation/i;->buildDeepLinkIds()[I

    move-result-object v5

    .line 685
    invoke-virtual {v1}, Landroidx/navigation/i$a;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/navigation/i;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 686
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    move-object v3, v5

    :cond_5
    if-eqz v3, :cond_13

    .line 689
    array-length v1, v3

    if-nez v1, :cond_6

    goto/16 :goto_7

    .line 693
    :cond_6
    invoke-direct {p0, v3}, Landroidx/navigation/e;->a([I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find destination "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in the navigation graph, ignoring the deep link from "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NavController"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    const-string v1, "android-support-nav:controller:deepLinkIntent"

    .line 699
    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 700
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v5, 0x10000000

    and-int/2addr v5, v1

    const/4 v6, 0x1

    if-eqz v5, :cond_9

    const v7, 0x8000

    and-int/2addr v1, v7

    if-nez v1, :cond_9

    .line 706
    invoke-virtual {p1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 707
    iget-object v1, p0, Landroidx/navigation/e;->c:Landroid/content/Context;

    .line 708
    invoke-static {v1}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v1

    .line 709
    invoke-virtual {v1, p1}, Landroidx/core/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    move-result-object p1

    .line 710
    invoke-virtual {p1}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 711
    iget-object p1, p0, Landroidx/navigation/e;->d:Landroid/app/Activity;

    if-eqz p1, :cond_8

    .line 712
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 714
    iget-object p1, p0, Landroidx/navigation/e;->d:Landroid/app/Activity;

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_8
    return v6

    :cond_9
    const-string p1, "Deep Linking failed: destination "

    if-eqz v5, :cond_d

    .line 720
    iget-object v1, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 721
    iget-object v1, p0, Landroidx/navigation/e;->a:Landroidx/navigation/NavGraph;

    invoke-virtual {v1}, Landroidx/navigation/NavGraph;->getId()I

    move-result v1

    invoke-virtual {p0, v1, v6}, Landroidx/navigation/e;->b(IZ)Z

    :cond_a
    move v1, v0

    .line 724
    :goto_2
    array-length v5, v3

    if-ge v1, v5, :cond_c

    add-int/lit8 v5, v1, 0x1

    .line 725
    aget v1, v3, v1

    .line 726
    invoke-virtual {p0, v1}, Landroidx/navigation/e;->b(I)Landroidx/navigation/i;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 734
    new-instance v1, Landroidx/navigation/m$a;

    invoke-direct {v1}, Landroidx/navigation/m$a;-><init>()V

    .line 735
    invoke-virtual {v1, v0}, Landroidx/navigation/m$a;->a(I)Landroidx/navigation/m$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/navigation/m$a;->b(I)Landroidx/navigation/m$a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/m$a;->a()Landroidx/navigation/m;

    move-result-object v1

    .line 734
    invoke-direct {p0, v7, v4, v1, v2}, Landroidx/navigation/e;->a(Landroidx/navigation/i;Landroid/os/Bundle;Landroidx/navigation/m;Landroidx/navigation/p$a;)V

    move v1, v5

    goto :goto_2

    .line 728
    :cond_b
    iget-object v0, p0, Landroidx/navigation/e;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Landroidx/navigation/i;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 729
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be found from the current destination "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {p0}, Landroidx/navigation/e;->d()Landroidx/navigation/i;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    return v6

    .line 740
    :cond_d
    iget-object v1, p0, Landroidx/navigation/e;->a:Landroidx/navigation/NavGraph;

    move-object v5, v1

    move v1, v0

    .line 741
    :goto_3
    array-length v7, v3

    if-ge v1, v7, :cond_12

    .line 742
    aget v7, v3, v1

    if-nez v1, :cond_e

    .line 743
    iget-object v8, p0, Landroidx/navigation/e;->a:Landroidx/navigation/NavGraph;

    goto :goto_4

    :cond_e
    invoke-virtual {v5, v7}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/i;

    move-result-object v8

    :goto_4
    if-eqz v8, :cond_11

    .line 750
    array-length v7, v3

    sub-int/2addr v7, v6

    if-eq v1, v7, :cond_10

    .line 752
    check-cast v8, Landroidx/navigation/NavGraph;

    .line 755
    :goto_5
    invoke-virtual {v8}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v5

    invoke-virtual {v8, v5}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/i;

    move-result-object v5

    instance-of v5, v5, Landroidx/navigation/NavGraph;

    if-eqz v5, :cond_f

    .line 756
    invoke-virtual {v8}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v5

    invoke-virtual {v8, v5}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/i;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroidx/navigation/NavGraph;

    goto :goto_5

    :cond_f
    move-object v5, v8

    goto :goto_6

    .line 760
    :cond_10
    invoke-virtual {v8, v4}, Landroidx/navigation/i;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    new-instance v9, Landroidx/navigation/m$a;

    invoke-direct {v9}, Landroidx/navigation/m$a;-><init>()V

    iget-object v10, p0, Landroidx/navigation/e;->a:Landroidx/navigation/NavGraph;

    .line 761
    invoke-virtual {v10}, Landroidx/navigation/NavGraph;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v6}, Landroidx/navigation/m$a;->a(IZ)Landroidx/navigation/m$a;

    move-result-object v9

    .line 762
    invoke-virtual {v9, v0}, Landroidx/navigation/m$a;->a(I)Landroidx/navigation/m$a;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroidx/navigation/m$a;->b(I)Landroidx/navigation/m$a;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/navigation/m$a;->a()Landroidx/navigation/m;

    move-result-object v9

    .line 760
    invoke-direct {p0, v8, v7, v9, v2}, Landroidx/navigation/e;->a(Landroidx/navigation/i;Landroid/os/Bundle;Landroidx/navigation/m;Landroidx/navigation/p$a;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 745
    :cond_11
    iget-object v0, p0, Landroidx/navigation/e;->c:Landroid/content/Context;

    invoke-static {v0, v7}, Landroidx/navigation/i;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 746
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be found in graph "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 765
    :cond_12
    iput-boolean v6, p0, Landroidx/navigation/e;->h:Z

    return v6

    :cond_13
    :goto_7
    return v0
.end method

.method b(I)Landroidx/navigation/i;
    .locals 2

    .line 828
    iget-object v0, p0, Landroidx/navigation/e;->a:Landroidx/navigation/NavGraph;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 831
    :cond_0
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 832
    iget-object p1, p0, Landroidx/navigation/e;->a:Landroidx/navigation/NavGraph;

    return-object p1

    .line 834
    :cond_1
    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 835
    iget-object v0, p0, Landroidx/navigation/e;->a:Landroidx/navigation/NavGraph;

    goto :goto_0

    .line 836
    :cond_2
    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object v0

    .line 837
    :goto_0
    instance-of v1, v0, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_3

    .line 838
    check-cast v0, Landroidx/navigation/NavGraph;

    goto :goto_1

    .line 839
    :cond_3
    invoke-virtual {v0}, Landroidx/navigation/i;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    .line 840
    :goto_1
    invoke-virtual {v0, p1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/i;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 2

    .line 259
    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/e;->d()Landroidx/navigation/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/i;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/e;->a(IZ)Z

    move-result v0

    return v0
.end method

.method b(IZ)Z
    .locals 7

    .line 294
    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 298
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    iget-object v2, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 301
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 302
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object v3

    .line 303
    iget-object v5, p0, Landroidx/navigation/e;->k:Landroidx/navigation/q;

    .line 304
    invoke-virtual {v3}, Landroidx/navigation/i;->getNavigatorName()Ljava/lang/String;

    move-result-object v6

    .line 303
    invoke-virtual {v5, v6}, Landroidx/navigation/q;->a(Ljava/lang/String;)Landroidx/navigation/p;

    move-result-object v5

    if-nez p2, :cond_2

    .line 305
    invoke-virtual {v3}, Landroidx/navigation/i;->getId()I

    move-result v6

    if-eq v6, p1, :cond_3

    .line 306
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_3
    invoke-virtual {v3}, Landroidx/navigation/i;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1

    move p2, v4

    goto :goto_0

    :cond_4
    move p2, v1

    :goto_0
    if-nez p2, :cond_5

    .line 316
    iget-object p2, p0, Landroidx/navigation/e;->c:Landroid/content/Context;

    invoke-static {p2, p1}, Landroidx/navigation/i;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 317
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring popBackStack to destination "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as it was not found on the current back stack"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NavController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 322
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/p;

    .line 323
    invoke-virtual {p2}, Landroidx/navigation/p;->c()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 324
    iget-object p2, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    .line 325
    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntry;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/j;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/j$b;->CREATED:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j$b;->a(Landroidx/lifecycle/j$b;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 326
    sget-object v0, Landroidx/lifecycle/j$b;->DESTROYED:Landroidx/lifecycle/j$b;

    invoke-virtual {p2, v0}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/j$b;)V

    .line 328
    :cond_6
    iget-object v0, p0, Landroidx/navigation/e;->j:Landroidx/navigation/f;

    if-eqz v0, :cond_7

    .line 329
    iget-object p2, p2, Landroidx/navigation/NavBackStackEntry;->mId:Ljava/util/UUID;

    invoke-virtual {v0, p2}, Landroidx/navigation/f;->a(Ljava/util/UUID;)V

    :cond_7
    move v1, v4

    goto :goto_1

    .line 337
    :cond_8
    invoke-direct {p0}, Landroidx/navigation/e;->i()V

    return v1
.end method

.method public c()Landroidx/navigation/l;
    .locals 3

    .line 519
    iget-object v0, p0, Landroidx/navigation/e;->e:Landroidx/navigation/l;

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Landroidx/navigation/l;

    iget-object v1, p0, Landroidx/navigation/e;->c:Landroid/content/Context;

    iget-object v2, p0, Landroidx/navigation/e;->k:Landroidx/navigation/q;

    invoke-direct {v0, v1, v2}, Landroidx/navigation/l;-><init>(Landroid/content/Context;Landroidx/navigation/q;)V

    iput-object v0, p0, Landroidx/navigation/e;->e:Landroidx/navigation/l;

    .line 522
    :cond_0
    iget-object v0, p0, Landroidx/navigation/e;->e:Landroidx/navigation/l;

    return-object v0
.end method

.method public d()Landroidx/navigation/i;
    .locals 1

    .line 822
    invoke-virtual {p0}, Landroidx/navigation/e;->f()Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/i;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public e()Landroid/os/Bundle;
    .locals 7

    .line 1206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1207
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1209
    iget-object v2, p0, Landroidx/navigation/e;->k:Landroidx/navigation/q;

    invoke-virtual {v2}, Landroidx/navigation/q;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1210
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1211
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/p;

    invoke-virtual {v3}, Landroidx/navigation/p;->e()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1213
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1217
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1218
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android-support-nav:controller:navigatorState:names"

    .line 1219
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "android-support-nav:controller:navigatorState"

    .line 1220
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1222
    :goto_1
    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez v2, :cond_3

    .line 1224
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    .line 1226
    :cond_3
    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Parcelable;

    const/4 v1, 0x0

    .line 1228
    iget-object v3, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    add-int/lit8 v5, v1, 0x1

    .line 1229
    new-instance v6, Landroidx/navigation/NavBackStackEntryState;

    invoke-direct {v6, v4}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    aput-object v6, v0, v1

    move v1, v5

    goto :goto_2

    :cond_4
    const-string v1, "android-support-nav:controller:backStack"

    .line 1231
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1233
    :cond_5
    iget-boolean v0, p0, Landroidx/navigation/e;->h:Z

    if-eqz v0, :cond_7

    if-nez v2, :cond_6

    .line 1235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    .line 1237
    :cond_6
    iget-boolean v0, p0, Landroidx/navigation/e;->h:Z

    const-string v1, "android-support-nav:controller:deepLinkHandled"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    return-object v2
.end method

.method public f()Landroidx/navigation/NavBackStackEntry;
    .locals 1

    .line 1370
    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1373
    :cond_0
    iget-object v0, p0, Landroidx/navigation/e;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    return-object v0
.end method
