.class public Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "OledMusicBookActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/devtools/view/oled/a;
.implements Lcom/xiaopeng/devtools/view/oled/c$a;


# instance fields
.field private Cr:Lcom/xiaopeng/devtools/view/ActionBar;

.field private RK:Landroid/widget/Button;

.field private RL:Landroid/widget/Button;

.field private RM:Landroid/widget/Button;

.field private RN:Landroid/widget/TextView;

.field private RO:Lcom/xiaopeng/devtools/view/oled/NoScrollViewPager;

.field private RP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;",
            ">;"
        }
    .end annotation
.end field

.field private RQ:Lcom/xiaopeng/devtools/presenter/oled/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RP:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900b6

    const/4 v1, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 76
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RN:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 77
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RO:Lcom/xiaopeng/devtools/view/oled/NoScrollViewPager;

    invoke-virtual {v1, p1, v0}, Lcom/xiaopeng/devtools/view/oled/NoScrollViewPager;->setCurrentItem(IZ)V

    .line 78
    goto :goto_0

    .line 81
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RN:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 82
    const/4 v2, 0x1

    if-le p1, v2, :cond_0

    .line 83
    add-int/lit8 p1, p1, -0x1

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RO:Lcom/xiaopeng/devtools/view/oled/NoScrollViewPager;

    add-int/2addr p1, v1

    invoke-virtual {v2, p1, v0}, Lcom/xiaopeng/devtools/view/oled/NoScrollViewPager;->setCurrentItem(IZ)V

    .line 86
    goto :goto_0

    .line 67
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    const-string v2, "music_note_param"

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RP:Ljava/util/List;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->setResult(ILandroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->finish()V

    .line 73
    nop

    .line 91
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900e6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const p1, 0x7f0c0059

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->setContentView(I)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RP:Ljava/util/List;

    .line 40
    new-instance p1, Lcom/xiaopeng/devtools/presenter/oled/b;

    invoke-direct {p1, p0}, Lcom/xiaopeng/devtools/presenter/oled/b;-><init>(Lcom/xiaopeng/devtools/view/oled/a;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RQ:Lcom/xiaopeng/devtools/presenter/oled/b;

    .line 42
    const p1, 0x7f0900e6

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RK:Landroid/widget/Button;

    .line 43
    const p1, 0x7f0900e7

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RL:Landroid/widget/Button;

    .line 44
    const p1, 0x7f0900b6

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RM:Landroid/widget/Button;

    .line 45
    const p1, 0x7f090414

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RN:Landroid/widget/TextView;

    .line 46
    const p1, 0x7f09045c

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/view/oled/NoScrollViewPager;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RO:Lcom/xiaopeng/devtools/view/oled/NoScrollViewPager;

    .line 47
    const p1, 0x7f090027

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/view/ActionBar;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RQ:Lcom/xiaopeng/devtools/presenter/oled/b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/oled/b;->jO()V

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RM:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RL:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RK:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    new-instance v0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity$1;-><init>(Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/ActionBar;->setOnBackListener(Lcom/xiaopeng/devtools/view/ActionBar$a;)V

    .line 61
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 143
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 123
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 127
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 128
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RK:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RL:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RP:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ne p1, v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RK:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 132
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RL:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RL:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RK:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RN:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public y(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;",
            ">;)V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RP:Ljava/util/List;

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RO:Lcom/xiaopeng/devtools/view/oled/NoScrollViewPager;

    new-instance v1, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity$2;-><init>(Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/oled/NoScrollViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RO:Lcom/xiaopeng/devtools/view/oled/NoScrollViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/oled/NoScrollViewPager;->setCurrentItem(I)V

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RK:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->RO:Lcom/xiaopeng/devtools/view/oled/NoScrollViewPager;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/devtools/view/oled/NoScrollViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 113
    return-void
.end method
