.class Lcom/xiaopeng/xui/widget/dialogview/XDialogList;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "XDialogList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/dialogview/XDialogList$CheckedItemAdapter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_dialog_list:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_listview:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;->mListView:Landroid/widget/ListView;

    .line 45
    return-void
.end method


# virtual methods
.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/widget/AdapterView$OnItemClickListener;)V
    .locals 5
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    new-instance v0, Lcom/xiaopeng/xui/widget/dialogview/XDialogList$CheckedItemAdapter;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$layout;->x_dialog_item_singlechoice:I

    sget v4, Lcom/xiaopeng/xpui/R$id;->x_dialog_item_text1:I

    invoke-direct {v0, v2, v3, v4, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogList$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 52
    .local v0, "adapter":Lcom/xiaopeng/xui/widget/dialogview/XDialogList$CheckedItemAdapter;
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 54
    return-void
.end method
