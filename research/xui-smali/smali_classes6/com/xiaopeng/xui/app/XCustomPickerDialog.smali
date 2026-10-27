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
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
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
    .local p3, "dataBeans":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xui/app/pikerview/PikerDataBean;>;"
    invoke-static {p1, p2}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 37
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_layout_custom_picker:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 38
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 41
    const-string v2, " "

    invoke-virtual {p0, v2, p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 42
    const-string v2, " "

    invoke-virtual {p0, v2, p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 43
    invoke-direct {p0, p1, v1, p3}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setPicker(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
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
    .local p3, "titleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "subtitleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_layout_custom_picker:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 54
    const-string v2, " "

    invoke-virtual {p0, v2, p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 55
    const-string v2, " "

    invoke-virtual {p0, v2, p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 56
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setPicker(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xui/app/pikerview/PikerDataBean;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p2, "dataBeans":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xui/app/pikerview/PikerDataBean;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    .line 30
    .local p2, "titleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "subtitleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;-><init>(Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V

    .line 31
    return-void
.end method

.method private static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 92
    if-nez p1, :cond_0

    .line 96
    sget v0, Lcom/xiaopeng/xpui/R$style;->XDialogView_Large:I

    return v0

    .line 98
    :cond_0
    return p1
.end method

.method private setPicker(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/view/View;
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
    .local p3, "dataBeans":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xui/app/pikerview/PikerDataBean;>;"
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_custom_picker:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;

    .line 62
    .local v0, "recyclerView":Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;
    new-instance v1, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;-><init>(Landroid/content/Context;FZ)V

    .line 64
    .local v1, "layoutManager":Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 65
    new-instance v2, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;

    invoke-direct {v2, p1, p3}, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 66
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->setDefLocation(I)V

    .line 67
    new-instance v2, Lcom/xiaopeng/xui/app/XCustomPickerDialog$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog$1;-><init>(Lcom/xiaopeng/xui/app/XCustomPickerDialog;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->setOnSelectedViewListener(Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;)V

    .line 73
    return-void
.end method

.method private setPicker(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/view/View;
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
    .local p3, "titleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "subtitleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_custom_picker:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;

    .line 78
    .local v0, "recyclerView":Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;
    new-instance v1, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;-><init>(Landroid/content/Context;FZ)V

    .line 80
    .local v1, "layoutManager":Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 81
    new-instance v2, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;

    invoke-direct {v2, p1, p3, p4}, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 82
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->setDefLocation(I)V

    .line 83
    new-instance v2, Lcom/xiaopeng/xui/app/XCustomPickerDialog$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog$2;-><init>(Lcom/xiaopeng/xui/app/XCustomPickerDialog;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->setOnSelectedViewListener(Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;)V

    .line 89
    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0
    .param p1, "dialog"    # Lcom/xiaopeng/xui/app/XDialog;
    .param p2, "which"    # I

    .line 132
    nop

    .line 142
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 115
    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 116
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 119
    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 120
    return-void
.end method

.method public setXNumberSetListener(Lcom/xiaopeng/xui/app/XCustomPickerDialog$OnXNumberSetListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xui/app/XCustomPickerDialog$OnXNumberSetListener;

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XCustomPickerDialog;->mNumberSetListener:Lcom/xiaopeng/xui/app/XCustomPickerDialog$OnXNumberSetListener;

    .line 124
    return-void
.end method
