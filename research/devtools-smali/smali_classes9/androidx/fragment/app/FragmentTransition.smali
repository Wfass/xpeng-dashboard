.class Landroidx/fragment/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I

.field private static final PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

.field private static final SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/fragment/app/FragmentTransitionCompat21;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentTransitionCompat21;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    .line 61
    invoke-static {}, Landroidx/fragment/app/FragmentTransition;->resolveSupportImpl()Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    return-void
.end method

.method static synthetic access$000(Ljava/util/ArrayList;I)V
    .locals 0

    .line 39
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$100(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    return-void
.end method

.method static synthetic access$300(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentTransition;->captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentTransition;->getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 646
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 647
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 648
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 649
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 652
    :cond_1
    return-void
.end method

.method private static addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroidx/fragment/app/BackStackRecord$Op;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1118
    iget-object v10, v1, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    .line 1119
    if-nez v10, :cond_0

    .line 1120
    return-void

    .line 1122
    :cond_0
    iget v11, v10, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 1123
    if-nez v11, :cond_1

    .line 1124
    return-void

    .line 1126
    :cond_1
    if-eqz v3, :cond_2

    sget-object v4, Landroidx/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    iget v1, v1, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    aget v1, v4, v1

    goto :goto_0

    :cond_2
    iget v1, v1, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    .line 1127
    :goto_0
    nop

    .line 1128
    nop

    .line 1129
    nop

    .line 1130
    nop

    .line 1131
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_b

    packed-switch v1, :pswitch_data_0

    .line 1169
    move v1, v4

    move v12, v1

    move v13, v12

    goto/16 :goto_b

    .line 1133
    :pswitch_0
    if-eqz p4, :cond_4

    .line 1134
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_3

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_3

    .line 1138
    move v1, v5

    goto :goto_1

    .line 1134
    :cond_3
    nop

    .line 1138
    move v1, v4

    goto :goto_1

    .line 1136
    :cond_4
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1138
    :goto_1
    nop

    .line 1139
    goto/16 :goto_a

    .line 1150
    :pswitch_1
    if-eqz p4, :cond_6

    .line 1151
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_5

    .line 1155
    :goto_2
    move v1, v5

    goto :goto_4

    .line 1151
    :cond_5
    nop

    .line 1155
    :goto_3
    move v1, v4

    goto :goto_4

    .line 1153
    :cond_6
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_7

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    goto :goto_3

    .line 1155
    :goto_4
    nop

    .line 1156
    goto :goto_8

    .line 1159
    :pswitch_2
    if-eqz p4, :cond_9

    .line 1160
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v1, :cond_8

    iget-object v1, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_8

    iget-object v1, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1161
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    iget v1, v10, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v6, 0x0

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_8

    .line 1166
    :goto_5
    move v1, v5

    goto :goto_7

    .line 1161
    :cond_8
    nop

    .line 1166
    :goto_6
    move v1, v4

    goto :goto_7

    .line 1164
    :cond_9
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_a

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    goto :goto_6

    .line 1166
    :goto_7
    nop

    .line 1169
    :goto_8
    move v13, v1

    move v1, v4

    move v12, v5

    goto :goto_b

    .line 1142
    :cond_b
    :pswitch_3
    if-eqz p4, :cond_c

    .line 1143
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_9

    .line 1145
    :cond_c
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v1, :cond_d

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_d

    .line 1147
    move v1, v5

    goto :goto_9

    .line 1145
    :cond_d
    nop

    .line 1147
    move v1, v4

    .line 1148
    :goto_9
    nop

    .line 1169
    :goto_a
    move v12, v4

    move v13, v12

    move v4, v1

    move v1, v5

    :goto_b
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    .line 1170
    if-eqz v4, :cond_e

    .line 1171
    nop

    .line 1172
    invoke-static {v6, v2, v11}, Landroidx/fragment/app/FragmentTransition;->ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v6

    .line 1173
    iput-object v10, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 1174
    iput-boolean v3, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 1175
    iput-object v0, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 1177
    :cond_e
    move-object v14, v6

    const/4 v9, 0x0

    if-nez p4, :cond_10

    if-eqz v1, :cond_10

    .line 1178
    if-eqz v14, :cond_f

    iget-object v1, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    if-ne v1, v10, :cond_f

    .line 1179
    iput-object v9, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 1186
    :cond_f
    iget-object v4, v0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 1187
    iget v1, v10, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v1, v5, :cond_10

    iget v1, v4, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    if-lt v1, v5, :cond_10

    iget-boolean v1, v0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v1, :cond_10

    .line 1189
    invoke-virtual {v4, v10}, Landroidx/fragment/app/FragmentManagerImpl;->makeActive(Landroidx/fragment/app/Fragment;)V

    .line 1190
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object v5, v10

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1193
    :cond_10
    if-eqz v13, :cond_12

    if-eqz v14, :cond_11

    iget-object v1, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_12

    .line 1194
    :cond_11
    nop

    .line 1195
    invoke-static {v14, v2, v11}, Landroidx/fragment/app/FragmentTransition;->ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v14

    .line 1196
    iput-object v10, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 1197
    iput-boolean v3, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 1198
    iput-object v0, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 1201
    :cond_12
    if-nez p4, :cond_13

    if-eqz v12, :cond_13

    if-eqz v14, :cond_13

    iget-object v0, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    if-ne v0, v10, :cond_13

    .line 1203
    const/4 v0, 0x0

    iput-object v0, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 1205
    :cond_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static calculateFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1070
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1071
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1072
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord$Op;

    .line 1073
    invoke-static {p0, v3, p1, v1, p2}, Landroidx/fragment/app/FragmentTransition;->addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 1071
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1075
    :cond_0
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/collection/ArrayMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 162
    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lt p4, p3, :cond_4

    .line 163
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    .line 164
    invoke-virtual {v1, p0}, Landroidx/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    goto :goto_4

    .line 167
    :cond_0
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 168
    iget-object v3, v1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 169
    iget-object v3, v1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 172
    if-eqz v2, :cond_1

    .line 173
    iget-object v2, v1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 174
    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_1

    .line 176
    :cond_1
    iget-object v2, v1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 177
    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 179
    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    .line 180
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 181
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 182
    invoke-virtual {v0, v6}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 183
    if-eqz v7, :cond_2

    .line 184
    invoke-virtual {v0, v5, v7}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 186
    :cond_2
    invoke-virtual {v0, v5, v6}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 162
    :cond_3
    :goto_4
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    .line 191
    :cond_4
    return-object v0
.end method

.method public static calculatePopFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1087
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1088
    return-void

    .line 1090
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1091
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1092
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/BackStackRecord$Op;

    .line 1093
    invoke-static {p0, v2, p1, v1, p2}, Landroidx/fragment/app/FragmentTransition;->addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 1091
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1095
    :cond_1
    return-void
.end method

.method private static callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 975
    if-eqz p2, :cond_0

    .line 976
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object p0

    goto :goto_0

    .line 977
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object p0

    .line 978
    :goto_0
    if-eqz p0, :cond_4

    .line 979
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 980
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 981
    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 982
    move v1, v0

    goto :goto_1

    .line 981
    :cond_1
    invoke-virtual {p3}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    .line 982
    :goto_1
    if-ge v0, v1, :cond_2

    .line 983
    invoke-virtual {p3, v0}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    invoke-virtual {p3, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 986
    :cond_2
    const/4 p3, 0x0

    if-eqz p4, :cond_3

    .line 987
    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 989
    :cond_3
    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 992
    :cond_4
    :goto_2
    return-void
.end method

.method private static canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 469
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 470
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 471
    return v1

    .line 469
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 837
    iget-object v0, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 838
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 839
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz p2, :cond_8

    if-nez v1, :cond_0

    goto :goto_3

    .line 843
    :cond_0
    new-instance p2, Landroidx/collection/ArrayMap;

    invoke-direct {p2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 844
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 848
    iget-object p0, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 849
    iget-boolean p3, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz p3, :cond_1

    .line 850
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object p3

    .line 851
    iget-object p0, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    goto :goto_0

    .line 853
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object p3

    .line 854
    iget-object p0, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 857
    :goto_0
    if-eqz p0, :cond_2

    .line 858
    invoke-virtual {p2, p0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 859
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 861
    :cond_2
    if-eqz p3, :cond_6

    .line 862
    invoke-virtual {p3, p0, p2}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 863
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_7

    .line 864
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 865
    invoke-virtual {p2, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 866
    if-nez v1, :cond_4

    .line 867
    invoke-static {p1, v0}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 868
    if-eqz v0, :cond_3

    .line 869
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    :cond_3
    goto :goto_2

    :cond_4
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 872
    invoke-static {p1, v0}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 873
    if-eqz v0, :cond_5

    .line 874
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    :cond_5
    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 879
    :cond_6
    invoke-static {p1, p2}, Landroidx/fragment/app/FragmentTransition;->retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 881
    :cond_7
    return-object p2

    .line 840
    :cond_8
    :goto_3
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->clear()V

    .line 841
    const/4 p0, 0x0

    return-object p0
.end method

.method private static captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 782
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    .line 786
    :cond_0
    iget-object p2, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 787
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 788
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 792
    iget-object p0, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 793
    iget-boolean p3, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz p3, :cond_1

    .line 794
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object p2

    .line 795
    iget-object p0, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_0

    .line 797
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object p2

    .line 798
    iget-object p0, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 801
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 802
    if-eqz p2, :cond_4

    .line 803
    invoke-virtual {p2, p0, v0}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 804
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_5

    .line 805
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 806
    invoke-virtual {v0, p3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 807
    if-nez v1, :cond_2

    .line 808
    invoke-virtual {p1, p3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 809
    :cond_2
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 810
    invoke-virtual {p1, p3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 811
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    :cond_3
    :goto_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 815
    :cond_4
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 817
    :cond_5
    return-object v0

    .line 783
    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->clear()V

    .line 784
    const/4 p0, 0x0

    return-object p0
.end method

.method private static chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;
    .locals 2

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    if-eqz p0, :cond_2

    .line 425
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    .line 426
    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v1

    .line 430
    if-eqz v1, :cond_1

    .line 431
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p0

    .line 434
    if-eqz p0, :cond_2

    .line 435
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_2
    if-eqz p1, :cond_5

    .line 439
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    .line 440
    if-eqz p0, :cond_3

    .line 441
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p0

    .line 444
    if-eqz p0, :cond_4

    .line 445
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    .line 448
    if-eqz p0, :cond_5

    .line 449
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    .line 453
    return-object p1

    .line 456
    :cond_6
    sget-object p0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz p0, :cond_7

    sget-object p0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    invoke-static {p0, v0}, Landroidx/fragment/app/FragmentTransition;->canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 457
    sget-object p0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-object p0

    .line 459
    :cond_7
    sget-object p0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz p0, :cond_8

    sget-object p0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    invoke-static {p0, v0}, Landroidx/fragment/app/FragmentTransition;->canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 460
    sget-object p0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-object p0

    .line 462
    :cond_8
    sget-object p0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-nez p0, :cond_9

    sget-object p0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-nez p0, :cond_9

    .line 465
    return-object p1

    .line 463
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 997
    nop

    .line 998
    if-eqz p1, :cond_2

    .line 999
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    .line 1001
    if-eqz p2, :cond_0

    .line 1002
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/FragmentTransitionImpl;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 1004
    :cond_0
    if-eqz p3, :cond_1

    .line 1005
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1007
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1008
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1012
    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 689
    iget-object v8, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 690
    iget-object v9, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 692
    const/4 v0, 0x0

    if-eqz v8, :cond_6

    if-nez v9, :cond_0

    goto/16 :goto_3

    .line 696
    :cond_0
    iget-boolean v12, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 697
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    move-object v1, v0

    goto :goto_0

    .line 698
    :cond_1
    invoke-static {v6, v8, v9, v12}, Landroidx/fragment/app/FragmentTransition;->getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    .line 700
    :goto_0
    move-object/from16 v13, p3

    invoke-static {v6, v13, v1, v7}, Landroidx/fragment/app/FragmentTransition;->captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v3

    .line 703
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 704
    nop

    .line 709
    move-object v14, v0

    goto :goto_1

    .line 706
    :cond_2
    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 709
    move-object v14, v1

    :goto_1
    if-nez v11, :cond_3

    if-nez p8, :cond_3

    if-nez v14, :cond_3

    .line 711
    return-object v0

    .line 714
    :cond_3
    const/4 v1, 0x1

    invoke-static {v8, v9, v12, v3, v1}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 717
    if-eqz v14, :cond_5

    .line 718
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 719
    move-object/from16 v5, p2

    invoke-virtual {v6, v14, v5, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 721
    iget-boolean v4, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 722
    iget-object v1, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 723
    move-object v0, v6

    move-object/from16 v16, v1

    move-object v1, v14

    move-object/from16 v2, p8

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V

    .line 725
    if-eqz v11, :cond_4

    .line 726
    invoke-virtual {v6, v11, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 728
    :cond_4
    goto :goto_2

    .line 729
    :cond_5
    nop

    .line 733
    move-object v15, v0

    .line 734
    :goto_2
    new-instance v5, Landroidx/fragment/app/FragmentTransition$4;

    move-object v0, v5

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move-object v4, v7

    move-object v13, v5

    move-object/from16 v5, p6

    move-object/from16 v6, p2

    move-object v7, v8

    move-object v8, v9

    move v9, v12

    move-object v12, v15

    invoke-direct/range {v0 .. v12}, Landroidx/fragment/app/FragmentTransition$4;-><init>(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroidx/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/fragment/app/OneShotPreDrawListener;

    .line 762
    return-object v14

    .line 693
    :cond_6
    :goto_3
    return-object v0
.end method

.method private static configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v7, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v8, p7

    .line 560
    iget-object v9, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 561
    iget-object v10, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 562
    if-eqz v9, :cond_0

    .line 563
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 565
    :cond_0
    const/4 v4, 0x0

    if-eqz v9, :cond_9

    if-nez v10, :cond_1

    goto/16 :goto_3

    .line 569
    :cond_1
    iget-boolean v11, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 570
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 573
    move-object v5, v4

    goto :goto_0

    .line 571
    :cond_2
    invoke-static {v6, v9, v10, v11}, Landroidx/fragment/app/FragmentTransition;->getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    .line 573
    :goto_0
    invoke-static {v6, v1, v5, v7}, Landroidx/fragment/app/FragmentTransition;->captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v12

    .line 576
    invoke-static {v6, v1, v5, v7}, Landroidx/fragment/app/FragmentTransition;->captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v13

    .line 579
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 580
    nop

    .line 581
    if-eqz v12, :cond_3

    .line 582
    invoke-virtual {v12}, Landroidx/collection/ArrayMap;->clear()V

    .line 584
    :cond_3
    if-eqz v13, :cond_4

    .line 585
    invoke-virtual {v13}, Landroidx/collection/ArrayMap;->clear()V

    .line 594
    :cond_4
    move-object v14, v4

    goto :goto_1

    .line 588
    :cond_5
    nop

    .line 589
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 588
    invoke-static {v2, v12, v14}, Landroidx/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 590
    nop

    .line 591
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 590
    invoke-static {v3, v13, v1}, Landroidx/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 594
    move-object v14, v5

    :goto_1
    if-nez v8, :cond_6

    if-nez p8, :cond_6

    if-nez v14, :cond_6

    .line 596
    return-object v4

    .line 599
    :cond_6
    const/4 v1, 0x1

    invoke-static {v9, v10, v11, v12, v1}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 603
    if-eqz v14, :cond_8

    .line 604
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-virtual {v6, v14, v0, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 607
    iget-boolean v4, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 608
    iget-object v15, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 609
    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p8

    move-object v3, v12

    move-object v5, v15

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V

    .line 611
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 612
    invoke-static {v13, v7, v8, v11}, Landroidx/fragment/app/FragmentTransition;->getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    .line 614
    if-eqz v1, :cond_7

    .line 615
    invoke-virtual {v6, v8, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 617
    :cond_7
    nop

    .line 622
    move-object v7, v0

    move-object v5, v1

    goto :goto_2

    .line 618
    :cond_8
    nop

    .line 619
    nop

    .line 622
    move-object v5, v4

    move-object v7, v5

    :goto_2
    new-instance v8, Landroidx/fragment/app/FragmentTransition$3;

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v13

    invoke-direct/range {v0 .. v7}, Landroidx/fragment/app/FragmentTransition$3;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Landroid/view/View;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroidx/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/fragment/app/OneShotPreDrawListener;

    .line 632
    return-object v14

    .line 566
    :cond_9
    :goto_3
    return-object v4
.end method

.method private static configureTransitionsOrdered(Landroidx/fragment/app/FragmentManagerImpl;ILandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManagerImpl;",
            "I",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 310
    move-object/from16 v11, p4

    .line 311
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 314
    move-object v13, v0

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    if-nez v13, :cond_1

    .line 315
    return-void

    .line 317
    :cond_1
    iget-object v14, v9, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 318
    iget-object v15, v9, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 319
    invoke-static {v15, v14}, Landroidx/fragment/app/FragmentTransition;->chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v8

    .line 320
    if-nez v8, :cond_2

    .line 321
    return-void

    .line 323
    :cond_2
    iget-boolean v0, v9, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 324
    iget-boolean v1, v9, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 326
    invoke-static {v8, v14, v0}, Landroidx/fragment/app/FragmentTransition;->getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 327
    invoke-static {v8, v15, v1}, Landroidx/fragment/app/FragmentTransition;->getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    .line 329
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 330
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 332
    move-object v0, v8

    move-object v1, v13

    move-object v2, v10

    move-object v3, v11

    move-object/from16 v16, v4

    move-object v4, v9

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v6, v16

    move-object/from16 v19, v7

    move-object v12, v8

    move-object/from16 v8, v18

    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/FragmentTransition;->configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 336
    move-object/from16 v8, v19

    if-nez v8, :cond_3

    if-nez v6, :cond_3

    move-object/from16 v0, v18

    if-nez v0, :cond_4

    .line 338
    return-void

    .line 341
    :cond_3
    move-object/from16 v0, v18

    :cond_4
    move-object/from16 v1, v17

    invoke-static {v12, v0, v15, v1, v10}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v15

    .line 344
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 350
    :cond_5
    move-object/from16 v20, v0

    goto :goto_2

    .line 345
    :cond_6
    :goto_1
    nop

    .line 350
    const/16 v20, 0x0

    :goto_2
    invoke-virtual {v12, v8, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 352
    iget-boolean v5, v9, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move-object v0, v12

    move-object v1, v8

    move-object/from16 v2, v20

    move-object v3, v6

    move-object v4, v14

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    .line 355
    if-eqz v9, :cond_7

    .line 356
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 357
    move-object v0, v12

    move-object v1, v9

    move-object v2, v8

    move-object v3, v7

    move-object/from16 v4, v20

    move-object v5, v15

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 360
    move-object v1, v13

    move-object v2, v14

    move-object v3, v10

    move-object/from16 v4, v16

    move-object v5, v8

    move-object/from16 v6, v17

    move-object/from16 v7, v20

    move-object v8, v15

    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/FragmentTransition;->scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 362
    move-object/from16 v0, v16

    invoke-virtual {v12, v13, v0, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 364
    invoke-virtual {v12, v13, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 365
    invoke-virtual {v12, v13, v0, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 367
    :cond_7
    return-void
.end method

.method private static configureTransitionsReordered(Landroidx/fragment/app/FragmentManagerImpl;ILandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManagerImpl;",
            "I",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object/from16 v9, p3

    .line 212
    nop

    .line 213
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 216
    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v10, v0

    if-nez v10, :cond_1

    .line 217
    return-void

    .line 219
    :cond_1
    iget-object v11, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 220
    iget-object v12, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 221
    invoke-static {v12, v11}, Landroidx/fragment/app/FragmentTransition;->chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v13

    .line 222
    if-nez v13, :cond_2

    .line 223
    return-void

    .line 225
    :cond_2
    iget-boolean v14, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 226
    iget-boolean v0, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 228
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 229
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 230
    invoke-static {v13, v11, v14}, Landroidx/fragment/app/FragmentTransition;->getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 231
    invoke-static {v13, v12, v0}, Landroidx/fragment/app/FragmentTransition;->getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    .line 233
    move-object v0, v13

    move-object v1, v10

    move-object v2, v9

    move-object/from16 v3, p4

    move-object v5, v8

    move-object/from16 v16, v6

    move-object v6, v15

    move-object/from16 v17, v7

    move-object/from16 v18, v10

    move-object v10, v8

    move-object/from16 v8, v16

    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/FragmentTransition;->configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 237
    move-object/from16 v6, v17

    if-nez v6, :cond_3

    if-nez v8, :cond_3

    move-object/from16 v7, v16

    if-nez v7, :cond_4

    .line 239
    return-void

    .line 242
    :cond_3
    move-object/from16 v7, v16

    :cond_4
    invoke-static {v13, v7, v12, v10, v9}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 245
    invoke-static {v13, v6, v11, v15, v9}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v9

    .line 248
    const/4 v0, 0x4

    invoke-static {v9, v0}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 250
    move-object v0, v13

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v11

    move-object v11, v5

    move v5, v14

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v14

    .line 253
    if-eqz v14, :cond_5

    .line 254
    invoke-static {v13, v7, v12, v11}, Landroidx/fragment/app/FragmentTransition;->replaceHide(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    .line 255
    nop

    .line 256
    invoke-virtual {v13, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    .line 257
    move-object v0, v13

    move-object v1, v14

    move-object v2, v6

    move-object v3, v9

    move-object v4, v7

    move-object v5, v11

    move-object v6, v8

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 260
    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 261
    move-object v1, v13

    move-object v2, v0

    move-object v3, v10

    move-object v4, v15

    move-object v5, v12

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 263
    const/4 v0, 0x0

    invoke-static {v9, v0}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 264
    invoke-virtual {v13, v8, v10, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 267
    :cond_5
    return-void
.end method

.method private static ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    .line 1215
    if-nez p0, :cond_0

    .line 1216
    new-instance p0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    .line 1217
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1219
    :cond_0
    return-object p0
.end method

.method private static findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 888
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    .line 889
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 890
    invoke-virtual {p0, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 891
    invoke-virtual {p0, v1}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 889
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 894
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    .line 505
    if-nez p1, :cond_0

    .line 506
    const/4 p0, 0x0

    return-object p0

    .line 508
    :cond_0
    if-eqz p2, :cond_1

    .line 509
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p1

    .line 508
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    .line 518
    if-nez p1, :cond_0

    .line 519
    const/4 p0, 0x0

    return-object p0

    .line 521
    :cond_0
    if-eqz p2, :cond_1

    .line 522
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 523
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p1

    .line 521
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 909
    iget-object p1, p1, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 910
    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object p2, p1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    iget-object p2, p1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 912
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 913
    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 914
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 915
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 916
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 918
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    .line 491
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 494
    :cond_0
    if-eqz p3, :cond_1

    .line 495
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 496
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p1

    .line 494
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 497
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 492
    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    .line 1035
    nop

    .line 1036
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    .line 1037
    if-eqz p5, :cond_0

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result p4

    goto :goto_0

    .line 1038
    :cond_0
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result p4

    goto :goto_0

    .line 1046
    :cond_1
    const/4 p4, 0x1

    :goto_0
    if-eqz p4, :cond_2

    .line 1048
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 1053
    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1056
    :goto_1
    return-object p0
.end method

.method private static replaceHide(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 277
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 280
    nop

    .line 281
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 280
    invoke-virtual {p0, p1, v0, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 282
    iget-object p0, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 283
    new-instance p1, Landroidx/fragment/app/FragmentTransition$1;

    invoke-direct {p1, p3}, Landroidx/fragment/app/FragmentTransition$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, p1}, Landroidx/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/fragment/app/OneShotPreDrawListener;

    .line 290
    :cond_0
    return-void
.end method

.method private static resolveSupportImpl()Landroidx/fragment/app/FragmentTransitionImpl;
    .locals 3

    .line 66
    :try_start_0
    const-string v0, "androidx.transition.FragmentTransitionSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransitionImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method private static retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 954
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 955
    invoke-virtual {p0, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 956
    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 957
    invoke-virtual {p0, v0}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 954
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 960
    :cond_1
    return-void
.end method

.method private static scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 392
    new-instance v9, Landroidx/fragment/app/FragmentTransition$2;

    move-object v0, v9

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/fragment/app/FragmentTransition$2;-><init>(Ljava/lang/Object;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object v0, p1

    invoke-static {v0, v9}, Landroidx/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/fragment/app/OneShotPreDrawListener;

    .line 415
    return-void
.end method

.method private static setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroidx/fragment/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    .line 933
    iget-object v0, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 934
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 935
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget-object p4, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 936
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p4, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 937
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 938
    :goto_0
    invoke-virtual {p3, p4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 939
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 941
    if-eqz p2, :cond_1

    .line 942
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 945
    :cond_1
    return-void
.end method

.method private static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1019
    if-nez p0, :cond_0

    .line 1020
    return-void

    .line 1022
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1023
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1024
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1026
    :cond_1
    return-void
.end method

.method static startTransitions(Landroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManagerImpl;",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .line 105
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 106
    return-void

    .line 109
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 111
    move v1, p3

    :goto_0
    if-ge v1, p4, :cond_2

    .line 112
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    .line 113
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 114
    if-eqz v3, :cond_1

    .line 115
    invoke-static {v2, v0, p5}, Landroidx/fragment/app/FragmentTransition;->calculatePopFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 117
    :cond_1
    invoke-static {v2, v0, p5}, Landroidx/fragment/app/FragmentTransition;->calculateFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    .line 111
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 124
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    .line 125
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 126
    invoke-static {v4, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/collection/ArrayMap;

    move-result-object v5

    .line 129
    nop

    .line 130
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    .line 132
    if-eqz p5, :cond_3

    .line 133
    invoke-static {p0, v4, v6, v1, v5}, Landroidx/fragment/app/FragmentTransition;->configureTransitionsReordered(Landroidx/fragment/app/FragmentManagerImpl;ILandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;)V

    goto :goto_3

    .line 136
    :cond_3
    invoke-static {p0, v4, v6, v1, v5}, Landroidx/fragment/app/FragmentTransition;->configureTransitionsOrdered(Landroidx/fragment/app/FragmentManagerImpl;ILandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;)V

    .line 124
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 141
    :cond_4
    return-void
.end method

.method static supportsTransition()Z
    .locals 1

    .line 1098
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-nez v0, :cond_1

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
