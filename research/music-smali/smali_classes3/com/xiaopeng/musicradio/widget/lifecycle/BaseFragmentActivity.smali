.class public abstract Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentActivity;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;
.source "BaseFragmentActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseFragmentActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected genFragmentFromArouterUri(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 215
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method protected abstract getContentViewId()I
.end method

.method public hideFragment(Ljava/lang/Class;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 159
    instance-of v1, p1, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    if-nez v1, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    check-cast p1, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    .line 164
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object v1

    .line 165
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getEnterExitAnimation()[I

    move-result-object v2

    if-eqz v2, :cond_1

    .line 166
    array-length v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    const/16 v3, 0x2002

    .line 167
    invoke-virtual {v1, v3}, Landroidx/fragment/app/p;->c(I)Landroidx/fragment/app/p;

    .line 168
    new-instance v3, Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    const/4 v4, 0x0

    aget v5, v2, v4

    const/4 v6, 0x1

    aget v7, v2, v6

    const/4 v8, 0x2

    aget v9, v2, v8

    const/4 v10, 0x3

    aget v11, v2, v10

    invoke-direct {v3, v5, v7, v9, v11}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;-><init>(IIII)V

    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->setFragmentAnimator(Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V

    .line 169
    aget v3, v2, v4

    aget v4, v2, v6

    aget v5, v2, v8

    aget v2, v2, v10

    invoke-virtual {v1, v3, v4, v5, v2}, Landroidx/fragment/app/p;->a(IIII)Landroidx/fragment/app/p;

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    invoke-virtual {v1, p1}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    .line 175
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/p;->c()I

    .line 176
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_3
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 23
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->onDestroy()V

    return-void
.end method

.method public removeFragment(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 182
    instance-of v1, p1, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    if-nez v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    check-cast p1, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    .line 187
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object v1

    .line 195
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {v1, p1}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    .line 198
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/p;->c()I

    .line 199
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public showFragment(Ljava/lang/Class;Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;Landroid/os/Bundle;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p2

    const-string v2, "FragmentUtil"

    const/4 v3, 0x0

    .line 117
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v0, p3

    .line 118
    :try_start_1
    invoke-virtual {v4, v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v4, v3

    .line 122
    :goto_0
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v4, v3

    .line 120
    :goto_1
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    if-nez v4, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getContainerViewId()I

    move-result v0

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object v5

    .line 131
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getEnterExitAnimation()[I

    move-result-object v6

    if-eqz v6, :cond_1

    .line 132
    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    const/16 v7, 0x1001

    .line 133
    invoke-virtual {v5, v7}, Landroidx/fragment/app/p;->c(I)Landroidx/fragment/app/p;

    .line 134
    new-instance v7, Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    const/4 v8, 0x0

    aget v9, v6, v8

    const/4 v10, 0x1

    aget v11, v6, v10

    const/4 v12, 0x2

    aget v13, v6, v12

    const/4 v14, 0x3

    aget v15, v6, v14

    invoke-direct {v7, v9, v11, v13, v15}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;-><init>(IIII)V

    invoke-virtual {v4, v7}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->setFragmentAnimator(Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V

    .line 135
    aget v7, v6, v8

    aget v8, v6, v10

    aget v9, v6, v12

    aget v6, v6, v14

    invoke-virtual {v5, v7, v8, v9, v6}, Landroidx/fragment/app/p;->a(IIII)Landroidx/fragment/app/p;

    .line 138
    :cond_1
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v1, :cond_2

    .line 140
    invoke-virtual {v5, v1}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    .line 142
    :cond_2
    invoke-virtual {v5, v4}, Landroidx/fragment/app/p;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    .line 146
    invoke-virtual {v5, v1}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    .line 148
    :cond_4
    invoke-virtual {v5, v0, v4}, Landroidx/fragment/app/p;->a(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    .line 149
    invoke-virtual {v5, v3}, Landroidx/fragment/app/p;->a(Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 152
    :goto_3
    invoke-virtual {v5}, Landroidx/fragment/app/p;->c()I

    .line 153
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method public switchFragment(Landroidx/fragment/app/Fragment;Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentActivity;->switchFragment(Landroidx/fragment/app/Fragment;Ljava/lang/Class;ZZ)V

    return-void
.end method

.method public switchFragment(Landroidx/fragment/app/Fragment;Ljava/lang/Class;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;ZZ)V"
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/b;->a(Ljava/lang/Class;Landroidx/fragment/app/FragmentManager;)Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    move-result-object v3

    .line 51
    instance-of p2, p1, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    if-eqz p2, :cond_1

    .line 52
    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    const/4 v4, 0x0

    move-object v1, p0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentActivity;->switchFragment(Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;Landroid/os/Bundle;ZZ)V

    return-void

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fragment must extend BaseFragment"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public switchFragment(Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;Landroid/os/Bundle;ZZ)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    if-ne v0, v1, :cond_0

    return-void

    .line 62
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchFragment: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " args="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " addToBackStack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " hideCurrent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BaseFragmentActivity"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getContainerViewId()I

    move-result v5

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    .line 65
    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object v8

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getEnterExitAnimation()[I

    move-result-object v9

    if-eqz v9, :cond_1

    .line 67
    array-length v10, v9

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    const/16 v10, 0x1001

    .line 68
    invoke-virtual {v8, v10}, Landroidx/fragment/app/p;->c(I)Landroidx/fragment/app/p;

    .line 69
    new-instance v10, Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    const/4 v11, 0x0

    aget v12, v9, v11

    const/4 v13, 0x1

    aget v14, v9, v13

    const/4 v15, 0x2

    aget v13, v9, v15

    const/16 v16, 0x3

    aget v15, v9, v16

    invoke-direct {v10, v12, v14, v13, v15}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;-><init>(IIII)V

    invoke-virtual {v0, v10}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->setFragmentAnimator(Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V

    .line 70
    aget v10, v9, v11

    const/4 v11, 0x1

    aget v11, v9, v11

    const/4 v12, 0x2

    aget v12, v9, v12

    aget v9, v9, v16

    invoke-virtual {v8, v10, v11, v12, v9}, Landroidx/fragment/app/p;->a(IIII)Landroidx/fragment/app/p;

    :cond_1
    if-eqz v2, :cond_3

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    if-nez v9, :cond_2

    .line 74
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 79
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getTagText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_7

    if-eqz v4, :cond_5

    .line 81
    invoke-virtual/range {p2 .. p2}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->needCacheInMemory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 82
    invoke-virtual {v8, v1}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {v8, v1}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    .line 88
    :cond_5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getTagText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v5, v0, v1}, Landroidx/fragment/app/p;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    if-eqz v3, :cond_6

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getTagText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroidx/fragment/app/p;->a(Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 92
    :cond_6
    invoke-virtual {v8}, Landroidx/fragment/app/p;->c()I

    .line 93
    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "added desClazz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 98
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "already exist desClazz="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_9

    .line 100
    invoke-virtual/range {p2 .. p2}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->needCacheInMemory()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 101
    invoke-virtual {v8, v1}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    goto :goto_2

    .line 103
    :cond_8
    invoke-virtual {v8, v1}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    .line 107
    :cond_9
    :goto_2
    invoke-virtual {v8, v0}, Landroidx/fragment/app/p;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getTagText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/fragment/app/p;->a(Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 109
    invoke-virtual {v8}, Landroidx/fragment/app/p;->c()I

    .line 110
    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :goto_3
    return-void
.end method

.method public switchFragment(Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 27
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentActivity;->switchFragment(Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;ZZ)V

    return-void
.end method

.method public switchFragment(Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZZ)V"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " addToBackStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hideCurrent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFragmentActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const-string v0, "switchFragment: \u53ef\u4ee5\u5207\u6362UI"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/b;->a(Ljava/lang/Class;Landroidx/fragment/app/FragmentManager;)Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    move-result-object v3

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/widget/lifecycle/b;->a(Ljava/lang/Class;Landroidx/fragment/app/FragmentManager;)Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, p0

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 39
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentActivity;->switchFragment(Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;Landroid/os/Bundle;ZZ)V

    return-void

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fragment must extend BaseFragment"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
