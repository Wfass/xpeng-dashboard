.class public Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;
.super Lcom/xiaopeng/carcontrol/view/VuiMultiSceneActivity;
.source "MainControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity$EmptyFragment;
    }
.end annotation


# static fields
.field private static final DRV_Fragment_Index:I = 0x5

.field public static final DRV_Fragment_TAG:Ljava/lang/String; = "SeatDrvFragment"

.field public static final FRAGMENT_SEAT_TAG:Ljava/lang/String; = "tag"

.field private static final Fault_Fragment_Index:I = 0x4

.field private static final Fixed_Fault_List_Fragment_Index:I = 0xb

.field public static final PSN_Fragment_Index:I = 0x6

.field public static final PSN_Fragment_TAG:Ljava/lang/String; = "SeatPsnFragment"

.field private static final RL_Fragment_Index:I = 0x7

.field public static final RL_Fragment_TAG:Ljava/lang/String; = "SeatRLFragment"

.field private static final RR_Fragment_Index:I = 0x8

.field public static final RR_Fragment_TAG:Ljava/lang/String; = "SeatRRFragment"

.field private static final Sunshade_Fragment_Index:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MainControlActivity"

.field private static final TL_Fragment_Index:I = 0x9

.field public static final TL_Fragment_TAG:Ljava/lang/String; = "SeatTrdLeftFragment"

.field public static final TMid_Fragment_TAG:Ljava/lang/String; = "SeatTrdMidFragment"

.field private static final TR_Fragment_Index:I = 0xa

.field public static final TR_Fragment_TAG:Ljava/lang/String; = "SeatTrdRightFragment"

.field private static final Welcome_Fragment_Index:I = 0x3

.field private static final Window_Fragment_Index:I = 0x1


# instance fields
.field private backBtn:Lcom/xiaopeng/xui/widget/XTitleBarLight;

.field private mCurrentFragmentTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/VuiMultiSceneActivity;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->mCurrentFragmentTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;Landroidx/fragment/app/Fragment;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method private changeFragmentByIndex()V
    .locals 6

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pageID"

    const/4 v2, 0x1

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MainControlActivity"

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne v1, v2, :cond_0

    .line 87
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Z)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->backBtn:Lcom/xiaopeng/xui/widget/XTitleBarLight;

    const v1, 0x7f11009b

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setTitle(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 90
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Z)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->backBtn:Lcom/xiaopeng/xui/widget/XTitleBarLight;

    const v1, 0x7f1103d0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setTitle(I)V

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 93
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Z)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->backBtn:Lcom/xiaopeng/xui/widget/XTitleBarLight;

    const v1, 0x7f11009a

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setTitle(I)V

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 96
    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-direct {v1}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;-><init>()V

    .line 97
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->backBtn:Lcom/xiaopeng/xui/widget/XTitleBarLight;

    const v4, 0x7f110127

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setTitle(I)V

    .line 98
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 100
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Z)V

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x5

    const-string/jumbo v4, "tag"

    if-ne v1, v3, :cond_4

    .line 102
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;-><init>()V

    .line 103
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SeatDrvFragment"

    .line 104
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->setArguments(Landroid/os/Bundle;)V

    .line 106
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->backBtn:Lcom/xiaopeng/xui/widget/XTitleBarLight;

    const v3, 0x7f1102ee

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setTitle(I)V

    .line 107
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x6

    if-ne v1, v3, :cond_5

    .line 109
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;-><init>()V

    .line 110
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SeatPsnFragment"

    .line 111
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->setArguments(Landroid/os/Bundle;)V

    .line 113
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->backBtn:Lcom/xiaopeng/xui/widget/XTitleBarLight;

    const v3, 0x7f110325

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setTitle(I)V

    .line 114
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x7

    if-ne v1, v3, :cond_6

    .line 116
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;-><init>()V

    .line 117
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SeatRLFragment"

    .line 118
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->setArguments(Landroid/os/Bundle;)V

    .line 120
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->backBtn:Lcom/xiaopeng/xui/widget/XTitleBarLight;

    const v3, 0x7f11032d

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setTitle(I)V

    .line 121
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x8

    if-ne v1, v3, :cond_7

    .line 123
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;-><init>()V

    .line 124
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SeatRRFragment"

    .line 125
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->setArguments(Landroid/os/Bundle;)V

    .line 127
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->backBtn:Lcom/xiaopeng/xui/widget/XTitleBarLight;

    const v3, 0x7f11032f

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setTitle(I)V

    .line 128
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x9

    if-ne v1, v3, :cond_8

    .line 130
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;-><init>()V

    .line 131
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SeatTrdLeftFragment"

    .line 132
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->setArguments(Landroid/os/Bundle;)V

    .line 134
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->backBtn:Lcom/xiaopeng/xui/widget/XTitleBarLight;

    const v3, 0x7f110341

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setTitle(I)V

    .line 135
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const/16 v3, 0xa

    if-ne v1, v3, :cond_9

    .line 137
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;-><init>()V

    .line 138
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SeatTrdRightFragment"

    .line 139
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->setArguments(Landroid/os/Bundle;)V

    .line 141
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->backBtn:Lcom/xiaopeng/xui/widget/XTitleBarLight;

    const v1, 0x7f110342

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setTitle(I)V

    goto :goto_0

    :cond_9
    const/16 v3, 0xb

    if-ne v1, v3, :cond_a

    const-string v1, "fixedCount"

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 145
    new-instance v3, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;

    invoke-direct {v3}, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;-><init>()V

    .line 146
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 147
    invoke-virtual {v3, v0}, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 148
    invoke-direct {p0, v3, v2}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Z)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->backBtn:Lcom/xiaopeng/xui/widget/XTitleBarLight;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f11012a

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f11012b

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setTitle(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_0
    return-void
.end method

.method private getIdentifiedFatherId(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text1"

    const-string v4, "id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIdentifiedFatherId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainControlActivity"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fragment",
            "Tag"
        }
    .end annotation

    .line 166
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->mCurrentFragmentTag:Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a0165

    .line 169
    invoke-virtual {v0, v1, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 170
    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->mSubScenes:Ljava/util/List;

    const/16 p1, 0x19

    .line 171
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->getIdentifiedFatherId(I)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    move-object v2, p0

    .line 170
    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->initFragmentVuiParams(Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private replaceFragment(Landroidx/fragment/app/Fragment;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fragment",
            "isVuiFragment"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a0165

    .line 157
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p2, :cond_0

    .line 159
    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->mSubScenes:Ljava/util/List;

    const/16 p1, 0xf

    .line 160
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->getIdentifiedFatherId(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 159
    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->initFragmentVuiParams(Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;)V

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public addFragment(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fragment",
            "tag"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->mCurrentFragmentTag:Ljava/lang/String;

    .line 178
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 183
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 184
    invoke-virtual {v1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 188
    :cond_1
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->mCurrentFragmentTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 190
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    :cond_2
    const v0, 0x7f0a0165

    .line 192
    invoke-virtual {v2, v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->mSubScenes:Ljava/util/List;

    const/16 p2, 0x23

    .line 194
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->getIdentifiedFatherId(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    .line 193
    invoke-virtual/range {v3 .. v8}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->initFragmentVuiParams(Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;)V

    .line 196
    :goto_0
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public initVui()V
    .locals 2

    .line 227
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->initVuiScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 63
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/VuiMultiSceneActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001d

    .line 64
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->setContentView(I)V

    const p1, 0x7f0a0097

    .line 65
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTitleBarLight;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->backBtn:Lcom/xiaopeng/xui/widget/XTitleBarLight;

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->initVui()V

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->backBtn:Lcom/xiaopeng/xui/widget/XTitleBarLight;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity$1;-><init>(Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setOnTitleBarClickListener(Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;)V

    .line 79
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->changeFragmentByIndex()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 239
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/VuiMultiSceneActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "MainControlActivity"

    const-string v1, "onNewIntent"

    .line 240
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->setIntent(Landroid/content/Intent;)V

    .line 243
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->changeFragmentByIndex()V

    :cond_0
    return-void
.end method

.method public showFragment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromTag",
            "toTag"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 206
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;

    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 210
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;

    if-eqz p1, :cond_1

    .line 212
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 214
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
