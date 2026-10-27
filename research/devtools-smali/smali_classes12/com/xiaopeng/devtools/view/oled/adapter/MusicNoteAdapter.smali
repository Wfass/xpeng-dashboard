.class public Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter;
.super Landroid/widget/BaseAdapter;
.source "MusicNoteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter$a;
    }
.end annotation


# instance fields
.field private Sb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter;->Sb:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter;->Sb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 43
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 49
    if-nez p2, :cond_0

    .line 50
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0081

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    new-instance p3, Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter$a;

    invoke-direct {p3}, Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter$a;-><init>()V

    .line 52
    const v0, 0x7f090415

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter$a;->a(Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 53
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter$a;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter;->Sb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 57
    invoke-static {p3}, Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter$a;->a(Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter$a;)Landroid/widget/TextView;

    move-result-object p1

    const p3, 0x7f100362

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {p3}, Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter$a;->a(Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter$a;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter;->Sb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :goto_0
    return-object p2
.end method

.method public setNoteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter;->Sb:Ljava/util/List;

    .line 29
    return-void
.end method
