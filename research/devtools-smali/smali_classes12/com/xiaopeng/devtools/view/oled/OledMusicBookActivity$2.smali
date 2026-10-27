.class Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity$2;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "OledMusicBookActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->y(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic RR:Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity$2;->RR:Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity$2;->RR:Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->a(Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity$2;->RR:Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->a(Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    .line 101
    invoke-static {p1}, Lcom/xiaopeng/devtools/view/oled/c;->b(Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;)Lcom/xiaopeng/devtools/view/oled/c;

    move-result-object p1

    return-object p1
.end method
