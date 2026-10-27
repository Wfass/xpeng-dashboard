.class public Lcom/xiaopeng/xui/app/XCustomPickerDialog;
.super Lcom/xiaopeng/xui/app/XDialog;
.source "XCustomPickerDialog.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/XCustomPickerDialog$OnXNumberSetListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XCustomPickerDialog"


# instance fields
.field private mNumberSetListener:Lcom/xiaopeng/xui/app/XCustomPickerDialog$OnXNumberSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xui/app/pikerview/PikerDataBean;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-static {p1, p2}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 37
    sget v0, Lcom/xiaopeng/xpui/R$layout;->x_layout_custom_picker:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 38
    invoke-virtual {p0, p2, v2}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/XDialog;

    const-string v0, " "

    .line 41
    invoke-virtual {p0, v0, p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 42
    invoke-virtual {p0, v0, p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setPicker(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-static {p1, p2}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 50
    sget v0, Lcom/xiaopeng/xpui/R$layout;->x_layout_custom_picker:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 51
    invoke-virtual {p0, p2, v2}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/XDialog;

    const-string v0, " "

    .line 54
    invoke-virtual {p0, v0, p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 55
    invoke-virtual {p0, v0, p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setPicker(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xui/app/pikerview/PikerDataBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;-><init>(Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 0

    if-nez p1, :cond_0

    .line 96
    sget p0, Lcom/xiaopeng/xpui/R$style;->XDialogView_Large:I

    return p0

    :cond_0
    return p1
.end method

.method private setPicker(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xui/app/pikerview/PikerDataBean;",
            ">;)V"
        }
    .end annotation

    .line 61
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_custom_picker:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;

    .line 62
    new-instance v0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;-><init>(Landroid/content/Context;FZ)V

    .line 64
    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 65
    new-instance v1, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;

    invoke-direct {v1, p1, p3}, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p2, v1}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x2

    .line 66
    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->setDefLocation(I)V

    .line 67
    new-instance p1, Lcom/xiaopeng/xui/app/XCustomPickerDialog$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog$1;-><init>(Lcom/xiaopeng/xui/app/XCustomPickerDialog;)V

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->setOnSelectedViewListener(Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;)V

    return-void
.end method

.method private setPicker(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_custom_picker:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;

    .line 78
    new-instance v0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;-><init>(Landroid/content/Context;FZ)V

    .line 80
    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 81
    new-instance v1, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;

    invoke-direct {v1, p1, p3, p4}, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p2, v1}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x2

    .line 82
    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->setDefLocation(I)V

    .line 83
    new-instance p1, Lcom/xiaopeng/xui/app/XCustomPickerDialog$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog$2;-><init>(Lcom/xiaopeng/xui/app/XCustomPickerDialog;)V

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->setOnSelectedViewListener(Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButtonText(Ljava/lang/String;)V
    .locals 0

    .line 115
    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButtonText(Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method

.method public setXNumberSetListener(Lcom/xiaopeng/xui/app/XCustomPickerDialog$OnXNumberSetListener;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->mNumberSetListener:Lcom/xiaopeng/xui/app/XCustomPickerDialog$OnXNumberSetListener;

    return-void
.end method
