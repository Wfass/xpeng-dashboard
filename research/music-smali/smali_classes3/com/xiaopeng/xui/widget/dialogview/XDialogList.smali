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

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lbyg$j;->x_dialog_list:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    sget p1, Lbyg$h;->x_dialog_listview:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;->mListView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/widget/AdapterView$OnItemClickListener;)V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    new-instance p3, Lcom/xiaopeng/xui/widget/dialogview/XDialogList$CheckedItemAdapter;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lbyg$j;->x_dialog_item_singlechoice:I

    sget v3, Lbyg$h;->x_dialog_item_text1:I

    invoke-direct {p3, v0, v2, v3, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogList$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method
